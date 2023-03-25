#玩家未添加过该词
####
#判断首个字符是否为 " "
# data modify storage t_algorithm_lib:string_parser temp.array.Fakeobj set value " "
#判断 1为失败 0为成功
# execute store success score #tal.str_p.array.IsFail tal.str_parser run data modify storage t_algorithm_lib:string_parser temp.array.Fakeobj set from storage t_algorithm_lib:string_parser io.output[0]
# execute if score #tal.str_p.array.IsFail tal.str_parser matches 0 run tellraw @a [{"text":"[TDictionary] ","color": "#a8a8a8"},{"text":"字符添加失败.原因: ","color": "gold"},{"text": "该字符可能个数大于1","color": "red"}]

#如果开头非 " "
execute if score #tal.str_p.array.IsFail tal.str_parser matches 1 run function t_algorithm_lib:string/string_parser/string/dichotomy/add_char/add3

