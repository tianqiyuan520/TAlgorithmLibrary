#理论基础
#data modify block -66 4 33 Text4 set value '[{"nbt":"chars[0]","storage":"minecraft:test","interpret":true},{"nbt":"chars[1]","storage":"minecraft:test"}]'
#data modify storage test chars[0] set from block -66 4 33 Text4

# scoreboard players remove #tal.str_p.list_to_string.count tal.input 1

data modify storage t_algorithm_lib:string_parser temp.result[1] set from storage t_algorithm_lib:string_parser temp.chars[0]
data remove storage t_algorithm_lib:string_parser temp.chars[0]

##判断是否换行
data modify storage t_algorithm_lib:string_parser temp.isChar set value "\\n"
#判断 1为失败 0为成功
execute store success score #tal.str_p.array.IsFail tal.input run data modify storage t_algorithm_lib:string_parser temp.isChar set from storage t_algorithm_lib:string_parser temp.result[1]

execute store result score #tal.str_p.list_to_string.count tal.input run data get storage t_algorithm_lib:string_parser temp.chars

#默认

data modify block -30000000 4 2022228 Text3 set value '[{"nbt":"temp.result[0]","storage":"t_algorithm_lib:string_parser","interpret":true},{"nbt":"temp.result[1]","storage":"t_algorithm_lib:string_parser"}]'
execute if score #tal.sign_version tal.input matches 2 run data modify block -30000000 4 2022228 front_text.messages[2] set value '[{"nbt":"temp.result[0]","storage":"t_algorithm_lib:string_parser","interpret":true},{"nbt":"temp.result[1]","storage":"t_algorithm_lib:string_parser"}]'
execute if score #tal.str_p.array.IsFail tal.input matches 0 run data modify block -30000000 4 2022228 Text3 set value '[{"nbt":"temp.result[0]","storage":"t_algorithm_lib:string_parser","interpret":true},{"text":"\\n"}]'
execute if score #tal.sign_version tal.input matches 2 run execute if score #tal.str_p.array.IsFail tal.input matches 0 run data modify block -30000000 4 2022228 front_text.messages[2] set value '[{"nbt":"temp.result[0]","storage":"t_algorithm_lib:string_parser","interpret":true},{"text":"\\n"}]'


# execute if score #tal.str_p.list_to_string.count_last tal.input < #tal.str_p.list_to_string.count_ tal.input if score #tal.str_p.list_to_string.count_ tal.input matches 2.. if score #tal.str_p.list_to_string.count tal.input matches 2 run scoreboard players operation #tal.str_p.list_to_string.count_last_ tal.input = #tal.str_p.list_to_string.count_ tal.input
# execute if score #tal.str_p.list_to_string.count_last tal.input < #tal.str_p.list_to_string.count_ tal.input if score #tal.str_p.list_to_string.count_ tal.input matches 2.. if score #tal.str_p.list_to_string.count tal.input matches 2 run scoreboard players add #tal.str_p.list_to_string.count_last_ tal.input 1

execute store result score #tal.str_p.list_to_string.count tal.input run data get storage t_algorithm_lib:string_parser temp.chars

data modify storage t_algorithm_lib:string_parser temp.result[0] set from block -30000000 4 2022228 Text3
execute if score #tal.sign_version tal.input matches 2 run data modify storage t_algorithm_lib:string_parser temp.result[0] set from block -30000000 4 2022228 front_text.messages[2]

execute if score #tal.str_p.list_to_string.count_last tal.input < #tal.str_p.list_to_string.count_ tal.input if score #tal.str_p.list_to_string.count_ tal.input matches 3.. if score #tal.str_p.list_to_string.count tal.input matches 3 run data modify storage t_algorithm_lib:string_parser temp.result_last set from storage t_algorithm_lib:string_parser temp.result[0]


# data modify storage t_algorithm_lib:string_parser temp.result_last2 set from storage t_algorithm_lib:string_parser temp.result[0]

# execute if score #tal.str_p.list_to_string.count tal.input matches 1.. run function t_algorithm_lib:string/string_parser/string/dichotomy/list_to_string_2
#递归
execute if score #tal.str_p.list_to_string.count tal.input matches 1.. run function t_algorithm_lib:string/string_parser/string/dichotomy/list_to_string