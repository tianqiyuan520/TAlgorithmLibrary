
##判断是否换行
data modify storage t_algorithm_lib:string_parser temp.isChar set value "\\n"
#判断 1为失败 0为成功
execute store success score #tal.str_p.array.IsFail tal.input run data modify storage t_algorithm_lib:string_parser temp.isChar set from storage t_algorithm_lib:string_parser temp.chars[0]

#默认

data modify block -30000000 4 2022228 Text3 set value '[{"nbt":"temp.result_last2","storage":"t_algorithm_lib:string_parser","interpret":true},{"nbt":"temp.chars[0]","storage":"t_algorithm_lib:string_parser"}]'
execute if score #tal.sign_version tal.input matches 2 run data modify block -30000000 4 2022228 front_text.messages[2] set value '[{"nbt":"temp.result_last2","storage":"t_algorithm_lib:string_parser","interpret":true},{"nbt":"temp.chars[0]","storage":"t_algorithm_lib:string_parser"}]'
execute if score #tal.str_p.array.IsFail tal.input matches 0 run data modify block -30000000 4 2022228 Text3 set value '[{"nbt":"temp.result_last2","storage":"t_algorithm_lib:string_parser","interpret":true},{"text":"\\n"}]'
execute if score #tal.sign_version tal.input matches 2 run execute if score #tal.str_p.array.IsFail tal.input matches 0 run data modify block -30000000 4 2022228 front_text.messages[2] set value '[{"nbt":"temp.result_last2","storage":"t_algorithm_lib:string_parser","interpret":true},{"text":"\\n"}]'







data modify storage t_algorithm_lib:string_parser temp.result_last2 set from block -30000000 4 2022228 Text3




data remove storage t_algorithm_lib:string_parser temp.chars[0]





scoreboard players add #tal.str_p.list_to_string.count__ tal.input 1
execute store result score #tal.str_p.list_to_string.count tal.input run data get storage t_algorithm_lib:string_parser temp.chars

execute unless score #tal.str_p.char.re_read_check tal.input <= #tal.str_p.list_to_string.count__ tal.input if score #tal.str_p.list_to_string.count tal.input matches 1.. run function t_algorithm_lib:string/string_parser/string/dichotomy/remove_list