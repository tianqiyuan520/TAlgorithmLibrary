data modify storage t_algorithm_lib:string string_editor.merge.return append from storage t_algorithm_lib:string string_editor.merge.result
##是否停止
execute store result score #tal.str.strEDIT.merge.len tal.input run data get storage t_algorithm_lib:string string_editor.merge.temp.input
execute if score #tal.str.strEDIT.merge.len tal.input matches 0 run function t_algorithm_lib:string/string_editor/merge/main/end
##
execute if score #tal.str.strEDIT.merge.len tal.input matches 1.. run function t_algorithm_lib:string/string_editor/merge/merge_json_text/start
execute if score #tal.str.strEDIT.merge.len tal.input matches 1.. run data remove storage t_algorithm_lib:string string_editor.merge.temp.input[0]
scoreboard players operation #tal.str.strEDIT.merge.str_len tal.input = #tal.str.strEDIT.merge_json_text.len tal.input

execute if score #tal.str.strEDIT.merge.len tal.input matches 1.. run data modify entity 2023119-0000-1d63-0000-000000000001 CustomName set from block -30000000 4 2022221 Text2
execute if score #tal.sign_version tal.input matches 2 if score #tal.str.strEDIT.merge.len tal.input matches 1.. run data modify entity 2023119-0000-1d63-0000-000000000001 CustomName set from block -30000000 4 2022221 front_text.messages[1]
