# loot spawn ~ ~ ~ loot t_algorithm_lib:check_pos
# execute as @e[type=item,nbt={Item:{tag:{TAL:{num.hpc.check_pos:1b}}}},limit=1] run tellraw @a [{"nbt":"Pos[1]","entity": "@s"}]
function t_algorithm_lib:array/double_array_to_double/loop/integer/start
scoreboard players set #tal.array.DAToDouble.tier tal.input 0