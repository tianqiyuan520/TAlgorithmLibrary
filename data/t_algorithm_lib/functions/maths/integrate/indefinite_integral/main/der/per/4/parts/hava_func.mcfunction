##判断是否含函数

scoreboard players set #tal.maths.integrate.num3 tal.input 0

execute store result score #tal.maths.integrate.num tal.input run data get storage t_algorithm_lib:maths integrate.temp.list2
execute store result score #tal.maths.integrate.num2 tal.input run data modify storage t_algorithm_lib:maths integrate.temp.list2[] set from storage t_algorithm_lib:maths integrate.temp.fuc
##含函数
scoreboard players operation #tal.maths.integrate.num tal.input -= #tal.maths.integrate.num2 tal.input
execute if score #tal.maths.integrate.num tal.input matches 1.. run scoreboard players set #tal.maths.integrate.num3 tal.input 1