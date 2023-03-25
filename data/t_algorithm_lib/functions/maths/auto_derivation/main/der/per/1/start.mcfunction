##等于0，复查
scoreboard players set #tal.maths.derivation.check_power tal.str_parser 1
data modify storage t_algorithm_lib:maths auto_derivation.temp.data set from storage t_algorithm_lib:maths auto_derivation.main.this_data
function t_algorithm_lib:maths/auto_derivation/separate/symbol/start

data modify storage t_algorithm_lib:maths auto_derivation.main.new_data set from storage t_algorithm_lib:maths auto_derivation.temp.data2
data modify storage t_algorithm_lib:maths auto_derivation.main.per set from storage t_algorithm_lib:maths auto_derivation.temp.per

##仍等于0，则意味着大概率无连接符号
execute store result score #tal.maths.derivation.main.count tal.str_parser run data get storage t_algorithm_lib:maths auto_derivation.main.per
execute if score #tal.maths.derivation.main.count tal.str_parser matches 0 if data storage t_algorithm_lib:maths auto_derivation.main.new_data[0][0][0] run function t_algorithm_lib:maths/auto_derivation/main/der/per/1/check1
