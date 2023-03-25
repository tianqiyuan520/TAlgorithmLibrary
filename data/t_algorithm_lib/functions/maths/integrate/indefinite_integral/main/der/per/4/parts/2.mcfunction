data modify storage t_algorithm_lib:maths integrate.temp.fuc set value "^"
data modify storage t_algorithm_lib:maths integrate.temp.list2 set from storage t_algorithm_lib:maths integrate.main.new_data[2]
function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/4/parts/hava_func
execute if score #tal.maths.integrate.num3 tal.str_parser matches 1 run scoreboard players set #tal.maths.integrate.symbol2 tal.str_parser 3
# data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.main.new_data[2]
# execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:[['x']]} run scoreboard players set #tal.maths.integrate.symbol2 tal.str_parser 3
##
data modify storage t_algorithm_lib:maths integrate.temp.fuc set value "sin("
data modify storage t_algorithm_lib:maths integrate.temp.list2 set from storage t_algorithm_lib:maths integrate.main.new_data[2]
execute if score #tal.maths.integrate.symbol2 tal.str_parser matches 0 run function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/4/parts/hava_func
execute if score #tal.maths.integrate.symbol2 tal.str_parser matches 0 if score #tal.maths.integrate.num3 tal.str_parser matches 1 run scoreboard players set #tal.maths.integrate.symbol2 tal.str_parser 1
##
data modify storage t_algorithm_lib:maths integrate.temp.fuc set value "cos("
data modify storage t_algorithm_lib:maths integrate.temp.list2 set from storage t_algorithm_lib:maths integrate.main.new_data[2]
execute if score #tal.maths.integrate.symbol2 tal.str_parser matches 0 run function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/4/parts/hava_func
execute if score #tal.maths.integrate.symbol2 tal.str_parser matches 0 if score #tal.maths.integrate.num3 tal.str_parser matches 1 run scoreboard players set #tal.maths.integrate.symbol2 tal.str_parser 1