# data modify block ~ ~ ~ Text2 set value '[{"nbt":"json_text.merge_json_text.list[0]","storage":"t_algorithm_lib:others","interpret":true}]'
# data modify block ~ ~ ~ Text3 set value '[{"nbt":"json_text.merge_json_text.list[1]","storage":"t_algorithm_lib:others","interpret":true}]'
# data modify block ~ ~ ~ Text4 set value '[{"nbt":"Text2","block":"~ ~ ~","interpret":true},{"nbt":"Text3","block":"~ ~ ~","interpret":true}]'
data modify block ~ ~ ~ Text2 set value '[{"nbt":"Text2","block":"~ ~ ~","interpret":true},{"nbt":"json_text.merge_json_text.list[0]","storage":"t_algorithm_lib:others","interpret":true}]'

data remove storage t_algorithm_lib:others json_text.merge_json_text.list[0]
execute store result score #tal.merge_json_text.num tal.str_parser run data get storage t_algorithm_lib:others json_text.merge_json_text.list

#递归
execute if score #tal.merge_json_text.num tal.str_parser matches 1.. run function t_algorithm_lib:others/json_text/merge_json_text/loop