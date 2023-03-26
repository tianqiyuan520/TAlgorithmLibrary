###切片处理
##输入string 解析成 string [首:末:]
#e.g. "abcde" -> "bc" [1:3:1]
#"abcdefg"[1::2] "bdf" 

##[自定义输入] 输入的参数
#data modify storage t_algorithm_lib:string string_editor.cut.io.input set value ''
##[自定义输入] 首指针 仅为0或正整数
# scoreboard players set #tal.str.strEDIT.cut.start tal.str_parser 0
##[自定义输入] 末指针
# scoreboard players set #tal.str.strEDIT.cut.end tal.str_parser 65536
##[自定义输入] 步长
# scoreboard players set #tal.str.strEDIT.cut.step tal.str_parser 1
#取正
scoreboard players set #tal.str.strEDIT.cut.-1 tal.str_parser -1
execute if score #tal.str.strEDIT.cut.step tal.str_parser matches ..-1 run scoreboard players operation #tal.str.strEDIT.cut.step tal.str_parser *= #-1 tal.str_parser
##调用 拆解
data modify storage t_algorithm_lib:string string_editor.parser.io.input set from storage t_algorithm_lib:string string_editor.cut.io.input
scoreboard players operation #tal.str.strEDIT.parser.index_1 tal.str_parser = #tal.str.strEDIT.cut.start tal.str_parser
scoreboard players operation #tal.str.strEDIT.parser.index_2 tal.str_parser = #tal.str.strEDIT.cut.end tal.str_parser
scoreboard players operation #tal.str.strEDIT.parser.str_interval tal.str_parser = #tal.str.strEDIT.cut.step tal.str_parser
function t_algorithm_lib:string/string_editor/parser/start
##调用 合并
function t_algorithm_lib:string/string_editor/cut/main/start
##
data modify storage t_algorithm_lib:string string_editor.cut.io.input set value 'abcdefg'
##首指针 仅为0或正整数
scoreboard players set #tal.str.strEDIT.cut.start tal.str_parser 0
##末指针
scoreboard players set #tal.str.strEDIT.cut.end tal.str_parser 3
##步长
scoreboard players set #tal.str.strEDIT.cut.step tal.str_parser 1