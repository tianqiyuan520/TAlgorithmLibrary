data modify storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1].is_return set value 1
execute if score #tal.num.exponentiation_by_squaring.sca tal.input matches 1 run data modify storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1].return set value ["1",".","0"]
execute if score #tal.num.exponentiation_by_squaring.sca tal.input matches 0 run data modify storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[-1].return set value 1
scoreboard players set #tal.num.exponentiation_by_squaring.is_z tal.input 1
