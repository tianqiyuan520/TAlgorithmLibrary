##判断 
#判断该项底数是否相同
data modify storage t_algorithm_lib:maths polynomial.temp.check set from storage t_algorithm_lib:maths polynomial.add.list2[0][0]
execute store success score #tal.str.polynomial.check tal.str_parser run data modify storage t_algorithm_lib:maths polynomial.temp.check set from storage t_algorithm_lib:maths polynomial.add.list[0][0]
execute if score #tal.str.polynomial.check tal.str_parser matches 0 run scoreboard players set #tal.maths.polynomial.temp.is_gcd tal.str_parser 1
execute if score #tal.str.polynomial.check tal.str_parser matches 0 run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/item/matches

#轮换
scoreboard players remove #tal.maths.polynomial.time tal.str_parser 1
data modify storage t_algorithm_lib:maths polynomial.add.list2 append from storage t_algorithm_lib:maths polynomial.add.list2[0]
data remove storage t_algorithm_lib:maths polynomial.add.list2[0]


execute if score #tal.maths.polynomial.time tal.str_parser matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/item/loop2