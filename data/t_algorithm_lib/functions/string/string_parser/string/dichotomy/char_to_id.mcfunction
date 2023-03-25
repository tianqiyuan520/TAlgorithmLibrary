scoreboard players remove #tal.str_p.char_to_id.count tal.str_parser 1
data modify storage t_algorithm_lib:string_parser temp.char_to_id.FakeChar set from storage t_algorithm_lib:string_parser temp.char_to_id.char

#判断 1为失败 0为成功
execute store success score #tal.str_p.char_to_id.IsFail tal.str_parser run data modify storage t_algorithm_lib:string_parser temp.char_to_id.FakeChar set from storage t_algorithm_lib:string_parser temp.char_to_id.chars[0]
data remove storage t_algorithm_lib:string_parser temp.char_to_id.chars[0]

data modify storage t_algorithm_lib:string_parser temp.char_to_id.result[0] set from block -29999999 4 2022228 Text3


#递归
execute unless score #tal.str_p.char_to_id.IsFail tal.str_parser matches 0 if score #tal.str_p.char_to_id.count tal.str_parser matches 1.. run function t_algorithm_lib:string/string_parser/string/dichotomy/char_to_id