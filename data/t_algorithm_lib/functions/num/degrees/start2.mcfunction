###弧度制 弧度转角度 低精度
##[自定义输入]double数据 
# data modify storage t_algorithm_lib:num degrees.input set value 422
data modify storage t_algorithm_lib:num degrees.result set value 1
##
execute store result score #tal.num.degrees.num tal.input run data get storage t_algorithm_lib:num degrees.input 1000
scoreboard players set #180 tal.input 180
execute store result storage t_algorithm_lib:num degrees.input double 0.001 run scoreboard players operation #tal.num.degrees.num tal.input *= #180 tal.input

execute store result score #tal.num.degrees.num tal.input run data get storage t_algorithm_lib:num degrees.input 1
scoreboard players set #3183 tal.input 3183

execute store result storage t_algorithm_lib:num degrees.input double 0.0001 run scoreboard players operation #tal.num.degrees.num tal.input *= #3183 tal.input

data modify storage t_algorithm_lib:num degrees.result set from storage t_algorithm_lib:num degrees.input

##
data modify storage t_algorithm_lib:num degrees.input set value 3.1415926d
