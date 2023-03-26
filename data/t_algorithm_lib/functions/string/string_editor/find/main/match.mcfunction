execute store result score #tal.str.strEDIT.find.list_count2 tal.str_parser run data get storage t_algorithm_lib:string string_editor.find.string2

data modify storage t_algorithm_lib:string string_editor.find.return append value 0
execute store result storage t_algorithm_lib:string string_editor.find.return[-1] int 1 run scoreboard players get #tal.str.strEDIT.find.index tal.str_parser
data modify storage t_algorithm_lib:string string_editor.find.string1 set from storage t_algorithm_lib:string string_editor.find.temp.str1
##指针 + 跳过的元素个数
scoreboard players operation #tal.str.strEDIT.find.index tal.str_parser += #tal.str.strEDIT.find.list_count2 tal.str_parser
scoreboard players remove #tal.str.strEDIT.find.index tal.str_parser 1
