##压缩法
# tellraw @a [{"nbt":"function_parser.temp.list","storage": "t_algorithm_lib:string"}]

#计算 阶乘
#循环遍历数据中的数字
function t_algorithm_lib:string/function_parser/parser/start_from_x/factorial/start

# #去除括号
data modify storage t_algorithm_lib:string function_parser.temp.list set from storage t_algorithm_lib:string function_parser.temp.list2
data modify storage t_algorithm_lib:string function_parser.temp.list2 set value []
function t_algorithm_lib:string/function_parser/parser/start_from_x/remove_parentheses/start
data modify storage t_algorithm_lib:string function_parser.temp.list set from storage t_algorithm_lib:string function_parser.temp.list2
data modify storage t_algorithm_lib:string function_parser.temp.list2 set value []
#压缩 计算数字的^
#循环遍历数据中的数字
function t_algorithm_lib:string/function_parser/parser/start_from_x/power/start
#
#去除括号
data modify storage t_algorithm_lib:string function_parser.temp.list set from storage t_algorithm_lib:string function_parser.temp.list2
data modify storage t_algorithm_lib:string function_parser.temp.list2 set value []
function t_algorithm_lib:string/function_parser/parser/start_from_x/remove_parentheses/start

data modify storage t_algorithm_lib:string function_parser.temp.list set from storage t_algorithm_lib:string function_parser.temp.list2
data modify storage t_algorithm_lib:string function_parser.temp.list2 set value []
#压缩 计算乘法
function t_algorithm_lib:string/function_parser/parser/start_from_x/mul/start

#去除括号
data modify storage t_algorithm_lib:string function_parser.temp.list set from storage t_algorithm_lib:string function_parser.temp.list2
data modify storage t_algorithm_lib:string function_parser.temp.list2 set value []
function t_algorithm_lib:string/function_parser/parser/start_from_x/remove_parentheses/start


data modify storage t_algorithm_lib:string function_parser.temp.list set from storage t_algorithm_lib:string function_parser.temp.list2
data modify storage t_algorithm_lib:string function_parser.temp.list2 set value []
execute store result score #tal.str.temp.list_count_b tal.input run data get storage t_algorithm_lib:string function_parser.temp.list
execute store result score #tal.str.temp.list_count tal.input run data get storage t_algorithm_lib:string function_parser.temp.list
scoreboard players set #tal.str.temp.is_operation tal.input 0
#压缩 减法
function t_algorithm_lib:string/function_parser/parser/start_from_x/subtraction/start


#去除括号
data modify storage t_algorithm_lib:string function_parser.temp.list set from storage t_algorithm_lib:string function_parser.temp.list2
data modify storage t_algorithm_lib:string function_parser.temp.list2 set value []
function t_algorithm_lib:string/function_parser/parser/start_from_x/remove_parentheses/start
#三角函数
data modify storage t_algorithm_lib:string function_parser.temp.list set from storage t_algorithm_lib:string function_parser.temp.list2
data modify storage t_algorithm_lib:string function_parser.temp.list2 set value []
function t_algorithm_lib:string/function_parser/parser/start_from_x/function_name/start

#去除括号
data modify storage t_algorithm_lib:string function_parser.temp.list set from storage t_algorithm_lib:string function_parser.temp.list2
data modify storage t_algorithm_lib:string function_parser.temp.list2 set value []
function t_algorithm_lib:string/function_parser/parser/start_from_x/remove_parentheses/start

data modify storage t_algorithm_lib:string function_parser.temp.list set from storage t_algorithm_lib:string function_parser.temp.list2
data modify storage t_algorithm_lib:string function_parser.temp.list2 set value []


execute if score #tal.str.fuc_p.show tal.input matches 1 run tellraw @a ["当前循环体:",{"nbt":"function_parser.temp.list","storage":"t_algorithm_lib:string","color":"yellow"}]
scoreboard players add #tal.str.fuc_p.len tal.input 1
execute store result score #tal.str.temp.list_count tal.input run data get storage t_algorithm_lib:string function_parser.temp.list
execute if score #tal.str.temp.list_count tal.input matches 1 run function t_algorithm_lib:string/function_parser/parser/read/check_is_v
execute if score #tal.str.temp.list_count tal.input matches 1 if score #tal.str.fuc_p.show tal.input matches 1 run tellraw @a [{"nbt":"function_parser.temp.list[0]","storage": "t_algorithm_lib:string","color": "green"}]
execute if score #tal.str.temp.list_count tal.input matches 1 if score #tal.str.fuc_p.show tal.input matches 1 at @a run playsound entity.player.levelup voice @a ~ ~ ~ 1 2
execute if score #tal.str.temp.list_count tal.input matches 1 at @a run scoreboard players set #tal.str.fuc_p.show tal.input 1
execute if score #tal.str.fuc_p.len tal.input matches ..10 if score #tal.str.temp.list_count tal.input matches 2.. run function t_algorithm_lib:string/function_parser/parser/read/loop