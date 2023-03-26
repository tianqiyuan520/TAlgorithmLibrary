###将JSON文本合并渲染


data modify storage t_algorithm_lib:string string_editor.merge.merge_json_text.list set from storage t_algorithm_lib:string string_editor.merge.temp.input[0]
##总字符长度
scoreboard players set #tal.str.strEDIT.merge_json_text.len tal.str_parser 0

##结果
data modify storage t_algorithm_lib:string string_editor.merge_json_text.return set value ''

scoreboard players set #tal.str.strEDIT.merge_json_text.num tal.str_parser 0
execute positioned -30000000 4 2022221 run setblock ~ ~ ~ air
execute positioned -30000000 4 2022221 run setblock ~ ~ ~ oak_sign{Text1:'{"text":"[字符串编辑]"}'}
data modify storage t_algorithm_lib:string string_editor.merge.merge_json_text.list prepend value ''
data modify block -30000000 4 2022221 Text2 set value '[{"nbt":"merge.merge_json_text.list[0]","storage":"t_algorithm_lib:string","interpret":false}]'

execute store result score #tal.str.strEDIT.merge_json_text.num tal.str_parser run data get storage t_algorithm_lib:string string_editor.merge.merge_json_text.list[0]
scoreboard players operation #tal.str.strEDIT.merge_json_text.len tal.str_parser += #tal.str.strEDIT.merge_json_text.num tal.str_parser


data remove storage t_algorithm_lib:string string_editor.merge.merge_json_text.list[0]

execute positioned -30000000 4 2022221 run function t_algorithm_lib:string/string_editor/merge/merge_json_text/loop

data modify storage t_algorithm_lib:string string_editor.merge_json_text.return set from block -30000000 4 2022221 Text2