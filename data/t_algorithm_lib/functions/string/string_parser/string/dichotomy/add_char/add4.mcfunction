###
#获取 字符数组 最后1位的对应 index
#获取元素个数
execute store result score #tal.str_p.char_to_id.count tal.str_parser run data get storage t_algorithm_lib:string_parser preparation_chars
execute store result score #tal.str_p.char_to_id.countMax tal.str_parser run data get storage t_algorithm_lib:string_parser preparation_chars
data modify storage t_algorithm_lib:string_parser temp.char_to_id.chars set from storage t_algorithm_lib:string_parser preparation_chars


function t_algorithm_lib:string/string_parser/string/dichotomy/char_to_id

scoreboard players operation #tal.str_p.char_to_id.char tal.str_parser = #tal.str_p.char_to_id.countMax tal.str_parser
scoreboard players operation #tal.str_p.char_to_id.char tal.str_parser -= #tal.str_p.char_to_id.count tal.str_parser
scoreboard players remove #tal.str_p.char_to_id.char tal.str_parser 1

#此时 #tal.str_p.char_to_id.char tal.str_parser为index 即该 玩家字符应添加至index前一位

#添加 元素
#该数值为最大值
execute store result score #tal.str_p.array.countMax tal.str_parser run data get storage t_algorithm_lib:string_parser preparation_chars
#数值index:
scoreboard players operation #tal.str_p.array.indexMax tal.str_parser = #tal.str_p.char_to_id.char tal.str_parser
#循环的index
scoreboard players set #tal.str_p.array.index tal.str_parser 0
#数组
data modify storage t_algorithm_lib:string_parser temp.array.array set from storage t_algorithm_lib:string_parser preparation_chars
#新数组
data modify storage t_algorithm_lib:string_parser temp.array.arrayNew set value []
function t_algorithm_lib:string/string_parser/array/add_by_index


tellraw @a [{"text":"[TDictionary] ","color": "#a8a8a8"},{"text":"字符排序完成,请确认是否添加至字符库中","color": "gold"},{"text": "[确认]","color":"green","clickEvent": {"action": "run_command","value": "/data modify storage t_algorithm_lib:string_parser preparation_chars set from storage t_algorithm_lib:string_parser temp.array.arrayNew"}}]
