##第一项里的循环
##判断符号
scoreboard players set #tal.maths.polynomial.temp.success2 tal.input 0
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.items.add.list[0][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"+"} run scoreboard players set #tal.maths.polynomial.temp.success2 tal.input 1
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"-"} run scoreboard players set #tal.maths.polynomial.temp.success2 tal.input 1
execute if score #tal.maths.polynomial.temp.success2 tal.input matches 1 run data modify storage t_algorithm_lib:maths polynomial.temp.list[0] append from storage t_algorithm_lib:maths polynomial.items.add.list[0]
##该项里的循环
#调用 单项的函数
execute if score #tal.maths.polynomial.temp.success2 tal.input matches 0 run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/items_add_item/call
##
execute store result score #tal.maths.polynomial.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.add.temp.gcd
# execute if score #tal.maths.polynomial.temp.success2 tal.input matches 0 if score #tal.maths.polynomial.list_count tal.input matches 0 run data modify storage t_algorithm_lib:maths polynomial.temp.list[0] append value []
execute if score #tal.maths.polynomial.temp.success2 tal.input matches 0 if score #tal.maths.polynomial.list_count tal.input matches 0 run data modify storage t_algorithm_lib:maths polynomial.temp.list[0] append from storage t_algorithm_lib:maths polynomial.items.add.list[0]

execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/items_add_item/add_result_etc/start

data remove storage t_algorithm_lib:maths polynomial.items.add.list[0]
execute store result score #tal.maths.polynomial.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.items.add.list
execute if score #tal.maths.polynomial.list_count tal.input matches 1.. if score #tal.maths.polynomial.temp.loop_end tal.input matches 0 run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/items_add_item/loop_item