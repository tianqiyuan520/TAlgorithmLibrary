##main
#读取指数
# execute store result score #tal.num.exponentiation_by_squaring.num2 tal.input run data get storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1].is_return
# execute if score #tal.num.exponentiation_by_squaring.num2 tal.input matches 1 run function t_algorithm_lib:num/exponentiation_by_squaring/main/return
execute store result score #tal.num.exponentiation_by_squaring.num1 tal.input run data get storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1].num2
execute store result score #tal.num.exponentiation_by_squaring.num2 tal.input run data get storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1].return
#是否为0，且是第一次
scoreboard players set #tal.num.exponentiation_by_squaring.is_z tal.input 0

execute if score #tal.num.exponentiation_by_squaring.num1 tal.input matches 0 unless score #tal.num.exponentiation_by_squaring.num2 tal.input matches 1 if score #tal.num.exponentiation_by_squaring.sca tal.input matches 0 run function t_algorithm_lib:num/exponentiation_by_squaring/main/match_zero
execute if score #tal.num.exponentiation_by_squaring.num1 tal.input matches 0 unless score #tal.num.exponentiation_by_squaring.num2 tal.input matches 3.. if score #tal.num.exponentiation_by_squaring.sca tal.input matches 1 run function t_algorithm_lib:num/exponentiation_by_squaring/main/match_zero

execute if score #tal.num.exponentiation_by_squaring.is_z tal.input matches 0 run function t_algorithm_lib:num/exponentiation_by_squaring/main/no_zero


##循环
execute store result score #tal.num.exponentiation_by_squaring.num3 tal.input run data get storage t_algorithm_lib:num exponentiation_by_squaring.main.stack
scoreboard players add #tal.num.exponentiation_by_squaring.i tal.input 1
execute if score #tal.num.exponentiation_by_squaring.num3 tal.input matches 2.. if score #tal.num.exponentiation_by_squaring.i tal.input < #tal.num.exponentiation_by_squaring.i2 tal.input run function t_algorithm_lib:num/exponentiation_by_squaring/main/main