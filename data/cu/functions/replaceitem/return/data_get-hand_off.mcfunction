data remove storage cu:replaceitem return.handOff
data modify storage cu:get item set value []
function cu:get/hand_off
execute if data storage cu:get item[0] run data modify storage cu:replaceitem return.handOff set from storage cu:get item[0]
