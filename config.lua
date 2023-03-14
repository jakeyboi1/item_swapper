Config = {}

Webhooklink = "" --Place your webhook link here (If you do not want to use the webhook leave this like it is)

Config.converter = { --this is what registers the swapper/converter/unboxing part of the code
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
            },
        },
        webhookdesc = "Got 2x wheat 5x hop, and lost 1x Average Bag Of Cash", --is the description displayed by the webhook
    }, --too add more just copy and paste this table changing what you need
}

Config.crafting = { --Start of crafting/combiner config. If you do not want this feature then ignore this part
    {
        TakenItems = { --these are the items the script will remove
            {
                name = "water", --name of item in database
                count = 2 --amount to remove
            },
            {
                name = "bonds", --name of item in database
                count = 1 --amount to remove
            },
        },
        GivenItem = { --this is the item/items that will be added
            {
                displayname = 'Soft Wood', --display name of the item(This is what shows on the menu)
                name = "wood", --database name of item
                count = 1 --amaount to give the player
            },
        },
        webhookdesc = "Crafted an item. Used 2x Water and 1x Bonds to make 1x Wood", --text that will show in the webhook if you use webhook
    },  -- to add more just copy this table and past change what you need
    {
        TakenItems = {
            {
                name = 'water',
                count = 1,
            },
        },
        GivenItem = {
            {
                displayname = "Hard Wood",
                name = 'hwood',
                count = 2,
            },
        },
        webhookdesc = "crafted an item",
    },
}

Config.Craftingcommand = 'hd_combiner' --This is what the command to open the crafting/combining menu will be

-----------------------------------------------Translate here!!---------------------------------------------------------------------
Config.Language = {
    Donothavetheitemsneeded = 'You do not have all the required items to create this!',
    Invalidamount = 'Invalid amount entered! Input has to be a number!',
    Itemcreated = 'You created the item!',
    Notenoughitems = 'You do not have all the items needed to create this item!',
    Mainmenuname = 'Combine Items',
    Submenuname = 'Items Needed to Combine',
    Bottomtext = 'Make this item?',
    Itemshow = 'You need',
    Craftitembutton = 'Craft item?'
}