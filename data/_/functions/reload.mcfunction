##手动记录reload耗时
function t_algorithm_lib:others/time_consuming/start
reload
scoreboard players set #tal.time_consuming.output tal.input 1
function t_algorithm_lib:others/time_consuming/end
##