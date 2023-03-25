execute in t_algorithm_lib:main store result score #tal.time_consuming.num2 tal.str_parser run worldborder get
execute in t_algorithm_lib:main run worldborder set 60000000
# execute store result score #tal.time_consuming.result tal.str_parser run scoreboard players operation #tal.time_consuming.num tal.str_parser -= #tal.time_consuming.num2 tal.str_parser
scoreboard players operation #tal.time_consuming.result tal.str_parser = #tal.time_consuming.num tal.str_parser
scoreboard players operation #tal.time_consuming.result tal.str_parser -= #tal.time_consuming.num2 tal.str_parser
execute if score #tal.time_consuming.output tal.str_parser matches 1 run tellraw @a ["",{"text":"代码耗时: "},{"score":{"name":"#tal.time_consuming.result","objective": "tal.str_parser"},"color": "green"},{"text": " ms"}]
