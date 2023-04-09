scoreboard players set #tal.time_consuming.output tal.input 0
execute in t_algorithm_lib:main run worldborder set 59999968
function t_algorithm_lib:others/time_consuming/start

execute if score #tal.reload_time tal.input matches 1 run schedule function t_algorithm_lib:others/reload_time/tick 1t replace
