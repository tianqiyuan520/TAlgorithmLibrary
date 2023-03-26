data modify block ~ ~ ~ Text2 set value '[{"nbt":"Text2","block":"~ ~ ~","interpret":true},{"nbt":"merge.merge_json_text.list[0]","storage":"t_algorithm_lib:string","interpret":false}]'


execute store result score #tal.str.strEDIT.merge_json_text.num tal.str_parser run data get storage t_algorithm_lib:string string_editor.merge.merge_json_text.list[0]
scoreboard players operation #tal.str.strEDIT.merge_json_text.len tal.str_parser += #tal.str.strEDIT.merge_json_text.num tal.str_parser

data remove storage t_algorithm_lib:string string_editor.merge.merge_json_text.list[0]
execute store result score #tal.str.strEDIT.merge_json_text.num tal.str_parser run data get storage t_algorithm_lib:string string_editor.merge.merge_json_text.list

#递归
execute if score #tal.str.strEDIT.merge_json_text.num tal.str_parser matches 1.. run function t_algorithm_lib:string/string_editor/merge/merge_json_text/loop