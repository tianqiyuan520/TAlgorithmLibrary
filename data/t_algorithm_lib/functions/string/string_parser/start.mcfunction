

# execute positioned -30000000 2 2022231 run data modify block ~ ~ ~ auto set value 0b
#检查生物完整性
function t_algorithm_lib:string/string_parser/check/entity_is_alive
#给予玩家标签，控制是否要输出 拆解结果
execute if entity @s[type=minecraft:player] run function t_algorithm_lib:string/string_parser/tag
#读取玩家输入的文本
execute positioned -29999999.42 4.64 2022228.75 run data modify block ~ ~ ~ Text1 set value '{"nbt":"io.input","storage":"t_algorithm_lib:string_parser"}'
#索引到的字符串组
data modify storage t_algorithm_lib:string_parser char.check set value []
#正确的字符串组
data modify storage t_algorithm_lib:string_parser char.true_char set value []
#玩家输入流
#data modify storage t_algorithm_lib:string_parser io.input set value ""
#玩家输出流
data modify storage t_algorithm_lib:string_parser io.output set value []

data modify storage t_algorithm_lib:string_parser char.check_last set value ""

scoreboard players set #tal.str_p.num.2 tal.str_parser 2
#进行二分法的准备
    #获取 备选字的数量
    execute store result score #tal.str_p.char_count tal.str_parser run data get storage t_algorithm_lib:string_parser preparation_chars
    #获取一半
    execute store result score #tal.str_p.half tal.str_parser run data get storage t_algorithm_lib:string_parser preparation_chars
    scoreboard players operation #tal.str_p.half tal.str_parser /= #tal.str_p.num.2 tal.str_parser
    #设置索引为 0
    scoreboard players set #tal.str_p.index tal.str_parser 0
##
data modify storage t_algorithm_lib:string_parser io.temp.input set from storage t_algorithm_lib:string_parser io.input
###自定义参数
#读取玩家设置的循环次数
execute store result score #tal.str_p.char.TotalLimlit tal.str_parser run data get storage t_algorithm_lib:string_parser io.parameter.limitTime
#读取玩家设置的 拆解的字符限制个数
execute store result score #tal.str_p.char.len tal.str_parser run data get storage t_algorithm_lib:string_parser io.parameter.len
#是否启动计时器
execute store result score #tal.str_p.char.timer_on tal.str_parser run data get storage t_algorithm_lib:string_parser io.parameter.timer
#是否启动 拆解开头与结果告知
execute store result score #tal.str_p.char.printable tal.str_parser run data get storage t_algorithm_lib:string_parser io.parameter.printable
####

#检测大小 tag list中前后位置
scoreboard players set #tal.str_p.char.bigger tal.str_parser 0
scoreboard players set #tal.str_p.char.bigger2 tal.str_parser 0


#设置循环次数限制 防止死循环
scoreboard players set #tal.str_p.char.limlit tal.str_parser 0

#设置 是否成功
scoreboard players set #tal.str_p.char.success tal.str_parser 0
#字符串组 临时  解析 列表为json的text
# 存储字符串组，进行递归 remove
data modify storage t_algorithm_lib:string_parser temp.chars set value []
# 递归结果
data modify storage t_algorithm_lib:string_parser temp.result set value ["",""]


###
scoreboard players set #tal.str_p.char.IsChanged tal.str_parser 1
#解决特殊字符所用计分板
scoreboard players set #tal.str_p.SpecialChar tal.str_parser 0
#开始
data modify entity 00000000-0000-1d63-0000-000000000000 CustomName set value '"/me <action>"'
#重置计时
scoreboard players set #tal.str_p.char.timer tal.str_parser 0
function t_algorithm_lib:string/string_parser/string/dichotomy/index/reset
scoreboard players set #tal.str_p.char.solveCount tal.str_parser 0
scoreboard players set #tal.str_p.char.stop tal.str_parser 0
execute positioned -30000000 2 2022232 run data modify block ~ ~ ~ auto set value 1b

data modify storage t_algorithm_lib:string_parser temp.result_last set value ''

scoreboard players set #tal.str_p.char.IsChanged_ tal.str_parser 0
scoreboard players set #tal.str_p.list_to_string.count_last_ tal.str_parser 0
scoreboard players set #tal.str_p.list_to_string.count_last tal.str_parser 0
scoreboard players set #tal.str_p.char.IsChanged_ tal.str_parser 0
scoreboard players set #tal.str_p.char.re_read tal.str_parser 0
scoreboard players set #tal.str_p.char.re_read_check tal.str_parser 0

execute if score #tal.str_p.char.printable tal.str_parser matches 1 run tellraw @p [{"text":"[TDictionary] ","color": "#a8a8a8"},{"text":"[","color": "white"},{"text":"点击查看","color": "yellow","clickEvent": {"action": "suggest_command","value": "/data get storage t_algorithm_lib:string_parser io.output"},"bold": true},{"text":"]","color": "white"}]

execute positioned -30000000 2 2022233 run setblock ~ ~ ~ air

execute positioned -30000000 2 2022231 run setblock ~ ~ ~ chain_command_block[facing=north]{Command:"function t_algorithm_lib:string/string_parser/string/dichotomy/before",UpdateLastExecution:0b,auto:1b} destroy
