execute if data storage cu:item return.armorFeet.Slot run data remove storage cu:item return.armorFeet.Slot
execute in cu:data_temp run data modify block 0 1 0 Items set value []
execute in cu:data_temp run data modify block 0 1 0 Items prepend from storage cu:item return.armorFeet
execute in cu:data_temp run loot replace entity @s armor.feet mine 0 1 0 minecraft:air{contentOnly:1b}
