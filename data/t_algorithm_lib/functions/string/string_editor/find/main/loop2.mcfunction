##首元素判断
scoreboard players set #tal.str.strEDIT.find.num tal.str_parser 1
data modify storage t_algorithm_lib:string string_editor.find.list_check set string storage t_algorithm_lib:string string_editor.find.temp.str1 0 1
execute store success score #tal.str.strEDIT.find.num tal.str_parser run data modify storage t_algorithm_lib:string string_editor.find.list_check set string storage t_algorithm_lib:string string_editor.find.temp.str2 0 1

##如果匹配 进入二次遍历
##参数
execute if score #tal.str.strEDIT.find.num tal.str_parser matches 0 run scoreboard players add #tal.str.strEDIT.find.success_count tal.str_parser 1


data modify storage t_algorithm_lib:string string_editor.find.temp.str1 set string storage t_algorithm_lib:string string_editor.find.temp.str1 1
data modify storage t_algorithm_lib:string string_editor.find.temp.str2 set string storage t_algorithm_lib:string string_editor.find.temp.str2 1

execute store result score #tal.str.strEDIT.find.list_count tal.str_parser run data get storage t_algorithm_lib:string string_editor.find.temp.str1 
execute store result score #tal.str.strEDIT.find.list_count2 tal.str_parser run data get storage t_algorithm_lib:string string_editor.find.temp.str2 
execute if score #tal.str.strEDIT.find.list_count tal.str_parser matches 1.. if score #tal.str.strEDIT.find.list_count2 tal.str_parser matches 1.. if score #tal.str.strEDIT.find.list_count tal.str_parser >= #tal.str.strEDIT.find.list_count2 tal.str_parser run function t_algorithm_lib:string/string_editor/find/main/loop2