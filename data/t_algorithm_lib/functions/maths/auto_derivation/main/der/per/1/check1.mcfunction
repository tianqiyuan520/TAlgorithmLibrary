##判断  数字,自变量,函数
execute store result score #tal.maths.derivation.main.count tal.input run data get storage t_algorithm_lib:maths auto_derivation.main.new_data[0]
##为数字或自变量
execute if score #tal.maths.derivation.main.count tal.input matches 1 run function t_algorithm_lib:maths/auto_derivation/main/der/per/1/check_is_num

##为函数
execute if score #tal.maths.derivation.main.count tal.input matches 2.. run function t_algorithm_lib:maths/auto_derivation/main/der/per/1/is_function
