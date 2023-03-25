##获取该符号优先级
execute if score #tal.maths.calculator.symbol tal.str_parser matches 1 run scoreboard players set #tal.maths.calculator.symbol_ tal.str_parser 999
execute if score #tal.maths.calculator.symbol tal.str_parser matches 2 run scoreboard players set #tal.maths.calculator.symbol_ tal.str_parser 1
execute if score #tal.maths.calculator.symbol tal.str_parser matches 3 run scoreboard players set #tal.maths.calculator.symbol_ tal.str_parser 2
execute if score #tal.maths.calculator.symbol tal.str_parser matches 4 run scoreboard players set #tal.maths.calculator.symbol_ tal.str_parser 3