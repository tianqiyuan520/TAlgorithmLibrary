#二分法 初始分数 小 指针 大

# scoreboard players operation #tal.str_p.index.step tal.str_parser = #tal.str_p.index.big tal.str_parser
# scoreboard players operation #tal.str_p.index.step tal.str_parser -= #tal.str_p.index tal.str_parser
# scoreboard players operation #tal.str_p.index.step tal.str_parser /= #tal.str_p.num.2 tal.str_parser
# scoreboard players operation #tal.str_p.index.big tal.str_parser -= #tal.str_p.index.step tal.str_parser
scoreboard players operation #tal.str_p.index.big tal.str_parser = #tal.str_p.index tal.str_parser

scoreboard players operation #tal.str_p.index.step tal.str_parser = #tal.str_p.index tal.str_parser
scoreboard players operation #tal.str_p.index.step tal.str_parser -= #tal.str_p.index.small tal.str_parser
scoreboard players operation #tal.str_p.index.step tal.str_parser /= #tal.str_p.num.2 tal.str_parser

execute if score #tal.str_p.index.step tal.str_parser matches 0 run scoreboard players set #tal.str_p.index.step tal.str_parser 1

scoreboard players operation #tal.str_p.index tal.str_parser -= #tal.str_p.index.step tal.str_parser

execute if score #tal.str_p.index tal.str_parser matches ..0 run scoreboard players set #tal.str_p.index tal.str_parser 0
#scoreboard players operation #tal.str_p.index tal.str_parser /= #tal.str_p.num.2 tal.str_parser

#判断是否应该报错
data modify block -30000000 4 2022228 Text1 set value '{"nbt":"io.input","storage":"t_algorithm_lib:string_parser"}'

execute store result score #tal.str_p.char_to_id.count tal.str_parser run data get block -30000000 4 2022228 Text1
execute store result score #tal.str_p.char_to_id.count2 tal.str_parser run data get storage t_algorithm_lib:string_parser io.output
scoreboard players add #tal.str_p.char_to_id.count2 tal.str_parser 11

execute if score #tal.str_p.char_to_id.count2 tal.str_parser >= #tal.str_p.char_to_id.count tal.str_parser run function t_algorithm_lib:string/string_parser/string/dichotomy/wrong

# execute if score #tal.str_p.char_to_id.count tal.str_parser matches 100.. run function t_algorithm_lib:string/string_parser/string/dichotomy/is_error