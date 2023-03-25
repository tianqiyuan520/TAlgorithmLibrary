##判断是否含函数

scoreboard players set #tal.maths.integrate.num3 tal.str_parser 0

execute store result score #tal.maths.integrate.num tal.str_parser run data get storage t_algorithm_lib:maths integrate.temp.list2
execute store result score #tal.maths.integrate.num2 tal.str_parser run data modify storage t_algorithm_lib:maths integrate.temp.list2[] set from storage t_algorithm_lib:maths integrate.temp.fuc
##含函数
scoreboard players operation #tal.maths.integrate.num tal.str_parser -= #tal.maths.integrate.num2 tal.str_parser
execute if score #tal.maths.integrate.num tal.str_parser matches 1.. run scoreboard players set #tal.maths.integrate.num3 tal.str_parser 1