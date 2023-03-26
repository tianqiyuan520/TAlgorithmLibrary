##首元素判断
scoreboard players set #tal.str.strEDIT.find.num tal.str_parser 1
data modify storage t_algorithm_lib:string string_editor.find.list_check set string storage t_algorithm_lib:string string_editor.find.string1 0 1
execute store success score #tal.str.strEDIT.find.num tal.str_parser run data modify storage t_algorithm_lib:string string_editor.find.list_check set string storage t_algorithm_lib:string string_editor.find.string2 0 1

##如果匹配 进入二次遍历

execute if score #tal.str.strEDIT.find.num tal.str_parser matches 0 run data modify storage t_algorithm_lib:string string_editor.find.temp.str1 set from storage t_algorithm_lib:string string_editor.find.string1
execute if score #tal.str.strEDIT.find.num tal.str_parser matches 0 run data modify storage t_algorithm_lib:string string_editor.find.temp.str2 set from storage t_algorithm_lib:string string_editor.find.string2

##匹配的个数
scoreboard players set #tal.str.strEDIT.find.success_count tal.str_parser 0


execute store result score #tal.str.strEDIT.find.list_count tal.str_parser run data get storage t_algorithm_lib:string string_editor.find.temp.str1 
execute store result score #tal.str.strEDIT.find.list_count2 tal.str_parser run data get storage t_algorithm_lib:string string_editor.find.temp.str2 
execute if score #tal.str.strEDIT.find.list_count tal.str_parser matches 1.. if score #tal.str.strEDIT.find.list_count tal.str_parser >= #tal.str.strEDIT.find.list_count2 tal.str_parser run function t_algorithm_lib:string/string_editor/find/main/loop2


execute store result score #tal.str.strEDIT.find.list_count2 tal.str_parser run data get storage t_algorithm_lib:string string_editor.find.string2
##如果全匹配
execute if score #tal.str.strEDIT.find.list_count2 tal.str_parser = #tal.str.strEDIT.find.success_count tal.str_parser run function t_algorithm_lib:string/string_editor/find/main/match

execute unless score #tal.str.strEDIT.find.list_count2 tal.str_parser = #tal.str.strEDIT.find.success_count tal.str_parser run data modify storage t_algorithm_lib:string string_editor.find.string1 set string storage t_algorithm_lib:string string_editor.find.string1 1


scoreboard players add #tal.str.strEDIT.find.index tal.str_parser 1

execute store result score #tal.str.strEDIT.find.list_count tal.str_parser run data get storage t_algorithm_lib:string string_editor.find.string1
execute store result score #tal.str.strEDIT.find.list_count2 tal.str_parser run data get storage t_algorithm_lib:string string_editor.find.string2
execute if score #tal.str.strEDIT.find.list_count tal.str_parser matches 1.. if score #tal.str.strEDIT.find.list_count tal.str_parser >= #tal.str.strEDIT.find.list_count2 tal.str_parser run function t_algorithm_lib:string/string_editor/find/main/loop