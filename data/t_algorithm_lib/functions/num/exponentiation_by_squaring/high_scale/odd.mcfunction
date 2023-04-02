execute store result score #tal.num.exponentiation_by_squaring.num1 tal.input run data get storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[0].num1
execute store result score #tal.num.exponentiation_by_squaring.num2 tal.input run data get storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1].return
execute store success storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-2].is_return int 1 store result storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-2].return int 1 run scoreboard players operation #tal.num.exponentiation_by_squaring.num1 tal.input *= #tal.num.exponentiation_by_squaring.num2 tal.input
# data modify storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-2].is_return set value 1
data remove storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1]
