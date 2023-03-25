##初步 分离数据
scoreboard players set #tal.maths.integrate.main.is_return tal.str_parser 0

data modify storage t_algorithm_lib:maths integrate.temp.data set from storage t_algorithm_lib:maths integrate.main.this_data
function t_algorithm_lib:maths/integrate/indefinite_integral/separate/symbol/start
data modify storage t_algorithm_lib:maths integrate.main.new_data set from storage t_algorithm_lib:maths integrate.temp.data2
data modify storage t_algorithm_lib:maths integrate.main.per set from storage t_algorithm_lib:maths integrate.temp.per

##per判断
execute store result score #tal.maths.integrate.main.count tal.str_parser run data get storage t_algorithm_lib:maths integrate.main.per

execute if score #tal.maths.integrate.main.count tal.str_parser matches 0 run function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/1/start
execute store result score #tal.maths.integrate.main.count tal.str_parser run data get storage t_algorithm_lib:maths integrate.main.per

execute if score #tal.maths.integrate.main.count tal.str_parser matches 2.. run function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/2/start
execute store result score #tal.maths.integrate.main.count tal.str_parser run data get storage t_algorithm_lib:maths integrate.main.per

execute if score #tal.maths.integrate.main.count tal.str_parser matches 0 run function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/3/start
execute store result score #tal.maths.integrate.main.count tal.str_parser run data get storage t_algorithm_lib:maths integrate.main.per

execute if score #tal.maths.integrate.main.count tal.str_parser matches 1.. run function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/4/start
