##压缩法
# tellraw @a [{"nbt":"polynomial.temp.list","storage": "t_algorithm_lib:maths"}]

# #去除括号
# data modify storage t_algorithm_lib:maths polynomial.temp.list set from storage t_algorithm_lib:maths polynomial.temp.list2
# data modify storage t_algorithm_lib:maths polynomial.temp.list2 set value []
# function t_algorithm_lib:maths/polynomial/simplify/main/remove_parentheses/start
# data modify storage t_algorithm_lib:maths polynomial.temp.list set from storage t_algorithm_lib:maths polynomial.temp.list2
# data modify storage t_algorithm_lib:maths polynomial.temp.list2 set value []
# #压缩 计算数字的^
# #循环遍历数据中的数字
# function t_algorithm_lib:maths/polynomial/simplify/main/power/start
# #
# #去除括号
# data modify storage t_algorithm_lib:maths polynomial.temp.list set from storage t_algorithm_lib:maths polynomial.temp.list2
# data modify storage t_algorithm_lib:maths polynomial.temp.list2 set value []
# function t_algorithm_lib:maths/polynomial/simplify/main/remove_parentheses/start

# data modify storage t_algorithm_lib:maths polynomial.temp.list set from storage t_algorithm_lib:maths polynomial.temp.list2
# data modify storage t_algorithm_lib:maths polynomial.temp.list2 set value []
# #压缩 计算乘法
# function t_algorithm_lib:maths/polynomial/simplify/main/mul/start

# #去除括号
# data modify storage t_algorithm_lib:maths polynomial.temp.list set from storage t_algorithm_lib:maths polynomial.temp.list2
# data modify storage t_algorithm_lib:maths polynomial.temp.list2 set value []
# function t_algorithm_lib:maths/polynomial/simplify/main/remove_parentheses/start

# data modify storage t_algorithm_lib:maths polynomial.temp.list set from storage t_algorithm_lib:maths polynomial.temp.list2
# data modify storage t_algorithm_lib:maths polynomial.temp.list2 set value []
# #压缩 除法
# function t_algorithm_lib:maths/polynomial/simplify/main/division/start

# #去除括号
# data modify storage t_algorithm_lib:maths polynomial.temp.list set from storage t_algorithm_lib:maths polynomial.temp.list2
# data modify storage t_algorithm_lib:maths polynomial.temp.list2 set value []
# function t_algorithm_lib:maths/polynomial/simplify/main/remove_parentheses/start


# data modify storage t_algorithm_lib:maths polynomial.temp.list set from storage t_algorithm_lib:maths polynomial.temp.list2
# data modify storage t_algorithm_lib:maths polynomial.temp.list2 set value []
# execute store result score #tal.maths.polynomial.temp.list_count_b tal.input run data get storage t_algorithm_lib:maths polynomial.temp.list
# execute store result score #tal.maths.polynomial.temp.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.temp.list
##压缩 加法
##临时数字 处理 多项式+-数字
scoreboard players set #tal.maths.polynomial.add.num tal.input 0
execute store result score #tal.maths.polynomial.total.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.temp.list
scoreboard players set #tal.2 tal.input 2
scoreboard players operation #tal.maths.polynomial.total.list_count tal.input /= #tal.2 tal.input

function t_algorithm_lib:maths/polynomial/simplify/main/add/start


#去除括号
# data modify storage t_algorithm_lib:maths polynomial.temp.list set from storage t_algorithm_lib:maths polynomial.temp.list2
# data modify storage t_algorithm_lib:maths polynomial.temp.list2 set value []
# function t_algorithm_lib:maths/polynomial/simplify/main/remove_parentheses/start

# data modify storage t_algorithm_lib:maths polynomial.temp.list set from storage t_algorithm_lib:maths polynomial.temp.list2
# data modify storage t_algorithm_lib:maths polynomial.temp.list2 set value []
# execute store result score #tal.maths.polynomial.temp.list_count_b tal.input run data get storage t_algorithm_lib:maths polynomial.temp.list
# execute store result score #tal.maths.polynomial.temp.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.temp.list

#压缩 减法
# function t_algorithm_lib:maths/polynomial/simplify/main/subtraction/start


#去除括号
# data modify storage t_algorithm_lib:maths polynomial.temp.list set from storage t_algorithm_lib:maths polynomial.temp.list2
# data modify storage t_algorithm_lib:maths polynomial.temp.list2 set value []
# function t_algorithm_lib:maths/polynomial/simplify/main/remove_parentheses/start
# #三角函数
# data modify storage t_algorithm_lib:maths polynomial.temp.list set from storage t_algorithm_lib:maths polynomial.temp.list2
# data modify storage t_algorithm_lib:maths polynomial.temp.list2 set value []
# function t_algorithm_lib:maths/polynomial/simplify/main/trigonometric_functions/start

# #去除括号
# data modify storage t_algorithm_lib:maths polynomial.temp.list set from storage t_algorithm_lib:maths polynomial.temp.list2
# data modify storage t_algorithm_lib:maths polynomial.temp.list2 set value []
# function t_algorithm_lib:maths/polynomial/simplify/main/remove_parentheses/start

# data modify storage t_algorithm_lib:maths polynomial.temp.list set from storage t_algorithm_lib:maths polynomial.temp.list2
# data modify storage t_algorithm_lib:maths polynomial.temp.list2 set value []






scoreboard players add #tal.str.polynomial.len tal.input 1
# execute store result score #tal.maths.polynomial.temp.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.temp.list
# execute if score #tal.maths.polynomial.temp.list_count tal.input matches 1 run tellraw @a [{"nbt":"polynomial.temp.list[0]","storage": "t_algorithm_lib:maths","color": "green"}]
# execute if score #tal.maths.polynomial.temp.list_count tal.input matches 1 at @a run playsound entity.player.levelup voice @a ~ ~ ~ 1 2

execute if score #tal.str.polynomial.len tal.input matches ..5 run function t_algorithm_lib:maths/polynomial/simplify/read/loop