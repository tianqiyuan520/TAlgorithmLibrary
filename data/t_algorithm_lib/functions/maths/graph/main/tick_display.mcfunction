#渲染
#函数
execute as @e[type=area_effect_cloud,tag=tal.maths.graph.origin] at @s run function t_algorithm_lib:maths/graph/display/start


# execute as @e[type=area_effect_cloud,tag=tal.maths.graph.origin] at @s run schedule function t_algorithm_lib:maths/graph/main/tick_display 2s replace