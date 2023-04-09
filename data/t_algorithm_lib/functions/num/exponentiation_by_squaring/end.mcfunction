

execute if score #tal.num.exponentiation_by_squaring.sca tal.input matches 0 run data modify storage t_algorithm_lib:num exponentiation_by_squaring.result set from storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[0].return



execute store result score #tal.num.exponentiation_by_squaring.a tal.input run data get storage t_algorithm_lib:num exponentiation_by_squaring.input.num2

execute if score #tal.num.exponentiation_by_squaring.sca tal.input matches 1 run data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
execute if score #tal.num.exponentiation_by_squaring.sca tal.input matches 1 if score #tal.num.exponentiation_by_squaring.a tal.input matches 0 run data modify storage t_algorithm_lib:array double_array_to_double.input set value [[1]]
execute if score #tal.num.exponentiation_by_squaring.sca tal.input matches 1 run function t_algorithm_lib:array/double_array_to_double/start
execute if score #tal.num.exponentiation_by_squaring.sca tal.input matches 1 run data modify storage t_algorithm_lib:num exponentiation_by_squaring.result set from storage t_algorithm_lib:array double_array_to_double.result
