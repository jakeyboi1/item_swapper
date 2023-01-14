--Do not touch anything in here if you do not know what you are doing. At the very least make a back up before you do.



-- Pulls and allows the use of VORP Inventory

local VorpInv = {}

VorpInv = exports.vorp_inventory:vorp_inventoryApi()

--End of pulling VORP Inventory

--Pulls vorp core

local VORPcore = {}

TriggerEvent("getCore", function(core)
  VORPcore = core
end)

--end pulling it



--this is the swapper/converterpart of the code

Citizen.CreateThread(function() -- Registers the thread
  for itemName, value in pairs(Config.items) do --value pulls the item from config and sets itemName to it. pairs(Config.items) is registering the table
    VorpInv.RegisterUsableItem(itemName, function(data) --Registers the item usable
      print(data.source) -- player using the item
      print(data.label) -- item label
      local total = value.totalrewarditems --Pulls the rewards from each table
      if total == 1 then
        VorpInv.addItem(data.source, value.reward, value.amount)
        VorpInv.subItem(data.source, itemName, value.removeitem)
      end
      if total == 2 then
        VorpInv.addItem(data.source, value.reward, value.amount)
        VorpInv.addItem(data.source, value.reward2, value.amount2)
        VorpInv.subItem(data.source, itemName, value.removeitem)
      end
      if total == 3 then
        VorpInv.addItem(data.source, value.reward, value.amount)
        VorpInv.addItem(data.source, value.reward2, value.amount2)
        VorpInv.addItem(data.source, value.reward3, value.amount3)
        VorpInv.subItem(data.source, itemName, value.removeitem)
      end
      if total == 4 then
        VorpInv.addItem(data.source, value.reward, value.amount)
        VorpInv.addItem(data.source, value.reward2, value.amount2)
        VorpInv.addItem(data.source, value.reward3, value.amount3)
        VorpInv.subItem(data.source, itemName, value.removeitem)
        VorpInv.addItem(data.source, value.reward4, value.amount4)
      end
      if total == 5 then
        VorpInv.addItem(data.source, value.reward, value.amount)
        VorpInv.addItem(data.source, value.reward2, value.amount2)
        VorpInv.addItem(data.source, value.reward3, value.amount3)
        VorpInv.subItem(data.source, itemName, value.removeitem)
        VorpInv.addItem(data.source, value.reward4, value.amount4)
        VorpInv.addItem(data.source, value.reward5, value.amount5)
      end
    end)
  end
end)





--Everything below this point handles the crafting part of the code
--this code uses a lot of layered if to do item checks etc
--if one thing fails a if check it ends the code there not continueing.


Citizen.CreateThread(function()
  for craftName, value in pairs(Config.recipes) do --sets craftName varible to the varible in config
    VorpInv.RegisterUsableItem(value.recipeitem, function(data) --registers the item usable
      print(data.source)
      print(data.label)
      local itemCount = VorpInv.getItemCount(data.source, value.removeitem2)
      local itemCount2 = VorpInv.getItemCount(data.source, value.removeitem3)
      local itemCount3 = VorpInv.getItemCount(data.source, value.removeitem4)
      local itemCount4 = VorpInv.getItemCount(data.source, value.removeitem5)
      local itemCount5 = VorpInv.getItemCount(data.source, value.removeitem6)
      local total = value.totalrequired --sets  the local varible total to the integer in the table in config.lua
      if total == 1 then --This is saying if total is equal to 1 then do this also creates an if statement
        if itemCount >= value.amount6 then --Is checking to see if the amount of items you have it greater than or equal to the required amount in the config.
          VorpInv.subItem(data.source, value.removeitem2, value.amount6) --Removes the item and amount specified in config
          VorpInv.addItem(data.source, craftName, value.amount) --adds the item and amount specified in config
        end --ends the if statement
      end --ends the if statement
      if total == 2 then
        if itemCount2 >= value.amount7 then --same as above
          if itemCount >= value.amount6 then --this is layered if statement basically to see if you have both items then if you do it removes and adds the items.
            VorpInv.subItem(data.source, value.removeitem2, value.amount6) -- removes item specified in config
            VorpInv.subItem(data.source, value.removeitem3, value.amount7) --removes the item specified in the config
            VorpInv.addItem(data.source, craftName, value.amount) --adds the item specified in the config
          end --ends the if statement
        end --ends the if statement
      end --ends the if statement
      if total == 3 then
        if itemCount2 >= value.amount7 then
          if itemCount >= value.amount6 then
            if itemCount3 >= value.amount8 then
              VorpInv.subItem(data.source, value.removeitem4, value.amount8)
              VorpInv.subItem(data.source, value.removeitem2, value.amount6) -- removes item specified in config
              VorpInv.subItem(data.source, value.removeitem3, value.amount7)
              VorpInv.addItem(data.source, craftName, value.amount)
            end --ends the if statement
          end --ends the if statement
        end --ends the if statement
      end --ends the if statement
      if total == 4 then
        if itemCount2 >= value.amount7 then
          if itemCount >= value.amount6 then
            if itemCount3 >= value.amount8 then
              if itemCount4 >= value.amount9 then
                VorpInv.subItem(data.source, value.removeitem5, value.amount9)
                VorpInv.subItem(data.source, value.removeitem4, value.amount8)
                VorpInv.subItem(data.source, value.removeitem2, value.amount6) -- removes item specified in config
                VorpInv.subItem(data.source, value.removeitem3, value.amount7)
                VorpInv.addItem(data.source, craftName, value.amount)
              end
            end
          end
        end
      end
      if total == 5 then
        if itemCount2 >= value.amount7 then
          if itemCount >= value.amount6 then
            if itemCount3 >= value.amount8 then
              if itemCount4 >= value.amount9 then
                if itemCount5 >= value.amount10 then
                  VorpInv.subItem(data.source, value.removeitem5, value.amount9)
                  VorpInv.subItem(data.source, value.removeitem4, value.amount8)
                  VorpInv.subItem(data.source, value.removeitem2, value.amount6) -- removes item specified in config
                  VorpInv.subItem(data.source, value.removeitem3, value.amount7)
                  VorpInv.addItem(data.source, craftName, value.amount)
                  VorpInv.subItem(data.source, value.removeitem6, value.amount10)
                end
              end
            end
          end
        end
      end
    end)
  end
end)
