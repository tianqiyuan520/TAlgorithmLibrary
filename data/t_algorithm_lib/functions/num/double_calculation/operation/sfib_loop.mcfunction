



data modify storage t_algorithm_lib:num double_calculation.temp.list__ append value []
data modify storage t_algorithm_lib:num double_calculation.temp.list__[-1] append from storage t_algorithm_lib:num double_calculation.temp.list_[0]

scoreboard players add #tal.num.hpc.num3_ tal.input 1



execute if score #tal.num.hpc.num3 tal.input matches 1 run data modify storage t_algorithm_lib:num double_calculation.temp.list__ append value []
execute if score #tal.num.hpc.num3 tal.input matches 1 run data modify storage t_algorithm_lib:num double_calculation.temp.list__[-1] append value '.'


data remove storage t_algorithm_lib:num double_calculation.temp.list_[0]
scoreboard players remove #tal.num.hpc.num3 tal.input 1


execute store result score #tal.num.hpc.list_count tal.input run data get storage t_algorithm_lib:num double_calculation.temp.list_
execute if score #tal.num.hpc.list_count tal.input matches 0 if score #tal.num.hpc.num3 tal.input matches 1.. run data modify storage t_algorithm_lib:num double_calculation.temp.list_ append value 0


execute store result score #tal.num.hpc.list_count tal.input run data get storage t_algorithm_lib:num double_calculation.temp.list_


execute if score #tal.num.hpc.list_count tal.input matches 1.. unless score #tal.num.hpc.num3_ tal.input matches 100.. run function t_algorithm_lib:num/double_calculation/operation/sfib_loop
