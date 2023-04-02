###斐波那契数列
##[0,1,1,2,3,5,...]

#数组
data modify storage t_algorithm_lib:others fibonacci_sequence set value {list:[1,1],return:1}
##参数 获取第几位的斐波那契数 >=2
# scoreboard players set #tal.fibonacci_sequence.index tal.input 5
execute if score #tal.fibonacci_sequence.index tal.input matches 1..2 run data modify storage t_algorithm_lib:others fibonacci_sequence.return set value 0

scoreboard players remove #tal.fibonacci_sequence.index tal.input 2

scoreboard players set #tal.fibonacci_sequence.num1 tal.input 0
scoreboard players set #tal.fibonacci_sequence.num2 tal.input 0

execute if score #tal.fibonacci_sequence.index tal.input matches 1.. run function t_algorithm_lib:others/tools/fibonacci_sequence/loop


scoreboard players set #tal.fibonacci_sequence.index tal.input 5