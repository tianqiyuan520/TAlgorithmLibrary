#math:list/rot_loop1
#顺时针转动
data modify storage t_algorithm_lib:array list_scroll.input prepend from storage t_algorithm_lib:array list_scroll.input[-1]
data remove storage t_algorithm_lib:array list_scroll.input[-1]
#循环迭代
scoreboard players add #tal.array.list_scroll.temp0 tal.input 1
execute if score #tal.array.list_scroll.temp0 tal.input matches ..-1 run function t_algorithm_lib:array/list_scroll/rot_loop1