###简易轨道锐化
##实体1 跟踪 实体2
execute as @e[limit=1,tag=tal.track_sharpen.entity1] at @s if entity @e[tag=tal.track_sharpen.entity2] run function t_algorithm_lib:others/find_path/track_sharpen/r

