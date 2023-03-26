##根据指针替换
data modify storage t_algorithm_lib:string string_editor.replace.temp.string1 set from storage t_algorithm_lib:string string_editor.replace.io.input.string1

scoreboard players set #tal.str.strEDIT.replace.index tal.str_parser 0
#替换的字符数
scoreboard players set #tal.str.strEDIT.replace.str3_len tal.str_parser 0

function t_algorithm_lib:string/string_editor/replace/main/loop
