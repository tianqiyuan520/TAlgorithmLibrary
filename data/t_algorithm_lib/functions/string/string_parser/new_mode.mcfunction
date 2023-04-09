##开启新的字符串拆解
schedule clear t_algorithm_lib:string/string_parser/start

##调用
data modify storage t_algorithm_lib:string string_editor.parser.io.input set from storage t_algorithm_lib:string_parser io.input
#首指针 仅为0或正整数
scoreboard players set #tal.str.strEDIT.parser.index_1 tal.input 0
#末指针
scoreboard players set #tal.str.strEDIT.parser.index_2 tal.input 65536
##字符串解析间隔 (默认为1)
#即每1个字符解析 "abc" -> ["a","b","c"]
scoreboard players set #tal.str.strEDIT.parser.str_interval tal.input 1

function t_algorithm_lib:string/string_editor/parser/start

##[返回结果]
data modify storage t_algorithm_lib:string_parser io.output set from storage t_algorithm_lib:string string_editor.parser.return
