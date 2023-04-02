###Double值比较大小
##facing范围[-10^155,10^155]
##[自定义输入]值A
# data modify storage t_algorithm_lib:num double_compare.input.num set value 1.0
##[自定义输入]值B
# data modify storage t_algorithm_lib:num double_compare.input.num2 set value -30.0
##返回结果 1大,0相等,-1小于
data modify storage t_algorithm_lib:num double_compare.result set value 0
data remove storage t_algorithm_lib:num double_compare.result
#生成实体
function t_algorithm_lib:num/double_compare/init

##判断同向和异向
scoreboard players set #tal.num.double_compare.same tal.input 0
data modify entity 00000000-0000-1d63-0000-000800000001 Pos[1] set from storage t_algorithm_lib:num double_compare.input.num
data modify entity 00000000-0000-1d63-0000-000800000002 Pos[1] set from storage t_algorithm_lib:num double_compare.input.num2
##判断相等
execute store success score #tal.num.double_compare.num tal.input run data modify entity 00000000-0000-1d63-0000-000800000001 Pos[1] set from storage t_algorithm_lib:num double_compare.input.num2
execute if score #tal.num.double_compare.num tal.input matches 0 run data modify storage t_algorithm_lib:num double_compare.result set value 0


data modify entity 00000000-0000-1d63-0000-000800000001 Pos[1] set from storage t_algorithm_lib:num double_compare.input.num
execute at 00000000-0000-1d63-0000-000800000001 if predicate t_algorithm_lib:down_zero at 00000000-0000-1d63-0000-000800000002 if predicate t_algorithm_lib:down_zero run scoreboard players set #tal.num.double_compare.same tal.input 1
execute at 00000000-0000-1d63-0000-000800000001 unless predicate t_algorithm_lib:down_zero at 00000000-0000-1d63-0000-000800000002 unless predicate t_algorithm_lib:down_zero run scoreboard players set #tal.num.double_compare.same tal.input 2
##异向
execute unless data storage t_algorithm_lib:num double_compare.result if score #tal.num.double_compare.same tal.input matches 0 at 00000000-0000-1d63-0000-000800000001 if predicate t_algorithm_lib:down_zero run data modify storage t_algorithm_lib:num double_compare.result set value -1
execute unless data storage t_algorithm_lib:num double_compare.result if score #tal.num.double_compare.same tal.input matches 0 at 00000000-0000-1d63-0000-000800000002 if predicate t_algorithm_lib:down_zero run data modify storage t_algorithm_lib:num double_compare.result set value 1

##同向
execute unless data storage t_algorithm_lib:num double_compare.result if score #tal.num.double_compare.same tal.input matches 1..2 run function t_algorithm_lib:num/double_compare/same
