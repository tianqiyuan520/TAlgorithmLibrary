execute in t_algorithm_lib:main store result score #tal.time_consuming.num2 tal.input run worldborder get
execute in t_algorithm_lib:main run worldborder set 59999968
# execute store result score #tal.time_consuming.result tal.input run scoreboard players operation #tal.time_consuming.num tal.input -= #tal.time_consuming.num2 tal.input
scoreboard players operation #tal.time_consuming.result tal.input = #tal.time_consuming.num tal.input
scoreboard players operation #tal.time_consuming.result tal.input -= #tal.time_consuming.num2 tal.input
execute if score #tal.time_consuming.output tal.input matches 1 run tellraw @a ["",{"text":"代码耗时: "},{"score":{"name":"#tal.time_consuming.result","objective": "tal.input"},"color": "green"},{"text": " ms"}]
