##主程序

##渲染坐标系轴 (默认为执行者的坐标)
scoreboard players set #tal.maths.graph.axis.x tal.str_parser 0
scoreboard players set #tal.maths.graph.axis.y tal.str_parser 0
scoreboard players set #tal.maths.graph.axis.z tal.str_parser 0
##原点
execute align xyz run summon area_effect_cloud ~ ~ ~ {Tags:["tal.maths.graph.origin","tal.maths.graph"],Duration:100000}
##渲染函数的实体
summon area_effect_cloud ~ ~ ~ {Tags:["tal.maths.graph.function","tal.maths.graph"],UUID:[I;0,7523,5,0],Duration:100000}


schedule function t_algorithm_lib:maths/graph/main/tick 1t replace


