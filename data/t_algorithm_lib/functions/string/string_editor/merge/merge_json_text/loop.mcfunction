data modify block ~ ~ ~ Text2 set value '[{"nbt":"Text2","block":"~ ~ ~","interpret":true},{"nbt":"merge.merge_json_text.list[0]","storage":"t_algorithm_lib:string","interpret":false}]'
execute if score #tal.sign_version tal.input matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true},{"nbt":"merge.merge_json_text.list[0]","storage":"t_algorithm_lib:string","interpret":false}]'


execute store result score #tal.str.strEDIT.merge_json_text.num tal.input run data get storage t_algorithm_lib:string string_editor.merge.merge_json_text.list[0]
scoreboard players operation #tal.str.strEDIT.merge_json_text.len tal.input += #tal.str.strEDIT.merge_json_text.num tal.input

data remove storage t_algorithm_lib:string string_editor.merge.merge_json_text.list[0]
execute store result score #tal.str.strEDIT.merge_json_text.num tal.input run data get storage t_algorithm_lib:string string_editor.merge.merge_json_text.list

#递归
execute if score #tal.str.strEDIT.merge_json_text.num tal.input matches 1.. run function t_algorithm_lib:string/string_editor/merge/merge_json_text/loop