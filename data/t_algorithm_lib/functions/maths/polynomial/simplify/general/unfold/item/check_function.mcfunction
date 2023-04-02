scoreboard players set #tal.maths.polynomial.function tal.input 0
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[-2][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"^"} run scoreboard players add #tal.maths.polynomial.function tal.input 1
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[1][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"cos("} run scoreboard players add #tal.maths.polynomial.function tal.input 1
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"sin("} run scoreboard players add #tal.maths.polynomial.function tal.input 1
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"tan("} run scoreboard players add #tal.maths.polynomial.function tal.input 1
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"ln("} run scoreboard players add #tal.maths.polynomial.function tal.input 1
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"log("} run scoreboard players add #tal.maths.polynomial.function tal.input 1

execute if score #tal.maths.polynomial.function tal.input matches 2 run function t_algorithm_lib:maths/polynomial/simplify/general/unfold/item/add_func