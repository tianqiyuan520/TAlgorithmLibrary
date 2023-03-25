##除法
execute store result score #tal.maths.calculator.num_ tal.str_parser run data get storage t_algorithm_lib:maths calculator.main.stack[-1][1][-2][0] 1000
execute store result score #tal.maths.calculator.num tal.str_parser run data get storage t_algorithm_lib:maths calculator.main.stack[-1][1][-2][0] 1000
execute store result score #tal.maths.calculator.num2 tal.str_parser run data get storage t_algorithm_lib:maths calculator.main.stack[-1][1][-1][0] 1000
scoreboard players set #1000 tal.str_parser 1000
#取余
scoreboard players operation #tal.maths.calculator.num_ tal.str_parser %= #tal.maths.calculator.num2 tal.str_parser
scoreboard players operation #tal.maths.calculator.num_ tal.str_parser *= #1000 tal.str_parser
#cal
scoreboard players operation #tal.maths.calculator.num tal.str_parser /= #tal.maths.calculator.num2 tal.str_parser
scoreboard players operation #tal.maths.calculator.num_ tal.str_parser /= #tal.maths.calculator.num2 tal.str_parser
scoreboard players operation #tal.maths.calculator.num tal.str_parser *= #1000 tal.str_parser
scoreboard players operation #tal.maths.calculator.num tal.str_parser += #tal.maths.calculator.num_ tal.str_parser

execute store result storage t_algorithm_lib:maths calculator.main.stack[-1][1][-2][] double 0.001 run scoreboard players get #tal.maths.calculator.num tal.str_parser
