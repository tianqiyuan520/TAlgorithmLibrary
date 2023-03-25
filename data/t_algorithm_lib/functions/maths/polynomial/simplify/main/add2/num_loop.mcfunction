##num添加

scoreboard players set #tal.maths.polynomial.temp.power tal.str_parser 1
scoreboard players set #tal.maths.polynomial.-1 tal.str_parser -1
# execute if data storage t_algorithm_lib:maths polynomial.add2.nums[0][2][0] store result score #tal.maths.polynomial.temp.power tal.str_parser run data get storage t_algorithm_lib:maths polynomial.add2.nums[0][2][0]
execute store result score #tal.maths.polynomial.temp.num tal.str_parser run data get storage t_algorithm_lib:maths polynomial.add2.nums[0][0][0]
scoreboard players set #tal.maths.polynomial.temp.power2 tal.str_parser 1
# execute if data storage t_algorithm_lib:maths polynomial.add2.nums[2][2][0] store result score #tal.maths.polynomial.temp.power2 tal.str_parser run data get storage t_algorithm_lib:maths polynomial.add2.nums[2][2][0]
execute store result score #tal.maths.polynomial.temp.num2 tal.str_parser run data get storage t_algorithm_lib:maths polynomial.add2.nums[2][0][0]
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.add2.nums[1][0]

##调用power
scoreboard players operation #tal.num.temp.power tal.str_parser = #tal.maths.polynomial.temp.power tal.str_parser
scoreboard players operation #tal.num.temp.num tal.str_parser = #tal.maths.polynomial.temp.num tal.str_parser
function t_algorithm_lib:num/num_any_power/start
scoreboard players operation #tal.maths.polynomial.temp.num tal.str_parser = #tal.num.temp.num2 tal.str_parser
execute if score #tal.maths.polynomial.is_negitive tal.str_parser matches 1 run scoreboard players operation #tal.maths.polynomial.temp.num tal.str_parser *= #tal.maths.polynomial.-1 tal.str_parser
#
scoreboard players operation #tal.num.temp.power tal.str_parser = #tal.maths.polynomial.temp.power2 tal.str_parser
scoreboard players operation #tal.num.temp.num tal.str_parser = #tal.maths.polynomial.temp.num2 tal.str_parser
function t_algorithm_lib:num/num_any_power/start
scoreboard players operation #tal.maths.polynomial.temp.num2 tal.str_parser = #tal.num.temp.num2 tal.str_parser
##
data modify storage t_algorithm_lib:maths polynomial.add2.nums_check.char set from storage t_algorithm_lib:maths polynomial.add2.nums[1][0]

execute if data storage t_algorithm_lib:maths polynomial.add2.nums_check{char:"+"} run scoreboard players operation #tal.maths.polynomial.temp.num tal.str_parser += #tal.maths.polynomial.temp.num2 tal.str_parser
execute if data storage t_algorithm_lib:maths polynomial.add2.nums_check{char:"-"} run scoreboard players operation #tal.maths.polynomial.temp.num tal.str_parser -= #tal.maths.polynomial.temp.num2 tal.str_parser
data remove storage t_algorithm_lib:maths polynomial.add2.nums[0]
data remove storage t_algorithm_lib:maths polynomial.add2.nums[0]
data remove storage t_algorithm_lib:maths polynomial.add2.nums[0]
data modify storage t_algorithm_lib:maths polynomial.add2.nums prepend value [1]
execute store result storage t_algorithm_lib:maths polynomial.add2.nums[0][0] int 1 run scoreboard players get #tal.maths.polynomial.temp.num tal.str_parser



execute store result score #tal.maths.polynomial.add2.num tal.str_parser run data get storage t_algorithm_lib:maths polynomial.add2.nums
execute if score #tal.maths.polynomial.add2.num tal.str_parser matches 2.. run function t_algorithm_lib:maths/polynomial/simplify/main/add2/num_loop