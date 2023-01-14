REQUIRMENTS:
https://github.com/VORPCORE/vorp_inventory-lua




This is a item swapper/converter script with a couple neat features.

easy to install just put this in your resource folder and add ensure item_swapper to your resource.cfg

-- The swapper/converter part of the script
All editible in the config.lua
This script removes an item from your inventory when you double click (use it) and adds new items to your inventory.
It currently can give you a max of 5 different items(the amount of each individual item has no limit) per item it removes.
To add new items, in the config.lua use the Config.items how to add new items is commented out in the code with examples.



-- The crafting/combiner part of the script
All editible in the config lua
This part of the code acts as a crafting/combining system using recipe items.
It uses recipe itemss (just any item you want to use) it does not remove the recipe item itself.
It will remove the items you set it too and the amount you set it too and add the item you set and the amount you set.
It currently supports using a max of 5 items to craft an item you can use less items than 5 though just make sure you specify it at the totalrequired 

--Side Notes
This is the first script I have ever written from scratch, the most I have done before this was edit a couple scripts. So keep that in mind. The script is fully funtional and I also believe I have ironed out all of the bugs.
Also special thanks to Outisder for teaching me how to setup a config.lua to be used in the script.
