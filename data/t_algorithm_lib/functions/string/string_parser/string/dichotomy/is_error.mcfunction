#获取chars对应的id
#移除数组有关" "的元素
#获取元素个数 
#该数值为递归
execute store result score #tal.str_p.array.count tal.input run data get storage t_algorithm_lib:string_parser io.output
#该数值为最大值
execute store result score #tal.str_p.array.countMax tal.input run data get storage t_algorithm_lib:string_parser io.output
#数组
data modify storage t_algorithm_lib:string_parser temp.array.array set from storage t_algorithm_lib:string_parser io.output
#新数组
data modify storage t_algorithm_lib:string_parser temp.array.arrayNew set value []
#匹配的元素
data modify storage t_algorithm_lib:string_parser temp.array.obj set value " "
#匹配的元素个数
scoreboard players set #tal.str_p.char_to_id.objCount tal.input 0
function t_algorithm_lib:string/string_parser/array/remove

#获取元素个数
# execute store result score #tal.str_p.char_to_id.count tal.input run data get storage t_algorithm_lib:string_parser preparation_chars
# execute store result score #tal.str_p.char_to_id.countMax tal.input run data get storage t_algorithm_lib:string_parser preparation_chars
# data modify storage t_algorithm_lib:string_parser temp.char_to_id.chars set from storage t_algorithm_lib:string_parser preparation_chars

# data modify storage t_algorithm_lib:string_parser temp.char_to_id.char set from storage t_algorithm_lib:string_parser temp.array.arrayNew[-2]
# function t_algorithm_lib:string/string_parser/string/dichotomy/char_to_id

# scoreboard players operation #tal.str_p.char_to_id.char1 tal.input = #tal.str_p.char_to_id.countMax tal.input
# scoreboard players operation #tal.str_p.char_to_id.char1 tal.input -= #tal.str_p.char_to_id.count tal.input
# scoreboard players remove #tal.str_p.char_to_id.char1 tal.input 1
# #获取元素个数
# execute store result score #tal.str_p.char_to_id.count tal.input run data get storage t_algorithm_lib:string_parser preparation_chars
# data modify storage t_algorithm_lib:string_parser temp.char_to_id.chars set from storage t_algorithm_lib:string_parser preparation_chars
# execute store result score #tal.str_p.char_to_id.countMax tal.input run data get storage t_algorithm_lib:string_parser preparation_chars
# data modify storage t_algorithm_lib:string_parser temp.char_to_id.char set from storage t_algorithm_lib:string_parser temp.array.arrayNew[-1]
# function t_algorithm_lib:string/string_parser/string/dichotomy/char_to_id

# scoreboard players operation #tal.str_p.char_to_id.char2 tal.input = #tal.str_p.char_to_id.countMax tal.input
# scoreboard players operation #tal.str_p.char_to_id.char2 tal.input -= #tal.str_p.char_to_id.count tal.input
# scoreboard players remove #tal.str_p.char_to_id.char2 tal.input 1

# ###
# #判断信息 
# scoreboard players operation #tal.str_p.char_to_id.char1 tal.input -= #tal.str_p.char_to_id.char2 tal.input
# execute if score #tal.str_p.char_to_id.char1 tal.input matches 1 if score #tal.str_p.char_to_id.objCount tal.input matches 100.. run function t_algorithm_lib:string/string_parser/string/dichotomy/wrong

##判断 计算比重
#*100
execute store result storage t_algorithm_lib:string_parser temp.array.objCount int 100 run scoreboard players get #tal.str_p.char_to_id.objCount tal.input
execute store result score #tal.str_p.char_to_id.objCount tal.input run data get storage t_algorithm_lib:string_parser temp.array.objCount
scoreboard players operation #tal.str_p.char_to_id.objCount tal.input /= #tal.str_p.array.countMax tal.input
#空格数率 >= 90%
execute if score #tal.str_p.char_to_id.objCount tal.input matches 90.. run function t_algorithm_lib:string/string_parser/string/dichotomy/wrong
