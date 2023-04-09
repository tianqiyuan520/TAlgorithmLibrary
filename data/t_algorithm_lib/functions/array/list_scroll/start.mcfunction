###列表滚动
##根据连续的index相对转动列表，是连续（无规律）取值算法
##来源 math2.0（数学库）（作者：小豆8593） 
##[自定义输入] 数组
#data modify storage t_algorithm_lib:array list_scroll.input set value []
##[自定义输入] 指针
# scoreboard players set #tal.array.list_scroll.inp tal.input 0
##初次调用请 scoreboard players set #tal.array.list_scroll.last_phi tal.input 0
##例如:
##获取 数组A 指针7,1的值
#data modify storage t_algorithm_lib:array list_scroll.input set from A
##scoreboard players set #tal.array.list_scroll.last_phi tal.input 0
#scoreboard players set #tal.array.list_scroll.inp tal.input 7
#function t_algorithm_lib:array/list_scroll/start
#data get storage t_algorithm_lib:array list_scroll.input[0]
#scoreboard players set #tal.array.list_scroll.inp tal.input 1
#function t_algorithm_lib:array/list_scroll/start
#data get storage t_algorithm_lib:array list_scroll.input[0]
#重置
#function t_algorithm_lib:array/list_scroll/reset

##
#获得相对转动
execute store result score #tal.array.list_scroll.temp1 tal.input store result score #tal.array.list_scroll.count tal.input if data storage t_algorithm_lib:array list_scroll.input[]
scoreboard players operation #tal.array.list_scroll.temp0 tal.input = #tal.array.list_scroll.inp tal.input
scoreboard players operation #tal.array.list_scroll.temp0 tal.input -= #tal.array.list_scroll.last_phi tal.input
scoreboard players operation #tal.array.list_scroll.temp0 tal.input %= #tal.array.list_scroll.count tal.input

#抄近道
scoreboard players operation #tal.array.list_scroll.temp1 tal.input /= #2 tal.input
execute if score #tal.array.list_scroll.temp0 tal.input >= #tal.array.list_scroll.temp1 tal.input run scoreboard players operation #tal.array.list_scroll.temp0 tal.input -= #tal.array.list_scroll.count tal.input

#进入转动循环
execute if score #tal.array.list_scroll.temp0 tal.input matches 1.. run function t_algorithm_lib:array/list_scroll/rot_loop0
execute if score #tal.array.list_scroll.temp0 tal.input matches ..-1 run function t_algorithm_lib:array/list_scroll/rot_loop1

#更新列表相位
scoreboard players operation #tal.array.list_scroll.last_phi tal.input = #tal.array.list_scroll.inp tal.input