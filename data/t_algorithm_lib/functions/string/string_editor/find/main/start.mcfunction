
##二次遍历的临时数组
data modify storage t_algorithm_lib:string string_editor.find.temp.str1 set value ''
data modify storage t_algorithm_lib:string string_editor.find.temp.str2 set value ''
##指针
scoreboard players set #tal.str.strEDIT.find.index tal.str_parser 0

execute store result score #tal.str.strEDIT.find.list_count tal.str_parser run data get storage t_algorithm_lib:string string_editor.find.string1
execute store result score #tal.str.strEDIT.find.list_count2 tal.str_parser run data get storage t_algorithm_lib:string string_editor.find.string2
execute if score #tal.str.strEDIT.find.list_count tal.str_parser matches 1.. if score #tal.str.strEDIT.find.list_count tal.str_parser >= #tal.str.strEDIT.find.list_count2 tal.str_parser run function t_algorithm_lib:string/string_editor/find/main/loop
