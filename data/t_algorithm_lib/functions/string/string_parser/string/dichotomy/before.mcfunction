# data modify block ~ ~ ~ auto set value 0b

scoreboard players add #tal.str_p.char.limlit tal.input 1
#进行上次成功数据的同步
data modify storage t_algorithm_lib:string_parser char.check set from storage t_algorithm_lib:string_parser char.true_char
data modify storage t_algorithm_lib:string_parser io.output set from storage t_algorithm_lib:string_parser char.true_char
data modify entity 00000000-0000-1d63-0000-000000000000 CustomName set value '"/me <action>"'
#进行二分法



#二分法 索引转化为字符串 并添加到数组中
function t_algorithm_lib:string/string_parser/string/dichotomy/id_to_char
#data modify block -30000000 4 2022228 Text1 set value '{"nbt":"io.input","storage":"t_algorithm_lib:string_parser"}'
#data modify block -30000000 4 2022228 Text3 set value '{"nbt":"char.check","storage":"t_algorithm_lib:string_parser","interpret":true}'
#要匹配的文字
data modify block -30000000 4 2022228 Text1 set value '{"nbt":"io.input","storage":"t_algorithm_lib:string_parser"}'
execute if score #tal.sign_version tal.input matches 2 run data modify block -30000000 4 2022228 front_text.messages[0] set value '{"nbt":"io.input","storage":"t_algorithm_lib:string_parser"}'
#二分法的结果 进行列表转json的text
#获取元素个数

execute store result score #tal.str_p.list_to_string.count_ tal.input run data get storage t_algorithm_lib:string_parser char.true_char
#同步char
data modify storage t_algorithm_lib:string_parser temp.chars set from storage t_algorithm_lib:string_parser char.check


data modify storage t_algorithm_lib:string_parser temp.result set value ["",""]
execute store result score #tal.str_p.list_to_string.count tal.input run data get storage t_algorithm_lib:string_parser temp.chars

# execute if score #tal.str_p.char.IsChanged_ tal.input matches 109.. run function t_algorithm_lib:string/string_parser/string/dichotomy/list_to_string
execute if score #tal.str_p.char.re_read2 tal.input = #tal.str_p.list_to_string.count_ tal.input run function t_algorithm_lib:string/string_parser/string/dichotomy/end_re_read
# execute if score #tal.str_p.char.re_read2 tal.input = #tal.str_p.list_to_string.count_ tal.input run scoreboard players set #tal.str_p.char.re_read tal.input 0
execute store result score #tal.str_p.list_to_string.count_ tal.input run data get storage t_algorithm_lib:string_parser char.true_char



execute if score #tal.str_p.list_to_string.count_ tal.input matches ..2 if data storage t_algorithm_lib:string_parser char.check run function t_algorithm_lib:string/string_parser/string/dichotomy/list_to_string
execute if score #tal.str_p.char.re_read tal.input matches 10 if data storage t_algorithm_lib:string_parser char.check run function t_algorithm_lib:string/string_parser/string/dichotomy/list_to_string_3_s
execute unless score #tal.str_p.char.re_read tal.input matches 10 if score #tal.str_p.list_to_string.count_ tal.input matches 3.. if data storage t_algorithm_lib:string_parser char.check run function t_algorithm_lib:string/string_parser/string/dichotomy/list_to_string_2


scoreboard players operation #tal.str_p.list_to_string.count_last tal.input = #tal.str_p.list_to_string.count_ tal.input

data modify entity 00000000-0000-1d63-0000-000000000003 CustomName set from block -30000000 4 2022228 Text1
execute if score #tal.sign_version tal.input matches 2 run data modify entity 00000000-0000-1d63-0000-000000000003 CustomName set from block -30000000 4 2022228 front_text.messages[0]
data modify entity 00000000-0000-1d63-0000-000000000004 CustomName set from block -30000000 4 2022228 Text3
execute if score #tal.sign_version tal.input matches 2 run data modify entity 00000000-0000-1d63-0000-000000000004 CustomName set from block -30000000 4 2022228 front_text.messages[2]
