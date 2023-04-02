
execute store result score #tal.num.exponentiation_by_squaring.num1 tal.input run data get storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1].num2
data modify storage t_algorithm_lib:num exponentiation_by_squaring.main.stack append value {num1:1,num2:1,is_return:0,return:0,last:1}
data modify storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1].num1 set from storage t_algorithm_lib:num exponentiation_by_squaring.input.num
execute store result storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1].num2 int 1 run scoreboard players remove #tal.num.exponentiation_by_squaring.num1 tal.input 1
# function t_algorithm_lib:num/exponentiation_by_squaring/main/main
scoreboard players set #tal.num.exponentiation_by_squaring.is_o tal.input 1
