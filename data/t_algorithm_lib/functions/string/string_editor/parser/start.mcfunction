###解析器 (切片处理)
##输入string 解析成 list
#e.g. "abc" -> ["a","b","c"]

##[自定义输入] 输入的参数
#data modify storage t_algorithm_lib:string string_editor.parser.io.input set value ''
##[自定义输入] 字符串解析间隔 (默认为1) 每隔i-1字符
#即每1个字符解析 "abc" -> ["a","b","c"]
#2为 "abcdef" ["a","c","e"]
# scoreboard players set #tal.str.strEDIT.parser.str_interval tal.str_parser 1
#取正
scoreboard players set #-1 tal.str_parser -1
execute if score #tal.str.strEDIT.parser.str_interval tal.str_parser matches ..-1 run scoreboard players operation #tal.str.strEDIT.parser.str_interval tal.str_parser *= #-1 tal.str_parser

##字符串长度
scoreboard players set #tal.str.strEDIT.parser.str_len tal.str_parser 0
execute store result score #tal.str.strEDIT.parser.str_len tal.str_parser run data get storage t_algorithm_lib:string string_editor.parser.io.input

##字符串初始指针 (默认首指针为0,末指针为 65536) 解析为 [首,末)  类似切片处理
##[自定义输入] 首指针 仅为0或正整数
# scoreboard players set #tal.str.strEDIT.parser.index_1 tal.str_parser 0
##[自定义输入] 末指针
# scoreboard players set #tal.str.strEDIT.parser.index_2 tal.str_parser 65536
# execute store result score #tal.str.strEDIT.parser.index_2 tal.str_parser run data get storage t_algorithm_lib:string string_editor.parser.io.input
##返回的结果 list类型
data modify storage t_algorithm_lib:string string_editor.parser.return set value []
#
scoreboard players operation #tal.str.strEDIT.parser.index_2_ tal.str_parser = #tal.str.strEDIT.parser.index_2 tal.str_parser
scoreboard players operation #tal.str.strEDIT.parser.index_2_ tal.str_parser *= #-1 tal.str_parser
#
#首指针 正
execute if score #tal.str.strEDIT.parser.index_1 tal.str_parser matches ..-1 run scoreboard players operation #tal.str.strEDIT.parser.index_1 tal.str_parser *= #-1 tal.str_parser
#
scoreboard players set #tal.str.strEDIT.parser.wrong tal.str_parser 0
##越界判断
execute if score #tal.str.strEDIT.parser.index_1 tal.str_parser >= #tal.str.strEDIT.parser.str_len tal.str_parser run scoreboard players set #tal.str.strEDIT.parser.wrong tal.str_parser 1
execute if score #tal.str.strEDIT.parser.index_2_ tal.str_parser > #tal.str.strEDIT.parser.str_len tal.str_parser run scoreboard players set #tal.str.strEDIT.parser.wrong tal.str_parser 2
execute if score #tal.str.strEDIT.parser.index_2_ tal.str_parser > #tal.str.strEDIT.parser.index_1 tal.str_parser run scoreboard players set #tal.str.strEDIT.parser.wrong tal.str_parser 3
##异常处理
execute if score #tal.str.strEDIT.parser.wrong tal.str_parser matches 1 run tellraw @a [{"text": "[T字符串编辑] 字符串解析失败","color":"#A7A7A7"},{"text":"\n原因:首指针越界","color":"#FB5454"}]
execute if score #tal.str.strEDIT.parser.wrong tal.str_parser matches 2 run tellraw @a [{"text": "[T字符串编辑] 字符串解析失败","color":"#A7A7A7"},{"text":"\n原因:末指针越界","color":"#FB5454"}]
execute if score #tal.str.strEDIT.parser.wrong tal.str_parser matches 3 run tellraw @a [{"text": "[T字符串编辑] 字符串解析失败","color":"#A7A7A7"},{"text":"\n原因:|末指针|>|首指针|","color":"#FB5454"}]

#将末指针转化为 正数的指针
execute if score #tal.str.strEDIT.parser.index_2 tal.str_parser matches ..-1 run function t_algorithm_lib:string/string_editor/parser/change


execute if score #tal.str.strEDIT.parser.index_1 tal.str_parser = #tal.str.strEDIT.parser.index_2 tal.str_parser run data modify storage t_algorithm_lib:string/string_editor/parser return set value [""]

execute unless score #tal.str.strEDIT.parser.index_1 tal.str_parser = #tal.str.strEDIT.parser.index_2 tal.str_parser if score #tal.str.strEDIT.parser.wrong tal.str_parser matches 0 run function t_algorithm_lib:string/string_editor/parser/main/start

##初始化
execute unless data storage t_algorithm_lib:string string_editor.parser.io.input run data modify storage t_algorithm_lib:string string_editor.parser.io.input set value 'abc'
#首指针 仅为0或正整数
execute unless score #tal.str.strEDIT.parser.index_1 tal.str_parser matches -2147483648..2147483647 run scoreboard players set #tal.str.strEDIT.parser.index_1 tal.str_parser 0
#末指针
execute unless score #tal.str.strEDIT.parser.index_2 tal.str_parser matches -2147483648..2147483647 run scoreboard players set #tal.str.strEDIT.parser.index_2 tal.str_parser 65536
##字符串解析间隔 (默认为1)
#即每1个字符解析 "abc" -> ["a","b","c"]
execute unless score #tal.str.strEDIT.parser.str_interval tal.str_parser matches -2147483648..2147483647 run scoreboard players set #tal.str.strEDIT.parser.str_interval tal.str_parser 1