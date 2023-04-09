##加法
##判断第一项 
#条件：1.第一个是否为数字 且所含值为^ , 第三个为数字   n^m形式
#条件：2.第一个是否为数字 n形式
data modify storage t_algorithm_lib:maths polynomial.add2.list set from storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0]
data modify storage t_algorithm_lib:maths polynomial.add2.result set value []
data modify storage t_algorithm_lib:maths polynomial.add2.nums set value []

#遍历
execute store result score #tal.maths.polynomial.add2.num tal.input run data get storage t_algorithm_lib:maths polynomial.add2.list
execute if score #tal.maths.polynomial.add2.num tal.input matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/main/add2/loop

execute store result score #tal.maths.polynomial.add2.num tal.input run data get storage t_algorithm_lib:maths polynomial.add2.result
#符号为正 第一个字符为数字
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char2 set from storage t_algorithm_lib:maths polynomial.add2.result[0][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char2:"+"} if score #tal.maths.polynomial.add2.num tal.input matches 1.. run data remove storage t_algorithm_lib:maths polynomial.add2.result[0]
execute if score #tal.maths.polynomial.add2.num tal.input matches 1.. unless data storage t_algorithm_lib:maths polynomial.temp.list_check{char2:"-"} unless data storage t_algorithm_lib:maths polynomial.temp.list_check{char2:"+"} run data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char2 set value "+"
# tellraw @a [{"text":"遍历end.."},{"nbt":"polynomial.add2.result","storage":"t_algorithm_lib:maths","color":"#4EC990"},"\n",{"nbt":"polynomial.add2.nums","storage":"t_algorithm_lib:maths","color":"#4EC990"}]

#数字加法
execute store result score #tal.maths.polynomial.add2.num tal.input run data get storage t_algorithm_lib:maths polynomial.add2.nums
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.add2.nums[0][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"+"} run data remove storage t_algorithm_lib:maths polynomial.add2.nums[0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"-"} run data remove storage t_algorithm_lib:maths polynomial.add2.nums[0]
#数是否需乘*-1
scoreboard players set #tal.maths.polynomial.is_negitive tal.input 0
#
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"-"} run scoreboard players set #tal.maths.polynomial.is_negitive tal.input 1
execute store result score #tal.maths.polynomial.add2.num tal.input run data get storage t_algorithm_lib:maths polynomial.add2.nums
execute if score #tal.maths.polynomial.add2.num tal.input matches 3.. run function t_algorithm_lib:maths/polynomial/simplify/main/add2/num_loop
execute store result score #tal.maths.polynomial.add2.num tal.input run data get storage t_algorithm_lib:maths polynomial.add2.nums

execute store result score #tal.maths.polynomial.add2.num2 tal.input run data get storage t_algorithm_lib:maths polynomial.add2.result

##判断是否需要添加num
scoreboard players set #tal.maths.polynomial.add2.is_add tal.input 1
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.add2.nums[0][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"+"} run data remove storage t_algorithm_lib:maths polynomial.add2.nums[0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"-"} run data remove storage t_algorithm_lib:maths polynomial.add2.nums[0]

execute store result score #tal.maths.polynomial.temp.num tal.input run data get storage t_algorithm_lib:maths polynomial.add2.nums[0][0][0]
execute store result score #tal.maths.polynomial.add2.num_ tal.input run data get storage t_algorithm_lib:maths polynomial.add2.nums
execute store result score #tal.maths.polynomial.add2.num_2 tal.input run data get storage t_algorithm_lib:maths polynomial.add2.result
execute if score #tal.maths.polynomial.temp.num tal.input matches 0 if score #tal.maths.polynomial.add2.num_ tal.input matches 1 if score #tal.maths.polynomial.add2.num_2 tal.input matches 1.. run scoreboard players set #tal.maths.polynomial.add2.is_add tal.input 0


execute if score #tal.maths.polynomial.add2.num tal.input matches 1.. if score #tal.maths.polynomial.add2.num2 tal.input matches 1.. if data storage t_algorithm_lib:maths polynomial.temp.list_check{char2:"+"} run data modify storage t_algorithm_lib:maths polynomial.add2.nums prepend value ['+']
execute if score #tal.maths.polynomial.add2.is_add tal.input matches 1 if data storage t_algorithm_lib:maths polynomial.temp.list_check{char2:"+"} if score #tal.maths.polynomial.add2.num2 tal.input matches 1.. run data modify storage t_algorithm_lib:maths polynomial.add2.result append from storage t_algorithm_lib:maths polynomial.add2.nums[]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char2:"-"} if score #tal.maths.polynomial.add2.num2 tal.input matches 1.. run data modify storage t_algorithm_lib:maths polynomial.add2.nums append from storage t_algorithm_lib:maths polynomial.add2.result[]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char2:"-"} if score #tal.maths.polynomial.add2.num2 tal.input matches 1.. run data modify storage t_algorithm_lib:maths polynomial.add2.result set from storage t_algorithm_lib:maths polynomial.add2.nums

execute if score #tal.maths.polynomial.add2.num2 tal.input matches 0 run data modify storage t_algorithm_lib:maths polynomial.add2.result append from storage t_algorithm_lib:maths polynomial.add2.nums[]
# execute store result score #tal.maths.polynomial.add2.num tal.input run data get storage t_algorithm_lib:maths polynomial.add2.result
# execute if score #tal.maths.polynomial.add2.num tal.input matches 1..2 run data remove storage t_algorithm_lib:maths polynomial.add2.result[0]

# tellraw @a [{"text":"遍历end.."},{"nbt":"polynomial.add2.result","storage":"t_algorithm_lib:maths","color":"#4EC990"},"\n",{"nbt":"polynomial.add2.nums","storage":"t_algorithm_lib:maths","color":"#4EC990"}]
data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0] set from storage t_algorithm_lib:maths polynomial.add2.result