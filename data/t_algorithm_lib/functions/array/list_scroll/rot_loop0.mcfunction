
#逆时针转动
data modify storage t_algorithm_lib:array list_scroll.input append from storage t_algorithm_lib:array list_scroll.input[0]
data remove storage t_algorithm_lib:array list_scroll.input[0]
#循环迭代
scoreboard players remove #tal.array.list_scroll.temp0 tal.input 1
execute if score #tal.array.list_scroll.temp0 tal.input matches 1.. run function t_algorithm_lib:array/list_scroll/rot_loop0