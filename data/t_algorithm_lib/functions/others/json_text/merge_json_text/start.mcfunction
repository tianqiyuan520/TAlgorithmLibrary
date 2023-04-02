###将JSON文本合并渲染
##['{"text":"a"}','{"text":"b"}'] ==>渲染 ab

##源数据
## data modify storage t_algorithm_lib:others json_text.merge_json_text.list set value ['{"text":"a","color":"red"}','{"text":"b","hoverEvent": {"action": "show_text","contents": {"text": "!"}}}','{"text":"c"}']

##结果
data modify storage t_algorithm_lib:others json_text.merge_json_text.return set value ''
scoreboard players set #tal.merge_json_text.num tal.input 0
execute positioned -29999994 4 2022224 run setblock ~ ~ ~ air
execute positioned -29999994 4 2022224 run setblock ~ ~ ~ oak_sign{Text1:'{"text":"合并JSON文本"}'}
data modify storage t_algorithm_lib:others json_text.merge_json_text.list prepend value ''
data modify block -29999994 4 2022224 Text2 set value '[{"nbt":"json_text.merge_json_text.list[0]","storage":"t_algorithm_lib:others","interpret":true}]'
execute if score #tal.sign_version tal.input matches 2 run data modify block -29999994 4 2022224 front_text.messages[1] set value '[{"nbt":"json_text.merge_json_text.list[0]","storage":"t_algorithm_lib:others","interpret":true}]'
data remove storage t_algorithm_lib:others json_text.merge_json_text.list[0]

execute positioned -29999994 4 2022224 run function t_algorithm_lib:others/json_text/merge_json_text/loop


data modify storage t_algorithm_lib:others json_text.merge_json_text.return set from block -29999994 4 2022224 Text2
execute if score #tal.sign_version tal.input matches 2 run data modify storage t_algorithm_lib:others json_text.merge_json_text.return set from block -29999994 4 2022224 front_text.messages[1]

##显示
# tellraw @a [{"nbt":"json_text.merge_json_text.return","storage":"t_algorithm_lib:others","interpret":true}]

##源数据(init化)
data modify storage t_algorithm_lib:others json_text.merge_json_text.list set value ['{"text":"This an "}','{"text":"example","hoverEvent": {"action": "show_text","contents": {"text": "例子","color":"green"}},"color":"red"}','{"text":" !"}']