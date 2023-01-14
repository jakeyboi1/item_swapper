Config = {}

--Registers items for the converter

Config.items = {
    --the text moneybagfv is the item it removes make sure its registered in your database.
    moneybagfv = {
        removeitem = 1, --Specifies how many of the item to take away from you
        reward = "bonds", amount = 3 -- Registers the item to give when the item is used, and also specifies the amount.
    },
    moneybagth = {
        removeitem = 1,
        reward = "bonds", amount = 7
    },
    moneybagone = {
        removeitem = 1,
        reward = "bonds", amount = 5,
        reward2 = "coal", amount2 = 3,
        reward3 = "meat", amount3 = 2,
        reward4 = "wheat", amount4 = 2,
        reward5 = "water", amount5 = 1
    },
    --[[EXAMPLE TO ADD NEW ITEM
     
    newitem = {
        removeitem = 1,
        --below are the rewards remove the ones you dont need so if you only need 1 reward remove the rest etc.
        reward = "reward", amount = 7 
        reward2 = "coal", amount2 = 3,
        reward3 = "meat", amount3 = 2,
        reward4 = "wheat", amount4 = 2,
        reward5 = "water", amount5 = 1
    },

    ]]
}

--End registering items
--Begin of crafting section this is not required to be used if you do not want it then ignore below this point
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
    },
    wood = {
        amount = 1, --How many of the item you want it to give you.
        recipeitem = "steak", amount1 = 1, --The recipe item meaning this is what you have to use to craft the item. These have to be items in your database. 1 recipe item can not be used for multiple recipes.
        --below this line are the items it will remove when the recipe item is used
        removeitem2 = "syn", amount6 = 1,
        removeitem3 = "water", amount7 = 2,
        totalrequired = 2, --This is the total required so if you only want it to remove 1 item set it too 1 if you are removing 2 items set it too 2 and so
    },
}
