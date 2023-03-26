###定积分
##采用 蒙特卡洛法

##[自定义输入]表达式
# data modify storage t_algorithm_lib:maths integrate.input set value [['x'],['^'],[2]]

##[自定义输入]x的取值 min
# data modify storage t_algorithm_lib:maths integrate.x.min set value 0.5d
##[自定义输入]x的取值 max
# data modify storage t_algorithm_lib:maths integrate.x.max set value 1.0d


##[自定义输入]采样次数
# scoreboard players set #tal.maths.integrate.samples tal.str_parser 300
scoreboard players operation #tal.maths.integrate.samples_ tal.str_parser = #tal.maths.integrate.samples tal.str_parser
##每隔16下，换tick
scoreboard players set #tal.maths.integrate.time tal.str_parser 16
##[自定义输入]是否提醒 运算结束
# scoreboard players set #tal.maths.integrate.remind tal.str_parser 1

data modify storage t_algorithm_lib:maths integrate.sum set value 0.0d

data modify storage t_algorithm_lib:maths integrate.distance set value 0.0d

execute store result score #tal.maths.integrate.distance tal.str_parser run data get storage t_algorithm_lib:maths integrate.x.max 1000
execute store result score #tal.maths.integrate.min tal.str_parser run data get storage t_algorithm_lib:maths integrate.x.min 1000
execute store result storage t_algorithm_lib:maths integrate.distance double 0.001 run scoreboard players operation #tal.maths.integrate.distance tal.str_parser -= #tal.maths.integrate.min tal.str_parser

##循环采样
execute if score #tal.maths.integrate.samples_ tal.str_parser matches 1.. run function t_algorithm_lib:maths/integrate/definite_integral/loop