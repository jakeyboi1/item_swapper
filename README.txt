Item Swapper/Converter and Item Crafter/Combiner written by Jake2k4

REQUIRED SCRIPTS FOR THIS ONE TO FUNCTION:
https://github.com/VORPCORE/vorp_inventory-lua


The Item Swapper/Converter part of the script:
The script removes an item from your inventory when it is used(double clicked) and adds items in its place.
It currently supports removing 1 item(as money of said item as you want), and adding 5 items(as money of each  of the 5 as you want, you can also remove less than 5 items)
There is an example of how to add new items to the Swapper/Converter in the config.lua
It also features a webhooking system that displays a persons steam identifier, and displays the text you set in the config.lua. It displays a webhook message everytime an item is Swapper/Converted
You can also disable webhooks for certain items by in the config.lua just change webhookdesc = "yourtext" too webhookdesc = ""
It also will display text (that you specify) in the top left when an item is Swapper/Converted useful to tell players what they recieve or lose


The Crafting/Combiner part of the script:
This is only needed if you want to be able to craft/combine items (but it is a cool system so check it out atleast)
So the way the Crafter/Combiner works is off of Recipe items (any item its just specified as a recipe item in the config)
The recipe item is the item you have to have in your inventory and the item you use(double click) to craft/combine the item if you have all the required items you specified in the config on you.
There is an example of how to add new items to the Crafter/Combiner in the config.lua
So what I do is in my database put the desc of your Recipe item too for example 'This is a recipe to Craft a lunch box. You must have 2x Water 2x Salmon Can' and it functions well and looks really nice.
It also features a webhooking system that displays a persons steam identifier, and displays the text you set in the config.lua. It displays a webhook message everytime an item is Crafted/Combined
You can also disable webhooks for certain items by in the config.lua just change webhookdesc = "yourtext" too webhookdesc = ""
It also will display text (that you specify) in the top left when an item is Crafted/Combined useful to tell players what they recieve or lose


--Side Notes

The webhooking system logs down everything you set it too log, and displays the persons steam id which is great becouse if they find a exploit you will see it in your webhook, and since you have thier steam id you will be able to find the player in your database and admin menu.

Special thanks to Outsider for teaching me how to setup a config.lua to be used in the script, aswell as for helping me get the webhook to work.
Special thanks aswell to the entire community for all your guy's help.
I will offer as much support as I can so if there is an issue or idea get in contact with me.
