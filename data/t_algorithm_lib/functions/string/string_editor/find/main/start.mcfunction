
##二次遍历的临时数组
data modify storage t_algorithm_lib:string string_editor.find.temp.str1 set value ''
data modify storage t_algorithm_lib:string string_editor.find.temp.str2 set value ''
##指针
scoreboard players set #tal.str.strEDIT.find.index tal.input 0

execute store result score #tal.str.strEDIT.find.list_count tal.input run data get storage t_algorithm_lib:string string_editor.find.string1
execute store result score #tal.str.strEDIT.find.list_count2 tal.input run data get storage t_algorithm_lib:string string_editor.find.string2
execute if score #tal.str.strEDIT.find.list_count tal.input matches 1.. if score #tal.str.strEDIT.find.list_count tal.input >= #tal.str.strEDIT.find.list_count2 tal.input run function t_algorithm_lib:string/string_editor/find/main/loop
