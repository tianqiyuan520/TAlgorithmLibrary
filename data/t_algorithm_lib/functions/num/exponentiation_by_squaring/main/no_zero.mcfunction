execute store result score #tal.num.exponentiation_by_squaring.ir tal.str_parser run data get storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1].is_return
execute store result score #tal.num.exponentiation_by_squaring.last tal.str_parser run data get storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1].last

execute if score #tal.num.exponentiation_by_squaring.ir tal.str_parser matches 1 if score #tal.num.exponentiation_by_squaring.last tal.str_parser matches 0 run function t_algorithm_lib:num/exponentiation_by_squaring/main/last_even
execute if score #tal.num.exponentiation_by_squaring.ir tal.str_parser matches 1 if score #tal.num.exponentiation_by_squaring.last tal.str_parser matches 1 run function t_algorithm_lib:num/exponentiation_by_squaring/main/last_odd

execute if score #tal.num.exponentiation_by_squaring.ir tal.str_parser matches 0 run function t_algorithm_lib:num/exponentiation_by_squaring/main/no_return
