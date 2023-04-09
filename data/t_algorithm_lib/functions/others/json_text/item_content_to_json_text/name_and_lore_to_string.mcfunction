#将 名称和lore转化为字符串

##获取列表个数:
execute store result score #tal.o.ITJ.list.count tal.input run data get storage t_algorithm_lib:item_to_json temp.string_list



##判断是否换行
data modify storage t_algorithm_lib:item_to_json temp.isChar set value "\\n"
#判断 1为失败 0为成功
scoreboard players set #tal.o.ITJ.IsFail tal.input 1
execute if data storage t_algorithm_lib:item_to_json temp.string_list[1] store success score #tal.o.ITJ.IsFail tal.input run data modify storage t_algorithm_lib:item_to_json temp.isChar set from storage t_algorithm_lib:item_to_json temp.string_list[1]


#默认
data modify block ~ ~ ~ Text3 set value '[{"nbt":"temp.string_list[0]","storage":"t_algorithm_lib:item_to_json","interpret":true},{"nbt":"temp.string_list[1]","storage":"t_algorithm_lib:item_to_json","interpret":true}]'
execute if score #tal.sign_version tal.input matches 2 run data modify block ~ ~ ~ front_text.messages[2] set value '[{"nbt":"temp.string_list[0]","storage":"t_algorithm_lib:item_to_json","interpret":true},{"nbt":"temp.string_list[1]","storage":"t_algorithm_lib:item_to_json","interpret":true}]'

execute if score #tal.o.ITJ.IsFail tal.input matches 0 run data modify block ~ ~ ~ Text3 set value '[{"nbt":"temp.string_list[0]","storage":"t_algorithm_lib:item_to_json","interpret":true},{"text":"\\n"}]'
execute if score #tal.sign_version tal.input matches 2 run execute if score #tal.o.ITJ.IsFail tal.input matches 0 run data modify block ~ ~ ~ front_text.messages[2] set value '[{"nbt":"temp.string_list[0]","storage":"t_algorithm_lib:item_to_json","interpret":true},{"text":"\\n"}]'



data modify storage t_algorithm_lib:item_to_json temp.string_list[0] set from block ~ ~ ~ Text3
execute if score #tal.sign_version tal.input matches 2 run data modify storage t_algorithm_lib:item_to_json temp.string_list[0] set from block ~ ~ ~ front_text.messages[2]

data remove storage t_algorithm_lib:item_to_json temp.string_list[1]

#递归
execute if score #tal.o.ITJ.list.count tal.input matches 2.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/name_and_lore_to_string