#理论基础
#data modify block -66 4 33 Text4 set value '[{"nbt":"chars[0]","storage":"minecraft:test","interpret":true},{"nbt":"chars[1]","storage":"minecraft:test"}]'
#data modify storage test chars[0] set from block -66 4 33 Text4

# scoreboard players remove #tal.str_p.list_to_string.count tal.str_parser 1

data modify storage t_algorithm_lib:string_parser temp.result[1] set from storage t_algorithm_lib:string_parser temp.chars[0]
data remove storage t_algorithm_lib:string_parser temp.chars[0]

##判断是否换行
data modify storage t_algorithm_lib:string_parser temp.isChar set value "\\n"
#判断 1为失败 0为成功
execute store success score #tal.str_p.array.IsFail tal.str_parser run data modify storage t_algorithm_lib:string_parser temp.isChar set from storage t_algorithm_lib:string_parser temp.result[1]

execute store result score #tal.str_p.list_to_string.count tal.str_parser run data get storage t_algorithm_lib:string_parser temp.chars

#默认

data modify block -30000000 4 2022228 Text3 set value '[{"nbt":"temp.result[0]","storage":"t_algorithm_lib:string_parser","interpret":true},{"nbt":"temp.result[1]","storage":"t_algorithm_lib:string_parser"}]'
execute if score #tal.str_p.array.IsFail tal.str_parser matches 0 run data modify block -30000000 4 2022228 Text3 set value '[{"nbt":"temp.result[0]","storage":"t_algorithm_lib:string_parser","interpret":true},{"text":"\\n"}]'


execute if score #tal.str_p.list_to_string.count_last tal.str_parser < #tal.str_p.list_to_string.count_ tal.str_parser if score #tal.str_p.list_to_string.count_ tal.str_parser matches 2.. if score #tal.str_p.list_to_string.count tal.str_parser matches 2 run data modify storage t_algorithm_lib:string_parser temp.result_last set from storage t_algorithm_lib:string_parser temp.result[0]
execute store result score #tal.str_p.list_to_string.count tal.str_parser run data get storage t_algorithm_lib:string_parser temp.chars
data modify storage t_algorithm_lib:string_parser temp.result[0] set from block -30000000 4 2022228 Text3


# execute if score #tal.str_p.list_to_string.count tal.str_parser matches 1.. run function t_algorithm_lib:string/string_parser/string/dichotomy/list_to_string_2
#递归
execute store result score #tal.str_p.list_to_string.count tal.str_parser run data get storage t_algorithm_lib:string_parser temp.chars

execute if score #tal.str_p.list_to_string.count tal.str_parser matches 1.. run function t_algorithm_lib:string/string_parser/string/dichotomy/test