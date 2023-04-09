# execute unless entity @e[tag=tal.a_star.return] if score #tal.a_star.limit tal.a_star.temp matches ..500 as @e[tag=tal.a_star.new] if score @s tal.a_star.temp = #tal.a_star.smallest tal.a_star.temp at @s run function t_algorithm_lib:others/find_path/a_star/2d/loop/loop_check
# tag @e remove tal.a_star.new_
execute as @e[tag=tal.a_star.new_] unless entity @e[tag=tal.a_star.return] if score #tal.a_star.limit tal.a_star.temp matches ..500 run function t_algorithm_lib:others/find_path/a_star/2d/loop/loop_check
# function t_algorithm_lib:others/find_path/a_star/2d/loop/d
