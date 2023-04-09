##2/(2*x+1)
execute store result score #tal.num.ln.num4_ tal.input run data get storage t_algorithm_lib:num ln.list[0]
execute store result score #tal.num.ln.num4 tal.input run data get storage t_algorithm_lib:num ln.list[0]
execute store result score #tal.num.ln.num5 tal.input run data get storage t_algorithm_lib: ln.return 100000

scoreboard players set #2 tal.input 2
scoreboard players operation #tal.num.ln.num4 tal.input *= #2 tal.input
scoreboard players add #tal.num.ln.num4 tal.input 1
scoreboard players set #200000 tal.input 200000
scoreboard players operation #200000 tal.input /= #tal.num.ln.num4 tal.input

scoreboard players operation #tal.num.ln.num5 tal.input += #200000 tal.input
execute unless score #tal.num.ln.num4_ tal.input matches 0 store result storage t_algorithm_lib:num ln.return double 0.00001 run scoreboard players get #tal.num.ln.num5 tal.input

data remove storage t_algorithm_lib:num ln.list[0]

execute store result score #tal.num.ln.list_count tal.input run data get storage t_algorithm_lib:num ln.list
execute if score #tal.num.ln.list_count tal.input matches 1.. run function t_algorithm_lib:num/logarithm/ln/cal