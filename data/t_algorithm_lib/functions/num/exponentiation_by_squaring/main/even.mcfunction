execute store result score #tal.num.exponentiation_by_squaring.num1 tal.str_parser run data get storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1].num2

scoreboard players set #2 tal.str_parser 2

data modify storage t_algorithm_lib:num exponentiation_by_squaring.main.stack append value {num1:1,num2:1,is_return:0,return:0,last:0}
data modify storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1].num1 set from storage t_algorithm_lib:num exponentiation_by_squaring.input.num
execute store result storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1].num2 int 1 run scoreboard players operation #tal.num.exponentiation_by_squaring.num1 tal.str_parser /= #2 tal.str_parser
# function t_algorithm_lib:num/exponentiation_by_squaring/main/main
