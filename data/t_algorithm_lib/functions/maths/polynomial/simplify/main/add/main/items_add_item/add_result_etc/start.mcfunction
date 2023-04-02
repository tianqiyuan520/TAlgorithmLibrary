##查上个式子符号
# tellraw @a [{"text":"上一个值 "},{"nbt":"polynomial.temp.list[0][-1][0]","storage":"t_algorithm_lib:maths","color":"#4EC990"},"\n",{"nbt":"polynomial.temp.list","storage":"t_algorithm_lib:maths","color":"#4EC990"}]

scoreboard players set #tal.maths.polynomial.is_negitive tal.input 0
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.temp.list[0][-1][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"-"} run scoreboard players set #tal.maths.polynomial.is_negitive tal.input 1
##
scoreboard players set #tal.maths.polynomial.temp.loop_end tal.input 1
##处理 共同项
# [ [data],[+],[  ( result +/- 第二项 ) * gcd  ]    ]
## ( result +/- 第二项 ) * gcd

data modify storage t_algorithm_lib:maths polynomial.temp.list[0] append value [[]]
#result
execute store result score #tal.maths.polynomial.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.add.temp.result
execute if score #tal.maths.polynomial.list_count tal.input matches 0 run data modify storage t_algorithm_lib:maths polynomial.add.temp.result append value [[[1]],['^'],[[1]]]

function t_algorithm_lib:maths/polynomial/simplify/main/add/main/items_add_item/add_result_etc/read_loop2

#添加符号 和第二项
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.add.symbol[0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"-"} if score #tal.maths.polynomial.is_negitive tal.input matches 1 run data modify storage t_algorithm_lib:maths polynomial.add.symbol set value ['+']
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"+"} if score #tal.maths.polynomial.is_negitive tal.input matches 1 run data modify storage t_algorithm_lib:maths polynomial.add.symbol set value ['-']
data modify storage t_algorithm_lib:maths polynomial.temp.list[0][-1] append from storage t_algorithm_lib:maths polynomial.add.symbol
data modify storage t_algorithm_lib:maths polynomial.temp.list[0][-1] append value []
data modify storage t_algorithm_lib:maths polynomial.temp.list[0][-1][-1] append from storage t_algorithm_lib:maths polynomial.add.list2[]
##[ [data],[+/-],[data]   ]
##[ [[data],[+/-],[data]]  ,[*],[gcd] ]
#判断 是否添加gcd
execute store result score #tal.maths.polynomial.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.add.temp.gcd
scoreboard players set #tal.maths.polynomial.is_gcd tal.input 0
# [ [1],[2],[3],[4]...  ] [+] , [2]
execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run data modify storage t_algorithm_lib:maths polynomial.temp.list_ set value [[],['*'],[]]
execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run data modify storage t_algorithm_lib:maths polynomial.temp.list_[-1] set from storage t_algorithm_lib:maths polynomial.temp.list[0][-1]
execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run data remove storage t_algorithm_lib:maths polynomial.temp.list[0][-1]
execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run scoreboard players set #tal.maths.polynomial.is_gcd tal.input 1
execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/items_add_item/add_result_etc/read_loop
execute if score #tal.maths.polynomial.is_gcd tal.input matches 1 run data modify storage t_algorithm_lib:maths polynomial.temp.list[0] append value [[]]
execute if score #tal.maths.polynomial.is_gcd tal.input matches 1 run data modify storage t_algorithm_lib:maths polynomial.temp.list[0][-1][0] set from storage t_algorithm_lib:maths polynomial.temp.list_


data remove storage t_algorithm_lib:maths polynomial.items.add.list[0]
data modify storage t_algorithm_lib:maths polynomial.temp.list[0] append from storage t_algorithm_lib:maths polynomial.items.add.list[]
