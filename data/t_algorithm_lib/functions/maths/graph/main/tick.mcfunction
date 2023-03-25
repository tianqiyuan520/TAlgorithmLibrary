#坐标轴
execute as @e[type=area_effect_cloud,tag=tal.maths.graph.origin] at @s run particle dust 1 0 0 0.4 ~ ~ ~ 5 0 0 0 800 force
execute as @e[type=area_effect_cloud,tag=tal.maths.graph.origin] at @s run particle dust 0 1 0.051 0.4 ~ ~ ~ 0 5 0 0 800 force
execute as @e[type=area_effect_cloud,tag=tal.maths.graph.origin] at @s run particle dust 0 0.235 1 0.4 ~ ~ ~ 0 0 5 0 800 force
# execute as @e[type=area_effect_cloud,tag=tal.maths.graph.origin] at @s run particle end_rod ~ ~ ~ 5 0 0 0 80 force
# execute as @e[type=area_effect_cloud,tag=tal.maths.graph.origin] at @s run particle end_rod ~ ~ ~ 0 5 0 0 80 force
# execute as @e[type=area_effect_cloud,tag=tal.maths.graph.origin] at @s run particle end_rod ~ ~ ~ 0 0 5 0 80 force

execute as @e[type=area_effect_cloud,tag=tal.maths.graph.origin] at @s run schedule function t_algorithm_lib:maths/graph/main/tick 1t replace