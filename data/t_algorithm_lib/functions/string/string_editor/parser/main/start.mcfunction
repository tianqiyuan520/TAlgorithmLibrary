##解析

##采用loop循环得 字符串[0]
# if len(str)-1 >= index2:  get str[0] , str[1,index2+1]
# if len(str)-1 < index2:  get str[0] , str[1,len(str)+1]
##计算终止命令
scoreboard players operation #tal.str.strEDIT.parser.loop_end tal.input = #tal.str.strEDIT.parser.str_len tal.input
execute if score #tal.str.strEDIT.parser.str_len tal.input >= #tal.str.strEDIT.parser.index_2 tal.input run scoreboard players operation #tal.str.strEDIT.parser.loop_end tal.input = #tal.str.strEDIT.parser.index_2 tal.input
##临时变量 str
data modify storage t_algorithm_lib:string string_editor.parser.temp.str set from storage t_algorithm_lib:string string_editor.parser.io.input

scoreboard players set #tal.str.strEDIT.parser.str_interval_ tal.input 1
##当前指针
scoreboard players set #tal.str.strEDIT.parser.indexN tal.input 0
##
function t_algorithm_lib:string/string_editor/parser/main/loop
