##非括号下的添加模式
##区分不同的符号
##是否只为 + - 
execute if score #tal.maths.derivation.only tal.input matches 1 run function t_algorithm_lib:maths/auto_derivation/separate/symbol/add/is_only
##是否
execute if score #tal.maths.derivation.only tal.input matches 0 run function t_algorithm_lib:maths/auto_derivation/separate/symbol/add/no_only

