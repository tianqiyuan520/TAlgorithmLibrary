execute store result score #tal.num.hpc.division.num_pr tal.input run data get storage t_algorithm_lib:num double_calculation.division_result
scoreboard players remove #tal.num.hpc.division.num_pr tal.input 1
# tellraw @a ["第_",{"score":{"objective":"tal.input","name":"#tal.num.hpc.division_time"}},"次 被除数 ",{"nbt":"double_calculation.division.num1","storage": "t_algorithm_lib:num","color": "red"},{"nbt":"double_calculation.division.num1_","storage": "t_algorithm_lib:num","color": "blue"},"结果 ",{"nbt":"double_calculation.division_result","storage": "t_algorithm_lib:num","color":"#B8DC9C"}]
scoreboard players set #tal.num.hpc.division.num_add_p tal.input 1

scoreboard players operation #tal.num.hpc.division.num_pr tal.input += #tal.num.hpc.division.fill_t tal.input
scoreboard players operation #tal.num.hpc.division.num_pr tal.input += #tal.num.hpc.num2_p tal.input
scoreboard players operation #tal.num.hpc.division.num_pr tal.input -= #tal.num.hpc.num1_p tal.input