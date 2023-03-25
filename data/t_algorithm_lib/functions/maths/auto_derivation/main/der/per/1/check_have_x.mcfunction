##判断是否含x
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.list2[0]
scoreboard players set #tal.maths.derivation.main.c-s tal.str_parser 0

data modify storage t_algorithm_lib:maths auto_derivation.temp.check_variable set from storage t_algorithm_lib:maths auto_derivation.temp.list2[0][0]
execute store success score #tal.maths.derivation.check_variable tal.str_parser run data modify storage t_algorithm_lib:maths auto_derivation.temp.check_variable set from storage t_algorithm_lib:maths auto_derivation.variable
##是自变量
execute if score #tal.maths.derivation.check_variable tal.str_parser matches 0 if score #tal.maths.derivation.main.c-t tal.str_parser matches 0 run scoreboard players set #tal.maths.derivation.main.c-s tal.str_parser 1

# execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:['x']} if score #tal.maths.derivation.main.c-t tal.str_parser matches 0 run scoreboard players set #tal.maths.derivation.main.c-s tal.str_parser 1


data remove storage t_algorithm_lib:maths auto_derivation.temp.list2[0]
execute store result score #tal.maths.derivation.list_count tal.str_parser run data get storage t_algorithm_lib:maths auto_derivation.temp.list2
execute if score #tal.maths.derivation.list_count tal.str_parser matches 1.. if score #tal.maths.derivation.main.c-s tal.str_parser matches 0 run function t_algorithm_lib:maths/auto_derivation/main/der/per/1/check_have_x