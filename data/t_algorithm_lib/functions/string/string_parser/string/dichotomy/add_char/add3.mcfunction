#移除数组所有 " "的元素
#获取元素个数 
#该数值为递归
execute store result score #tal.str_p.array.count tal.str_parser run data get storage t_algorithm_lib:string_parser io.output
#该数值为最大值
execute store result score #tal.str_p.array.countMax tal.str_parser run data get storage t_algorithm_lib:string_parser io.output
#数组
data modify storage t_algorithm_lib:string_parser temp.array.array set from storage t_algorithm_lib:string_parser io.output
#新数组
data modify storage t_algorithm_lib:string_parser temp.array.arrayNew set value []
#匹配的元素
data modify storage t_algorithm_lib:string_parser temp.array.obj set value " "
#匹配的元素个数
scoreboard players set #tal.str_p.char_to_id.objCount tal.str_parser 0
function t_algorithm_lib:string/string_parser/array/remove

##判断 匹配到的元素个数，1则添加到index前，否则选择匹配到的字符第一个
scoreboard players operation #tal.str_p.array.countMax tal.str_parser -= #tal.str_p.char_to_id.objCount tal.str_parser

#判断玩家的字符是否为1个
execute if score #tal.str_p.array.countMax tal.str_parser matches 2.. run tellraw @a [{"text":"[TDictionary] ","color": "#a8a8a8"},{"text":"字符添加失败.原因: ","color": "gold"},{"text": "该字符可能个数大于1","color": "red"}]

#默认前面
scoreboard players set #tal.str_p.array.append tal.str_parser 0
execute if score #tal.str_p.array.countMax tal.str_parser matches 1 run data modify storage t_algorithm_lib:string_parser temp.char_to_id.char set from storage t_algorithm_lib:string_parser temp.array.arrayNew[-1]
execute if score #tal.str_p.array.countMax tal.str_parser matches 1 run function t_algorithm_lib:string/string_parser/string/dichotomy/add_char/add4
#更改为保存index后面

# execute if score #tal.str_p.array.countMax tal.str_parser matches 2.. run scoreboard players set #tal.str_p.array.append tal.str_parser 1
# execute if score #tal.str_p.array.countMax tal.str_parser matches 2.. run data modify storage t_algorithm_lib:string_parser temp.char_to_id.char set from storage t_algorithm_lib:string_parser temp.array.arrayNew[0]