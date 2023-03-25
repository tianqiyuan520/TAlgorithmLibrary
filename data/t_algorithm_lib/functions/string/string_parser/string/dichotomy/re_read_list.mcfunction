
data remove storage t_algorithm_lib:string_parser char.true_char[-1]
data remove storage t_algorithm_lib:string_parser char.true_char[-1]
data remove storage t_algorithm_lib:string_parser char.true_char[-1]
function t_algorithm_lib:string/string_parser/string/dichotomy/index/reset
execute store result score #tal.str_p.list_to_string.count_ tal.str_parser run data get storage t_algorithm_lib:string_parser char.true_char
scoreboard players operation #tal.str_p.char.re_read2 tal.str_parser = #tal.str_p.list_to_string.count_ tal.str_parser
scoreboard players operation #tal.str_p.char.re_read_check tal.str_parser = #tal.str_p.list_to_string.count_ tal.str_parser
scoreboard players add #tal.str_p.char.re_read2 tal.str_parser 3
scoreboard players set #tal.str_p.char.re_read tal.str_parser 10
scoreboard players remove #tal.str_p.char.re_read_check tal.str_parser 5



# tellraw @a [{"nbt":"temp.result_last","storage":"t_algorithm_lib:string_parser","interpret":false}]

#获取元素个数

execute store result score #tal.str_p.list_to_string.count_ tal.str_parser run data get storage t_algorithm_lib:string_parser char.true_char
#同步char
data modify storage t_algorithm_lib:string_parser temp.chars set from storage t_algorithm_lib:string_parser char.true_char
data modify storage t_algorithm_lib:string_parser temp.result set value ["",""]
execute store result score #tal.str_p.list_to_string.count tal.str_parser run data get storage t_algorithm_lib:string_parser temp.chars
function t_algorithm_lib:string/string_parser/string/dichotomy/list_to_string


data modify storage t_algorithm_lib:string_parser temp.chars set from storage t_algorithm_lib:string_parser char.check
scoreboard players set #tal.str_p.list_to_string.count__ tal.str_parser 0
data modify storage t_algorithm_lib:string_parser temp.result_last2 set value '' 
function t_algorithm_lib:string/string_parser/string/dichotomy/remove_list
# tellraw @a [{"nbt":"temp.result_last2","storage":"t_algorithm_lib:string_parser","interpret":false,"color": "red"}]

# data modify storage t_algorithm_lib:string_parser temp.chars set from storage t_algorithm_lib:string_parser char.true_char
# scoreboard players set #tal.str_p.list_to_string.count__ tal.str_parser 0
# data modify storage t_algorithm_lib:string_parser temp.result_last2 set value '' 
# function t_algorithm_lib:string/string_parser/string/dichotomy/remove_list
# tellraw @a [{"nbt":"temp.result_last2","storage":"t_algorithm_lib:string_parser","interpret":false,"color": "red"}]
# tellraw @a [{"nbt":"char.true_char","storage":"t_algorithm_lib:string_parser","interpret":false,"color": "blue"}]
# tellraw @a [{"nbt":"char.check","storage":"t_algorithm_lib:string_parser","interpret":false,"color": "yellow"}]