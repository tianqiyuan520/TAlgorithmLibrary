#获取元素个数
data modify storage t_algorithm_lib:string_parser temp.chars set value []
data modify storage t_algorithm_lib:string_parser temp.result set value ["",""]

# data modify storage t_algorithm_lib:string_parser temp.result[0] set from storage t_algorithm_lib:string_parser temp.result_last2
# execute store result score #tal.str_p.list_to_string.count_ tal.input run data get storage t_algorithm_lib:string_parser char.true_char



# scoreboard players operation #tal.str_p.list_to_string.count_ tal.input -= #tal.str_p.char.re_read_check tal.input

# tellraw @a [{"score":{"name": "#tal.str_p.list_to_string.count_","objective": "tal.input"},"color": "blue"}]
# tellraw @a [{"score":{"name": "#tal.str_p.char.re_read_check","objective": "tal.input"},"color": "blue"}]

# execute if score #tal.str_p.list_to_string.count_ tal.input matches 0 run data modify storage t_algorithm_lib:string_parser temp.chars append value ''

# execute if score #tal.str_p.list_to_string.count_ tal.input matches 1 run data modify storage t_algorithm_lib:string_parser temp.chars append from storage t_algorithm_lib:string_parser char.true_char[-1]

# execute if score #tal.str_p.list_to_string.count_ tal.input matches 2 run data modify storage t_algorithm_lib:string_parser temp.chars append from storage t_algorithm_lib:string_parser char.true_char[-2]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 2 run data modify storage t_algorithm_lib:string_parser temp.chars append from storage t_algorithm_lib:string_parser char.true_char[-1]

# execute if score #tal.str_p.list_to_string.count_ tal.input matches 3 run data modify storage t_algorithm_lib:string_parser temp.chars append from storage t_algorithm_lib:string_parser char.true_char[-3]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 3 run data modify storage t_algorithm_lib:string_parser temp.chars append from storage t_algorithm_lib:string_parser char.true_char[-2]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 3 run data modify storage t_algorithm_lib:string_parser temp.chars append from storage t_algorithm_lib:string_parser char.true_char[-1]

# execute if score #tal.str_p.list_to_string.count_ tal.input matches 4 run data modify storage t_algorithm_lib:string_parser temp.chars append from storage t_algorithm_lib:string_parser char.true_char[-4]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 4 run data modify storage t_algorithm_lib:string_parser temp.chars append from storage t_algorithm_lib:string_parser char.true_char[-3]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 4 run data modify storage t_algorithm_lib:string_parser temp.chars append from storage t_algorithm_lib:string_parser char.true_char[-2]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 4 run data modify storage t_algorithm_lib:string_parser temp.chars append from storage t_algorithm_lib:string_parser char.true_char[-1]

# execute if score #tal.str_p.list_to_string.count_ tal.input matches 5 run data modify storage t_algorithm_lib:string_parser temp.chars append from storage t_algorithm_lib:string_parser char.true_char[-5]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 5 run data modify storage t_algorithm_lib:string_parser temp.chars append from storage t_algorithm_lib:string_parser char.true_char[-4]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 5 run data modify storage t_algorithm_lib:string_parser temp.chars append from storage t_algorithm_lib:string_parser char.true_char[-3]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 5 run data modify storage t_algorithm_lib:string_parser temp.chars append from storage t_algorithm_lib:string_parser char.true_char[-2]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 5 run data modify storage t_algorithm_lib:string_parser temp.chars append from storage t_algorithm_lib:string_parser char.true_char[-1]
# tellraw @a [{"nbt":"char.check","storage":"t_algorithm_lib:string_parser","interpret":false,"color": "yellow"}]
# tellraw @a [{"nbt":"char.true_char","storage":"t_algorithm_lib:string_parser","interpret":false,"color": "blue"}]
# tellraw @a [{"nbt":"temp.result_last2","storage":"t_algorithm_lib:string_parser","interpret":false,"color": "red"}]

#同步char
# data modify storage t_algorithm_lib:string_parser temp.chars set from storage t_algorithm_lib:string_parser char.check


execute store result score #tal.str_p.list_to_string.count tal.input run data get storage t_algorithm_lib:string_parser temp.chars
execute store result score #tal.str_p.list_to_string.count_ tal.input run data get storage t_algorithm_lib:string_parser char.check


# execute store result score #tal.str_p.list_to_string.count_ tal.input run data get storage t_algorithm_lib:string_parser char.true_char
#同步char
data modify storage t_algorithm_lib:string_parser temp.chars set from storage t_algorithm_lib:string_parser char.check
data modify storage t_algorithm_lib:string_parser temp.chars2 set value []

scoreboard players set #tal.str_p.list_to_string.count__ tal.input 0
# data modify storage t_algorithm_lib:string_parser temp.result_last2 set value '' 
function t_algorithm_lib:string/string_parser/string/dichotomy/remove_list2
data modify storage t_algorithm_lib:string_parser temp.chars set from storage t_algorithm_lib:string_parser temp.chars2

execute store result score #tal.str_p.list_to_string.count___ tal.input run data get storage t_algorithm_lib:string_parser temp.chars



#判断 1为失败 0为成功
# execute store success score #tal.str_p.array.IsFail tal.input run data modify storage t_algorithm_lib:string_parser temp.result_last3 set from storage t_algorithm_lib:string_parser temp.result_last2
# execute if score #tal.str_p.array.IsFail tal.input matches 1 run tellraw @a [{"score":{"name": "#tal.str_p.char.test","objective": "tal.input"},"color": "blue"}]
# execute if score #tal.str_p.array.IsFail tal.input matches 1 run tellraw @a [{"nbt":"temp.result_last2","storage":"t_algorithm_lib:string_parser","interpret":false,"color": "blue"}]

# data modify storage t_algorithm_lib:string_parser temp.chars set from storage t_algorithm_lib:string_parser char.true_char
# tellraw @a [{"nbt":"temp.chars","storage":"t_algorithm_lib:string_parser","interpret":false,"color": "blue"}]

data modify storage t_algorithm_lib:string_parser temp.result set value ["",""]
data modify storage t_algorithm_lib:string_parser temp.result[0] set from storage t_algorithm_lib:string_parser temp.result_last2
execute store result score #tal.str_p.list_to_string.count tal.input run data get storage t_algorithm_lib:string_parser temp.chars
# function t_algorithm_lib:string/string_parser/string/dichotomy/list_to_string

# data modify storage t_algorithm_lib:string_parser temp.result set value ["",""]
execute store result score #tal.str_p.list_to_string.count tal.input run data get storage t_algorithm_lib:string_parser temp.chars

function t_algorithm_lib:string/string_parser/string/dichotomy/test
scoreboard players set #tal.str_p.char.test tal.input 1

# data modify block -30000000 4 2022228 Text3 set value '[{"nbt":"temp.result_last2","storage":"t_algorithm_lib:string_parser","interpret":true},{"nbt":"temp.result[0]","storage":"t_algorithm_lib:string_parser","interpret":true}]'
# execute if score #tal.str_p.list_to_string.count___ tal.input matches 0 run data modify block -30000000 4 2022228 Text3 set value '[{"nbt":"temp.result_last2","storage":"t_algorithm_lib:string_parser","interpret":true}]'
# tellraw @a [{"nbt":"char.check","storage":"t_algorithm_lib:string_parser","interpret":false,"color": "yellow"}]
# tellraw @a [{"nbt":"temp.result_last2","storage":"t_algorithm_lib:string_parser","interpret":false,"color": "red"}]
# tellraw @a [{"nbt":"char.true_char","storage":"t_algorithm_lib:string_parser","interpret":false,"color": "blue"}]

