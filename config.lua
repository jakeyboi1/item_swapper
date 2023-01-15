Config = {}

--Registers items for the converter

Webhooklink = "" --Place your webhook link here (If you do not want to use the webhook leave this like it is)




--Start of registering items for the swapper/converter

Config.converter = {
    {
        TakenItem = "moneybagone", --This is the item it removes 
        Amount = 1, --This is the amount of the item it removes
        GivenItems = {
            {
                name = "wheat", --This is the item it gives
                count = 2 --The amount it gives
            },
            {
                name = "hop", --this is the 2nd item it gives
                count = 5 --This is the amount of the 2nd item it gives
            }
        },
        webhookdesc = "Got 2x wheat 5x hop, and lost 1x Average Bag Of Cash", --is the description displayed by the webhook
        displaytext = "Got 2x wheat 5x hop, and lost 1x Average Bag Of Cash" --Is the text displayed at the top left of your players screen when they convert an item
    },
    --[[to add new item to be converted
    {
        TakenItem = "moneybagone", --replace with your item
        Amount = 1, --replace with your amount
        GivenItems = {
            {
                name = "wheat", --replace with your item
                count = 2 --replace with your amount
            },
            {
                name = "hop", --replace with your item
                count = 5 --replace with your amount
            }
        },
        webhookdesc = "Got 2x wheat 5x hop, and lost 1x Average Bag Of Cash", --replace with the description you want
        displaytext = "Got 2x wheat 5x hop, and lost 1x Average Bag Of Cash" --replace with the text you want displayed
    }
    ]]
}
--End of registering items for the swapper/converter



--Start of registering items for the crafting/combiner
--If you do not want to use the crating/combining feature then just ignore everything below this line.

Config.crafting = {
    {
        RecipeItem = "recipe1",
        TakenItems = {
            {
                name = "water",
                count = 2
            },
            {
                name = "bonds",
                count = 1
            }
        },
        GivenItem = {
            {
                name = "wood",
                count = 1
            }
        },
        webhookdesc = "Crafted an item. Used 2x Water and 1x Bonds to make 1x Wood",
        displaytext = "Crafted an item. Used 2x Water and 1x Bonds to make 1x Wood"
    }
    --[[to add new item to be converted (make sure to add a comma to the swirly bracket above aswell)
    {
        RecipeItem = "recipe1", --replace with your recipe item(the item you want to be used to craft the items)
        TakenItems = {
            {
                name = "water", --Replace with the item you want taken 
                count = 2 -- replace with your amount you want taken
            },
            {
                name = "bonds", --replace with your item you want taken
                count = 1 --replace with your amount you want taken
            }
        },
        GivenItem = {
            {
                name = "wood", --replace with your item you want given
                count = 1 --replace with your amount you want given
            }
        },
        webhookdesc = "Got 2x wheat 5x hop, and lost 1x Average Bag Of Cash", --replace with the description you want
        displaytext = "Got 2x wheat 5x hop, and lost 1x Average Bag Of Cash" --replace with the text you want displayed
    }
    ]]
}