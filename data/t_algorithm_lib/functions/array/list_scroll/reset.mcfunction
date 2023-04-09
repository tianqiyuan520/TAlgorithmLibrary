#math:list/_rephi
#获得相对转动
execute store result score #tal.array.list_scroll.temp1 tal.input store result score #tal.array.list_scroll.count tal.input if data storage t_algorithm_lib:array list_scroll.input[]
scoreboard players operation #tal.array.list_scroll.temp0 tal.input = #tal.array.list_scroll.last_phi tal.input
scoreboard players operation #tal.array.list_scroll.temp0 tal.input *= #-1 tal.input
scoreboard players operation #tal.array.list_scroll.temp0 tal.input %= #tal.array.list_scroll.count tal.input

#抄近道
scoreboard players operation #tal.array.list_scroll.temp1 tal.input /= #2 tal.input
execute if score #tal.array.list_scroll.temp0 tal.input >= #tal.array.list_scroll.temp1 tal.input run scoreboard players operation #tal.array.list_scroll.temp0 tal.input -= #tal.array.list_scroll.count tal.input

#进入转动循环
execute if score #tal.array.list_scroll.temp0 tal.input matches 1.. run function t_algorithm_lib:array/list_scroll/rot_loop0
execute if score #tal.array.list_scroll.temp0 tal.input matches ..-1 run function t_algorithm_lib:array/list_scroll/rot_loop1

#更新列表相位
scoreboard players set #tal.array.list_scroll.last_phi tal.input 0