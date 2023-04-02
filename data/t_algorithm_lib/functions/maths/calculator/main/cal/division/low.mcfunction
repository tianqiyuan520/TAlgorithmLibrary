##除法
execute store result score #tal.maths.calculator.num_ tal.input run data get storage t_algorithm_lib:maths calculator.main.stack[-1][1][-2][0] 1000
execute store result score #tal.maths.calculator.num tal.input run data get storage t_algorithm_lib:maths calculator.main.stack[-1][1][-2][0] 1000
execute store result score #tal.maths.calculator.num2 tal.input run data get storage t_algorithm_lib:maths calculator.main.stack[-1][1][-1][0] 1000
scoreboard players set #1000 tal.input 1000
#取余
scoreboard players operation #tal.maths.calculator.num_ tal.input %= #tal.maths.calculator.num2 tal.input
scoreboard players operation #tal.maths.calculator.num_ tal.input *= #1000 tal.input
#cal
scoreboard players operation #tal.maths.calculator.num tal.input /= #tal.maths.calculator.num2 tal.input
scoreboard players operation #tal.maths.calculator.num_ tal.input /= #tal.maths.calculator.num2 tal.input
scoreboard players operation #tal.maths.calculator.num tal.input *= #1000 tal.input
scoreboard players operation #tal.maths.calculator.num tal.input += #tal.maths.calculator.num_ tal.input

execute store result storage t_algorithm_lib:maths calculator.main.stack[-1][1][-2][] double 0.001 run scoreboard players get #tal.maths.calculator.num tal.input
