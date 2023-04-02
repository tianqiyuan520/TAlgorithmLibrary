#开始添加字符
#关闭 "添加"模式
scoreboard players set #tal.str_p.char.mode tal.input 0
###计算玩家的单词是否有添加过
    #获取元素个数 
    #该数值为递归
    execute store result score #tal.str_p.array.count tal.input run data get storage t_algorithm_lib:string_parser preparation_chars
    #该数值为最大值
    execute store result score #tal.str_p.array.countMax tal.input run data get storage t_algorithm_lib:string_parser preparation_chars
    #数组
    data modify storage t_algorithm_lib:string_parser temp.array.array set from storage t_algorithm_lib:string_parser preparation_chars
    #匹配的元素
    data modify storage t_algorithm_lib:string_parser temp.array.obj set from storage t_algorithm_lib:string_parser io.input
    #匹配的元素个数
    scoreboard players set #tal.str_p.char_to_id.objCount tal.input 0
    function t_algorithm_lib:string/string_parser/array/count_list

#玩家未添加过该词
execute if score #tal.str_p.char_to_id.objCount tal.input matches 1.. run tellraw @a [{"text":"[TDictionary] ","color": "#a8a8a8"},{"text":"字符添加失败.原因: ","color": "gold"},{"text": "已添加过该 字符或字符串","color": "red"}]
execute if score #tal.str_p.char_to_id.objCount tal.input matches 0 run function t_algorithm_lib:string/string_parser/string/dichotomy/add_char/add2

