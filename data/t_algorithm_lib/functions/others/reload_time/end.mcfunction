scoreboard players set #tal.time_consuming.output tal.input 0
function t_algorithm_lib:others/time_consuming/end
tellraw @a ["",{"text":"本次reload耗时："},{"score":{"name":"#tal.time_consuming.result","objective": "tal.input"},"color": "green"},{"text": " ms"}]
