execute as @e[tag=cu.haveOwner,scores={giveOwnerTimer=1..}] run function cu:item/item_entity/owner_timer/main

execute as @a[scores={useItemTimer=1..}] run function cu:trigger/untag/use_item

execute as @a run function cu:trigger/health
execute as @a run function cu:trigger/awake
execute as @a run function cu:trigger/sleeping
# execute as @a run function cu:trigger/moving
execute as @a run function cu:trigger/move_to_block
execute as @a run function cu:trigger/sneak
execute as @a[scores={jumpCount=1..}] run function cu:trigger/jump
execute as @a[scores={useItemCount=1..}] run function cu:trigger/use_item
execute as @a[tag=cu.useItemBreak] run function cu:trigger/use_item-break
execute as @a[scores={leaveGameCount=1..}] run function cu:trigger/join_game
execute as @a unless score @s leaveGameCount matches -2147483648..2147483647 run function cu:trigger/first_join_game

execute if score #uips +CreativeUtility matches 1 run function cu:use_item_per_sec/main
