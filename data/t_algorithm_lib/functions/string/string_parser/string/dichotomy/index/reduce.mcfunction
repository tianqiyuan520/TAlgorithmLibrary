#二分法 初始分数 小 指针 大

# scoreboard players operation #tal.str_p.index.step tal.input = #tal.str_p.index.big tal.input
# scoreboard players operation #tal.str_p.index.step tal.input -= #tal.str_p.index tal.input
# scoreboard players operation #tal.str_p.index.step tal.input /= #tal.str_p.num.2 tal.input
# scoreboard players operation #tal.str_p.index.big tal.input -= #tal.str_p.index.step tal.input
scoreboard players operation #tal.str_p.index.big tal.input = #tal.str_p.index tal.input

scoreboard players operation #tal.str_p.index.step tal.input = #tal.str_p.index tal.input
scoreboard players operation #tal.str_p.index.step tal.input -= #tal.str_p.index.small tal.input
scoreboard players operation #tal.str_p.index.step tal.input /= #tal.str_p.num.2 tal.input

execute if score #tal.str_p.index.step tal.input matches 0 run scoreboard players set #tal.str_p.index.step tal.input 1

scoreboard players operation #tal.str_p.index tal.input -= #tal.str_p.index.step tal.input

execute if score #tal.str_p.index tal.input matches ..0 run scoreboard players set #tal.str_p.index tal.input 0
#scoreboard players operation #tal.str_p.index tal.input /= #tal.str_p.num.2 tal.input

#判断是否应该报错
data modify block -30000000 4 2022228 Text1 set value '{"nbt":"io.input","storage":"t_algorithm_lib:string_parser"}'
execute if score #tal.sign_version tal.input matches 2 run data modify block -30000000 4 2022228 front_text.messages[0] set value '{"nbt":"io.input","storage":"t_algorithm_lib:string_parser"}'

execute store result score #tal.str_p.char_to_id.count tal.input run data get block -30000000 4 2022228 Text1
execute if score #tal.sign_version tal.input matches 2 run execute store result score #tal.str_p.char_to_id.count tal.input run data get block -30000000 4 2022228 front_text.messages[0]
execute store result score #tal.str_p.char_to_id.count2 tal.input run data get storage t_algorithm_lib:string_parser io.output
scoreboard players add #tal.str_p.char_to_id.count2 tal.input 11

execute if score #tal.str_p.char_to_id.count2 tal.input >= #tal.str_p.char_to_id.count tal.input run function t_algorithm_lib:string/string_parser/string/dichotomy/wrong

# execute if score #tal.str_p.char_to_id.count tal.input matches 100.. run function t_algorithm_lib:string/string_parser/string/dichotomy/is_error