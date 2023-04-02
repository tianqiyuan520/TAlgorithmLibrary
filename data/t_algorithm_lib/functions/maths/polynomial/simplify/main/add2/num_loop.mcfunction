##num添加

scoreboard players set #tal.maths.polynomial.temp.power tal.input 1
scoreboard players set #tal.maths.polynomial.-1 tal.input -1
# execute if data storage t_algorithm_lib:maths polynomial.add2.nums[0][2][0] store result score #tal.maths.polynomial.temp.power tal.input run data get storage t_algorithm_lib:maths polynomial.add2.nums[0][2][0]
execute store result score #tal.maths.polynomial.temp.num tal.input run data get storage t_algorithm_lib:maths polynomial.add2.nums[0][0][0]
scoreboard players set #tal.maths.polynomial.temp.power2 tal.input 1
# execute if data storage t_algorithm_lib:maths polynomial.add2.nums[2][2][0] store result score #tal.maths.polynomial.temp.power2 tal.input run data get storage t_algorithm_lib:maths polynomial.add2.nums[2][2][0]
execute store result score #tal.maths.polynomial.temp.num2 tal.input run data get storage t_algorithm_lib:maths polynomial.add2.nums[2][0][0]
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.add2.nums[1][0]

##调用power
scoreboard players operation #tal.num.temp.power tal.input = #tal.maths.polynomial.temp.power tal.input
scoreboard players operation #tal.num.temp.num tal.input = #tal.maths.polynomial.temp.num tal.input
function t_algorithm_lib:num/num_any_power/start
scoreboard players operation #tal.maths.polynomial.temp.num tal.input = #tal.num.temp.num2 tal.input
execute if score #tal.maths.polynomial.is_negitive tal.input matches 1 run scoreboard players operation #tal.maths.polynomial.temp.num tal.input *= #tal.maths.polynomial.-1 tal.input
#
scoreboard players operation #tal.num.temp.power tal.input = #tal.maths.polynomial.temp.power2 tal.input
scoreboard players operation #tal.num.temp.num tal.input = #tal.maths.polynomial.temp.num2 tal.input
function t_algorithm_lib:num/num_any_power/start
scoreboard players operation #tal.maths.polynomial.temp.num2 tal.input = #tal.num.temp.num2 tal.input
##
data modify storage t_algorithm_lib:maths polynomial.add2.nums_check.char set from storage t_algorithm_lib:maths polynomial.add2.nums[1][0]

execute if data storage t_algorithm_lib:maths polynomial.add2.nums_check{char:"+"} run scoreboard players operation #tal.maths.polynomial.temp.num tal.input += #tal.maths.polynomial.temp.num2 tal.input
execute if data storage t_algorithm_lib:maths polynomial.add2.nums_check{char:"-"} run scoreboard players operation #tal.maths.polynomial.temp.num tal.input -= #tal.maths.polynomial.temp.num2 tal.input
data remove storage t_algorithm_lib:maths polynomial.add2.nums[0]
data remove storage t_algorithm_lib:maths polynomial.add2.nums[0]
data remove storage t_algorithm_lib:maths polynomial.add2.nums[0]
data modify storage t_algorithm_lib:maths polynomial.add2.nums prepend value [1]
execute store result storage t_algorithm_lib:maths polynomial.add2.nums[0][0] int 1 run scoreboard players get #tal.maths.polynomial.temp.num tal.input



execute store result score #tal.maths.polynomial.add2.num tal.input run data get storage t_algorithm_lib:maths polynomial.add2.nums
execute if score #tal.maths.polynomial.add2.num tal.input matches 2.. run function t_algorithm_lib:maths/polynomial/simplify/main/add2/num_loop