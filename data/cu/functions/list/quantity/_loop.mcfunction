data modify storage cu:compare input1 set from storage cu:list quantity.inputTarget
data modify storage cu:compare input2 set from storage cu:list quantity.inputSource[0]
function cu:compare/different
execute if score #result compare matches 0 run scoreboard players add #result listQuantity 1

data remove storage cu:list quantity.inputSource[0]

execute if data storage cu:list quantity.inputSource[0] run function cu:list/quantity/_loop
