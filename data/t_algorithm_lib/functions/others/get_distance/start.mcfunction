###两点欧氏距离

##[自定义输入] 坐标1
# data modify storage t_algorithm_lib:others get_distance.input.pos1 set value []
##[自定义输入] 坐标2
# data modify storage t_algorithm_lib:others get_distance.input.pos2 set value []

execute store result score #tal.get_distance.x tal.input run data get storage t_algorithm_lib:others get_distance.input.pos1[0] 1000
execute store result score #tal.get_distance.y tal.input run data get storage t_algorithm_lib:others get_distance.input.pos1[1] 1000
execute store result score #tal.get_distance.z tal.input run data get storage t_algorithm_lib:others get_distance.input.pos1[2] 1000

execute store result score #tal.get_distance.x1 tal.input run data get storage t_algorithm_lib:others get_distance.input.pos2[0] 1000
scoreboard players operation #tal.get_distance.x1 tal.input -= #tal.get_distance.x tal.input

scoreboard players operation #tal.get_distance.x1 tal.input *= #tal.get_distance.x1 tal.input
execute store result score #tal.get_distance.y1 tal.input run data get storage t_algorithm_lib:others get_distance.input.pos2[1] 1000
scoreboard players operation #tal.get_distance.y1 tal.input -= #tal.get_distance.y tal.input
scoreboard players operation #tal.get_distance.y1 tal.input *= #tal.get_distance.y1 tal.input
execute store result score #tal.get_distance.z1 tal.input run data get storage t_algorithm_lib:others get_distance.input.pos2[2] 1000
scoreboard players operation #tal.get_distance.z1 tal.input -= #tal.get_distance.z tal.input
scoreboard players operation #tal.get_distance.z1 tal.input *= #tal.get_distance.z1 tal.input
scoreboard players operation #tal.get_distance.x1 tal.input += #tal.get_distance.y1 tal.input
scoreboard players operation #tal.get_distance.x1 tal.input += #tal.get_distance.z1 tal.input

scoreboard players operation #tal.num.simple_sprt.input tal.input = #tal.get_distance.x1 tal.input
function t_algorithm_lib:num/simple_sprt/_3start
##[返回结果] double类型 数字
execute store result storage t_algorithm_lib:others get_distance.result double 0.000001 run scoreboard players get #tal.num.simple_sprt.input_ tal.input
