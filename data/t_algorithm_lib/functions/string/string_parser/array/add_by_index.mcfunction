#根据索引，在函数中添加字符


execute if score #tal.str_p.array.append tal.input matches 0 if score #tal.str_p.array.index tal.input = #tal.str_p.array.indexMax tal.input run data modify storage t_algorithm_lib:string_parser temp.array.arrayNew append from storage t_algorithm_lib:string_parser io.input
data modify storage t_algorithm_lib:string_parser temp.array.arrayNew append from storage t_algorithm_lib:string_parser temp.array.array[0]
execute if score #tal.str_p.array.append tal.input matches 1 if score #tal.str_p.array.index tal.input = #tal.str_p.array.indexMax tal.input run data modify storage t_algorithm_lib:string_parser temp.array.arrayNew append from storage t_algorithm_lib:string_parser io.input

#移除
data remove storage t_algorithm_lib:string_parser temp.array.array[0]



scoreboard players add #tal.str_p.array.index tal.input 1
execute if score #tal.str_p.array.index tal.input < #tal.str_p.array.countMax tal.input run function t_algorithm_lib:string/string_parser/array/add_by_index
