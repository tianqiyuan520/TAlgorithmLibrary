loot spawn ~ ~ ~ loot t_algorithm_lib:check_pos
# execute as @e[type=item,nbt={Item:{tag:{TAL:{num.hpc.check_pos:1b}}}},limit=1] run tellraw @a [{"nbt":"Pos[1]","entity": "@s"}]
execute as @e[type=item,nbt={Item:{tag:{TAL:{num.hpc.check_pos:1b}}}},limit=1] run data modify storage t_algorithm_lib:array double_array_to_double.result set from entity @s Pos[1]
execute as @e[type=item,nbt={Item:{tag:{TAL:{num.hpc.check_pos:1b}}}}] run tp ~ -1000000 ~
kill @e[type=item,nbt={Item:{tag:{TAL:{num.hpc.check_pos:1b}}}}]
scoreboard players set #tal.array.DAToDouble.num2 tal.str_parser 1