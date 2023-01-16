--Do not touch anything in here if you do not know what you are doing. At the very least make a back up before you do.


--Pulls vorp core

local VORPcore = {}

TriggerEvent("getCore", function(core)
  VORPcore = core
end)

--end pulling it


-- Pulls and allows the use of VORP Inventory

local VorpInv = {}

VorpInv = exports.vorp_inventory:vorp_inventoryApi()

--End of pulling VORP Inventory

--Handles the crafting part
local doOnceThing = 1 --Is setting a varible to 1 to act as a counter in the thread
Citizen.CreateThread(function()
  for k, v in pairs(Config.crafting) do --Sets the table Config.crafting to varible v and opens it in the for loop
    VorpInv.RegisterUsableItem(v.RecipeItem, function(data) --registers the item usable
      print(data.source)
      print(data.label)
      for u, p in pairs(v.TakenItems) do --Is pulling the table TakenItems from the config from table Config.crafting or v
        local _source = source or data.source  --gets players info
        local itemCount = VorpInv.getItemCount(_source, p.name) --gets the item count of p.name or the name varibles in taken items
        if itemCount < p.count then
          VORPcore.NotifyTip(_source, "you do not have the required items",4000) break --If itemcount is less than the count varible in the config it break(stops the loop)
        elseif itemCount >= p.count then --Elseif it itemcount is greater than or equal to then
          for o, r in pairs(v.GivenItem) do --Gets the table GivenItem
            if doOnceThing == 1 then --This is the coutner to make this addItem only run once even though its in a loop
              VorpInv.addItem(data.source, r.name, r.count) --adds the specified item and amount
              doOnceThing = doOnceThing + 1 --Is taking the varible and adding 1 to it to make this if statement only run once
            end
          end
          VorpInv.subItem(data.source, p.name, p.count) --Removes the items set in the config
        end
        VORPcore.NotifyTip(_source, v.displaytext,4000) --Displays the set text when item is crafted
      end
      local webhook = Webhooklink --Gets your webhook link
      local _source = source or data.source  --gets the players info
      local Character = VORPcore.getUser(_source).getUsedCharacter --Pulls the character info
      VORPcore.AddWebhook(Character.identifier, webhook, v.webhookdesc) --Sends the webhook with the players steam id and the webhookdesc specified in the config
    end)
  end
end)
--End of crafting part

--Handles the converter aspect of the script.
Citizen.CreateThread(function()
  for k, v in pairs(Config.converter) do --Sets the table Config.converter to varible v and opens it in the for loop
    VorpInv.RegisterUsableItem(v.TakenItem, function(data) --registers the item usable
      print(data.source)
      print(data.label)
      VorpInv.subItem(data.source, v.TakenItem, v.Amount) --takes the item listed in the config and the listed amount
      for u, p in pairs(v.GivenItems) do --opens table GivenItems from Config.converter table or varible v
        VorpInv.addItem(data.source, p.name, p.count) --Adds the items specified in config and the specified amount
      end
      local webhook = Webhooklink --Gets your webhook link
      local _source = source or data.source  --gets the players info
      local Character = VORPcore.getUser(_source).getUsedCharacter --Pulls the character info
      VORPcore.AddWebhook(Character.identifier, webhook, v.webhookdesc) --Sends the webhook with the players steam id and the webhookdesc specified in the config
      VORPcore.NotifyTip(_source, v.displaytext,4000)
    end)
  end
end)
--end of converter