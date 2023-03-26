execute if score #tal.str.strEDIT.replace.str3_len tal.str_parser matches 0 store result score #tal.str.strEDIT.replace.index_ tal.str_parser run data get storage t_algorithm_lib:string string_editor.find.return[0]
execute if score #tal.str.strEDIT.replace.index tal.str_parser = #tal.str.strEDIT.replace.index_ tal.str_parser run function t_algorithm_lib:string/string_editor/replace/main/matches

execute if score #tal.str.strEDIT.replace.str3_len tal.str_parser matches 0 run data modify storage t_algorithm_lib:string string_editor.replace.return append string storage t_algorithm_lib:string string_editor.replace.temp.string1 0 1

execute if score #tal.str.strEDIT.replace.str3_len tal.str_parser matches 1.. run scoreboard players remove #tal.str.strEDIT.replace.str3_len tal.str_parser 1

data modify storage t_algorithm_lib:string string_editor.replace.temp.string1 set string storage t_algorithm_lib:string string_editor.replace.temp.string1 1
execute store result score #tal.str.strEDIT.replace.list_count tal.str_parser run data get storage t_algorithm_lib:string string_editor.replace.temp.string1
scoreboard players add #tal.str.strEDIT.replace.index tal.str_parser 1
execute if score #tal.str.strEDIT.replace.list_count tal.str_parser matches 1.. run function t_algorithm_lib:string/string_editor/replace/main/loop
