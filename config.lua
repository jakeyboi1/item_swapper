Config = {}

--Registers items for the converter

Webhooklink = "" --Place your webhook link here (If you do not want to use the webhook leave this like it is)




--Start of registering items for the swapper/converter

Config.items = {
    --the text moneybagfv is the item it removes make sure its registered in your database.
    moneybagfv = {
        removeitem = 1, --Specifies how many of the item (moneybagfv) to take away from you
        reward = "bonds", amount = 3, -- Registers the item to give when the item is used, and also specifies the amount.
        totalrewarditems = 1, --If you are only doing 1 reward item then set to 1 if you are doing 2 then set it too 2 etc
        displaytext = "whatever you want to say when you Swap/Convert the item", --this will be the text that shows in the top left when you conver an item. (if you do not want to use remove the text in quotations)
        webhookdesc = "Player recieved 3 bonds, and lost 1 moneybagfv" --This is what will be displayed in the webhook along with the persons steam Identifier. If you do not want to webhook this item in particular just remove the text in quotations
    },
    moneybagth = {
        removeitem = 1,
        reward = "bonds", amount = 7,
        reward2 = "water", amount2 = 1,
        totalrewarditems = 2, --If you are only doing 1 reward item then set to 1 if you are doing 2 then set it too 2 etc
        displaytext = "whatever you want to say when you Swap/Convert the item", --this will be the text that shows in the top left when you conver an item. (if you do not want to use remove the text in quotations)
        webhookdesc = "Player Recieved 7 bonds and 1 water" --This is what will be displayed in the webhook along with the persons steam Identifier
    },
    moneybagone = {
        removeitem = 1,
        reward = "bonds", amount = 5,
        reward2 = "coal", amount2 = 3,
        reward3 = "meat", amount3 = 2,
        reward4 = "wheat", amount4 = 2,
        reward5 = "water", amount5 = 1,
        totalrewarditems = 5, --If you are only doing 1 reward item then set to 1 if you are doing 2 then set it too 2 etc
        displaytext = "whatever you want to say when you Swap/Convert the item", --this will be the text that shows in the top left when you conver an item. (if you do not want to use remove the text in quotations)
        webhookdesc = "Player recieved 5 bonds 3 coal 2 meat 2 wheat and 1 water" --This is what will be displayed in the webhook along with the persons steam Identifier
    },
    --[[EXAMPLE TO ADD NEW ITEM
     
    newitem = {
        removeitem = 1,
        --below are the rewards remove the ones you dont need so if you only need 1 reward remove the rest etc. Make sure to change them to your items
        reward = "alcohol", amount = 7 
        reward2 = "coal", amount2 = 3,
        reward3 = "meat", amount3 = 2,
        reward4 = "wheat", amount4 = 2,
        reward5 = "water", amount5 = 1
        --If you do not want the webhook ignore the line just below this
        webhookdesc = "Player recieved 7 alcohol 3 coal 2 meat 2 wheat and 1 water"
    },

    ]]
}

--End of registering items for the swapper/converter



--Start of registering items for the crafting/combiner
--If you do not want to use the crating/combining feature then just ignore everything below this line.

Config.recipes = {
    --The text moneybagfv is the item it gives you make sure its registered in the database.
    moneybagfv = {
        amount = 1, --How many of the item you want it to give you.
        recipeitem = "recipe1", amount1 = 1, --The recipe item meaning this is what you have to use to craft the item. These have to be items in your database. 1 recipe item can not be used for multiple recipes.
        --Also as a way to show the required items to "craft" set your item description in your database to for example "items for crafting 1x water 2x meat" etc
        --below this line are the items it will remove when the recipe item is used
        removeitem2 = "water", amount6 = 1,
        removeitem3 = "wheat", amount7 = 2,
        removeitem4 = "agave", amount8 = 3,
        removeitem5 = "meat", amount9 = 1,
        removeitem6 = "bonds", amount10 = 3,
        totalrequired = 5, --This is the total required so if you only want it to remove 1 item set it too 1 if you are removing 2 items set it too 2 and so
        displaytext = "whatever you want to say when you craft the item", --this will be the text that shows in the top left when you conver an item. (if you do not want to use remove the text in quotations)
        webhookdesc = "Items removed 1 water 2 wheat 3 agave 1 meat 3 bonds, player recieved 1 moneybagfv" --This is what will be displayed in the webhook along with the persons steam Identifier
    },
    moneybagone = {
        amount = 1, --How many of the item you want it to give you.
        recipeitem = "recipe2", amount1 = 1, --The recipe item meaning this is what you have to use to craft the item. These have to be items in your database. 1 recipe item can not be used for multiple recipes.
        --below this line are the items it will remove when the recipe item is used
        removeitem2 = "sugar", amount6 = 1,
        removeitem3 = "wheat", amount7 = 2,
        removeitem4 = "agave", amount8 = 3,
        removeitem5 = "meat", amount9 = 1,
        removeitem6 = "bonds", amount10 = 3,
        totalrequired = 5, --This is the total required so if you only want it to remove 1 item set it too 1 if you are removing 2 items set it too 2 and so
        displaytext = "whatever you want to say when you craft the item", --this will be the text that shows in the top left when you conver an item. (if you do not want to use remove the text in quotations)
        webhookdesc = "Items removed 1 sugar 2 wheat 3 agave 1 meat 3 bonds, player recieved 1 moneybagone"--This is what will be displayed in the webhook along with the persons steam Identifier
    },
    wood = {
        amount = 1, --How many of the item you want it to give you.
        recipeitem = "steak", amount1 = 1, --The recipe item meaning this is what you have to use to craft the item. These have to be items in your database. 1 recipe item can not be used for multiple recipes.
        --below this line are the items it will remove when the recipe item is used
        removeitem2 = "syn", amount6 = 1,
        removeitem3 = "water", amount7 = 2,
        totalrequired = 2, --This is the total required so if you only want it to remove 1 item set it too 1 if you are removing 2 items set it too 2 and so on
        displaytext = "whatever you want to say when you craft the item", --this will be the text that shows in the top left when you conver an item. (if you do not want to use remove the text in quotations)
        webhookdesc = "Items removed 1 syn 2 water, player recieved 1 wood"--This is what will be displayed in the webhook along with the persons steam Identifier
    },
    --[[
        newitem = {
        amount = 1, --How many of the item you want it to give you.
        recipeitem = "recipe2", amount1 = 1, --The recipe item meaning this is what you have to use to craft the item. These have to be items in your database. 1 recipe item can not be used for multiple recipes.
        --below this line are the items it will remove when the recipe item is used
        removeitem2 = "sugar", amount6 = 1,
        removeitem3 = "wheat", amount7 = 2,
        removeitem4 = "agave", amount8 = 3,
        removeitem5 = "meat", amount9 = 1,
        removeitem6 = "bonds", amount10 = 3,
        totalrequired = 5, --This is the total required so if you only want it to remove 1 item set it too 1 if you are removing 2 items set it too 2 and so
        displaytext = "whatever you want to say when you craft the item",
        webhookdesc = "Items removed 1 sugar 2 wheat 3 agave 1 meat 3 bonds, player recieved 1 moneybagone"--This is what will be displayed in the webhook along with the persons steam Identifier
    },
    ]]
    
}

--End of registering items for the crafting/combiner