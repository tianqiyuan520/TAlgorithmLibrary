##转化为double
data modify storage t_algorithm_lib:array elements_type_check.list2 set value [1d]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:num exponentiation_by_squaring.input.num2
execute if score #tal.str.elements_type_check tal.input matches 0 store result storage t_algorithm_lib:num exponentiation_by_squaring.input.num2 double 1.0 run data get storage t_algorithm_lib:num exponentiation_by_squaring.input.num2
##判断正负
function t_algorithm_lib:num/double_compare/init
scoreboard players set #tal.maths.exponentiation_by_squaring.N tal.input 0
data modify entity 00000000-0000-1d63-0000-000800000001 Pos[1] set from storage t_algorithm_lib:num exponentiation_by_squaring.input.num2
execute as 00000000-0000-1d63-0000-000800000001 at @s if predicate t_algorithm_lib:down_zero run scoreboard players set #tal.maths.exponentiation_by_squaring.N tal.input 1
##取绝对值
execute if score #tal.maths.exponentiation_by_squaring.N tal.input matches 1 run function t_algorithm_lib:num/exponentiation_by_squaring/get_abs


