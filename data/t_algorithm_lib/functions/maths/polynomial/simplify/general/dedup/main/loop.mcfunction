##判断 
#判断该项底数是否相同
data modify storage t_algorithm_lib:maths polynomial.temp.check set from storage t_algorithm_lib:maths polynomial.generalize.dedup.return[-1][0]
execute store success score #tal.str.polynomial.check tal.input run data modify storage t_algorithm_lib:maths polynomial.temp.check set from storage t_algorithm_lib:maths polynomial.generalize.dedup.list2[0][0]
execute if score #tal.str.polynomial.check tal.input matches 0 run data modify storage t_algorithm_lib:maths polynomial.generalize.dedup.isDedup[0] set value 1
execute if score #tal.str.polynomial.check tal.input matches 0 run function t_algorithm_lib:maths/polynomial/simplify/general/dedup/main/change_power

#region 轮回方式
data remove storage t_algorithm_lib:maths polynomial.generalize.dedup.list2[0]
data modify storage t_algorithm_lib:maths polynomial.generalize.dedup.isDedup append from storage t_algorithm_lib:maths polynomial.generalize.dedup.isDedup[0]
data remove storage t_algorithm_lib:maths polynomial.generalize.dedup.isDedup[0]
#endregion

execute store result score #tal.maths.polynomial.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.generalize.dedup.list2
execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/general/dedup/main/loop