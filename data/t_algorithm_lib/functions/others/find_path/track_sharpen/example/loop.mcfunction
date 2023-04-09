execute as @e[tag=tal.track_sharpen.entity1] at @s if entity @e[tag=tal.track_sharpen.entity2] run tp ^ ^ ^0.2
execute as @e[tag=tal.track_sharpen.entity1] at @s if entity @e[tag=tal.track_sharpen.entity2] run particle end_rod ~ ~ ~ 0 0 0 0 10 force @a
function t_algorithm_lib:others/find_path/track_sharpen/start
schedule function t_algorithm_lib:others/find_path/track_sharpen/example/loop 1t append