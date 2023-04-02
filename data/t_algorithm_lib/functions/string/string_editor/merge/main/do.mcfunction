scoreboard players operation #tal.str.strEDIT.merge.str_len_ tal.input = #tal.str.strEDIT.merge.str_len tal.input
scoreboard players add #tal.str.strEDIT.merge.str_len_ tal.input 89
#data modify storage t_algorithm_lib:string string_editor.merge.result set string block -30000000 3 2022219 LastOutput 89 {89+字符串长度}

data modify block -30000000 4 2022221 Text2 set value '[{"text": "data modify storage t_algorithm_lib:string string_editor.merge.result set string block -30000000 3 2022219 LastOutput 89 "},{"score":{"name": "#tal.str.strEDIT.merge.str_len_","objective": "tal.input"}}]'
execute if score #tal.sign_version tal.input matches 2 run data modify block -30000000 4 2022221 front_text.messages[1] set value '[{"text": "data modify storage t_algorithm_lib:string string_editor.merge.result set string block -30000000 3 2022219 LastOutput 89 "},{"score":{"name": "#tal.str.strEDIT.merge.str_len_","objective": "tal.input"}}]'
data modify entity 2023119-0000-1d63-0000-000000000002 CustomName set from block -30000000 4 2022221 Text2
execute if score #tal.sign_version tal.input matches 2 run data modify entity 2023119-0000-1d63-0000-000000000002 CustomName set from block -30000000 4 2022221 front_text.messages[1]

