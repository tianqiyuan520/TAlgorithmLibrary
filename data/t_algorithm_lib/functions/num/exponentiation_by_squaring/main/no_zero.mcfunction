execute store result score #tal.num.exponentiation_by_squaring.ir tal.input run data get storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1].is_return
execute store result score #tal.num.exponentiation_by_squaring.last tal.input run data get storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1].last

execute if score #tal.num.exponentiation_by_squaring.ir tal.input matches 1 if score #tal.num.exponentiation_by_squaring.last tal.input matches 0 run function t_algorithm_lib:num/exponentiation_by_squaring/main/last_even
execute if score #tal.num.exponentiation_by_squaring.ir tal.input matches 1 if score #tal.num.exponentiation_by_squaring.last tal.input matches 1 run function t_algorithm_lib:num/exponentiation_by_squaring/main/last_odd

execute if score #tal.num.exponentiation_by_squaring.ir tal.input matches 0 run function t_algorithm_lib:num/exponentiation_by_squaring/main/no_return
