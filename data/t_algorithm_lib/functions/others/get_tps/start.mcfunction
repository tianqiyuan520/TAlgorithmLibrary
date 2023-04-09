###获取tps
##[返回结果]tps Double类型
data modify storage t_algorithm_lib:others get_tps.result set value 0.0
scoreboard players set #tal.time_consuming.output tal.input 0
function t_algorithm_lib:others/time_consuming/start
schedule function t_algorithm_lib:others/get_tps/end 20t replace