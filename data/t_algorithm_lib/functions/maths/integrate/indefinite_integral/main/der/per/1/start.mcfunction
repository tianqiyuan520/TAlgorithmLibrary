##等于0，复查
scoreboard players set #tal.maths.integrate.check_power tal.str_parser 1
data modify storage t_algorithm_lib:maths integrate.temp.data set from storage t_algorithm_lib:maths integrate.main.this_data
function t_algorithm_lib:maths/integrate/indefinite_integral/separate/symbol/start

data modify storage t_algorithm_lib:maths integrate.main.new_data set from storage t_algorithm_lib:maths integrate.temp.data2
data modify storage t_algorithm_lib:maths integrate.main.per set from storage t_algorithm_lib:maths integrate.temp.per

##仍等于0，则意味着大概率无连接符号
execute store result score #tal.maths.integrate.main.count tal.str_parser run data get storage t_algorithm_lib:maths integrate.main.per
execute if score #tal.maths.integrate.main.count tal.str_parser matches 0 if data storage t_algorithm_lib:maths integrate.main.new_data[0][0][0] run function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/1/check1
