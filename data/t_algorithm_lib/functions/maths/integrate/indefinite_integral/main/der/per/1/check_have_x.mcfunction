##判断是否含x
data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.temp.list2[0]
scoreboard players set #tal.maths.integrate.main.c-s tal.input 0

execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:['x']} if score #tal.maths.integrate.main.c-t tal.input matches 0 run scoreboard players set #tal.maths.integrate.main.c-s tal.input 1


data remove storage t_algorithm_lib:maths integrate.temp.list2[0]
execute store result score #tal.maths.integrate.list_count tal.input run data get storage t_algorithm_lib:maths integrate.temp.list2
execute if score #tal.maths.integrate.list_count tal.input matches 1.. if score #tal.maths.integrate.main.c-s tal.input matches 0 run function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/1/check_have_x