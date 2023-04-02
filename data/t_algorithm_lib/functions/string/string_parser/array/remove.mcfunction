#删除数组中匹配的元素
scoreboard players remove #tal.str_p.array.count tal.input 1

data modify storage t_algorithm_lib:string_parser temp.array.Fakeobj set from storage t_algorithm_lib:string_parser temp.array.obj

#判断 1为失败 0为成功
execute store success score #tal.str_p.array.IsFail tal.input run data modify storage t_algorithm_lib:string_parser temp.array.Fakeobj set from storage t_algorithm_lib:string_parser temp.array.array[0]
execute if score #tal.str_p.array.IsFail tal.input matches 1 run data modify storage t_algorithm_lib:string_parser temp.array.arrayNew append from storage t_algorithm_lib:string_parser temp.array.array[0]
execute if score #tal.str_p.array.IsFail tal.input matches 0 run scoreboard players add #tal.str_p.char_to_id.objCount tal.input 1

data remove storage t_algorithm_lib:string_parser temp.array.array[0]




#递归
execute if score #tal.str_p.array.count tal.input matches 1.. run function t_algorithm_lib:string/string_parser/array/remove