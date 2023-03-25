forceload remove -30000000 2022228
forceload add -30000000 2022228

# data modify storage t_algorithm_lib:string_parser preparation_chars set value [" ","!","#","$","%","&","'","(",")","*","+",",","-",".","/","0","1","2","3","4","5","6","7","8","9",":",";","<","=",">","?","@","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","[","\"","\\","\\n","]","^","_","`","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","{","|","}","~","世","你","好","我","界","的",""]
data modify storage t_algorithm_lib:string_parser preparation_chars set value [" ","!","#","$","%","&","'","(",")","*","+",",","-",".","/","0","1","2","3","4","5","6","7","8","9",":",";","<","=",">","?","@","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","[","\"","\\","\\n","]","^","_","`","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","{","|","}","~",""]
#索引到的字符串组
data modify storage t_algorithm_lib:string_parser char.check set value []
#正确的字符串组
data modify storage t_algorithm_lib:string_parser char.true_char set value []
#玩家输入流
data modify storage t_algorithm_lib:string_parser io.input set value ""
#玩家回调函数
data remove storage t_algorithm_lib:string_parser io.command
#玩家输出流 
data modify storage t_algorithm_lib:string_parser io.output set value [""]
#创建计分板
scoreboard objectives add tal.str_parser dummy {"text": "[T算法库]字符串解析通用计分板","color": "green"}
#字符串组 临时  解析 列表为json的text (解决 " 字符)
# 存储字符串组，进行递归 remove
data modify storage t_algorithm_lib:string_parser temp.chars set value []
#(解决 " " 字符)
data modify storage t_algorithm_lib:string_parser temp.charsCheck_IsChanged set value []
# 递归结果
data modify storage t_algorithm_lib:string_parser temp.result set value ["",""]
###
#进行二分法的准备
scoreboard players set #tal.str_p.num.2 tal.str_parser 2
    #获取 备选字的数量
    execute store result score #tal.str_p.char_count tal.str_parser run data get storage t_algorithm_lib:string_parser preparation_chars
    #获取一半
    execute store result score #tal.str_p.half tal.str_parser run data get storage t_algorithm_lib:string_parser preparation_chars
    scoreboard players operation #tal.str_p.half tal.str_parser /= #tal.str_p.num.2 tal.str_parser
    #设置索引为 0
    scoreboard players set #tal.str_p.index tal.str_parser 0


#搭建方块

    # setblock -30000000 3 2022230 minecraft:command_block[facing=down]{Command:"function t_algorithm_lib:string/string_parser/string/dichotomy/before",auto:0b}
    execute positioned -30000000 2 2022232 run setblock ~ ~ ~ command_block[facing=north]{Command:"data modify block -30000000 2 2022232 auto set value 0b",auto:0b} destroy
    execute positioned -30000000 2 2022231 run setblock ~ ~ ~ chain_command_block[facing=north]{Command:"function t_algorithm_lib:string/string_parser/string/dichotomy/before",UpdateLastExecution:0b,auto:1b} destroy
    execute positioned -30000000 2 2022230 run setblock ~ ~ ~ chain_command_block[facing=north]{Command:"enchant 00000000-0000-1d63-0000-000000000003 aqua_affinity",auto:1b,UpdateLastExecution:0b} destroy
    execute positioned -30000000 2 2022229 run setblock ~ ~ ~ chain_command_block[facing=north]{Command:"enchant 00000000-0000-1d63-0000-000000000004 aqua_affinity",auto:1b,UpdateLastExecution:0b} destroy
    #原句子 附魔压扁
    execute positioned -30000000 2 2022228 run setblock ~ ~ ~ chain_command_block[facing=north]{Command:"function t_algorithm_lib:string/string_parser/string/dichotomy/do",auto:1b,TrackOutput:0b,UpdateLastExecution:0b} destroy
    execute positioned -30000000 2 2022227 run setblock ~ ~ ~ chain_command_block[facing=east]{Command:"tag 00000000-0000-1d63-0000-000000000000 list",auto:1b,UpdateLastExecution:0b} destroy
    #获取 help 来获取时间
    execute positioned -29999999 2 2022227 run setblock ~ ~ ~ chain_command_block[facing=south]{Command:"help me",auto:1b,UpdateLastExecution:0b} destroy
    #构造假输出
    execute positioned -29999999 2 2022228 run setblock ~ ~ ~ chain_command_block[facing=south]{Command:"function t_algorithm_lib:string/string_parser/string/dichotomy/name",auto:1b,TrackOutput:0b,UpdateLastExecution:0b} destroy
    #进行压扁处理
    #压扁名称
    execute positioned -29999999 2 2022229 run setblock ~ ~ ~ chain_command_block[facing=south]{Command:"enchant 00000000-0000-1d63-0000-000000000002 aqua_affinity",auto:1b,UpdateLastExecution:0b} destroy
    execute positioned -29999999 2 2022230 run setblock ~ ~ ~ chain_command_block[facing=south]{Command:"enchant 00000000-0000-1d63-0000-000000000001 aqua_affinity",auto:1b,UpdateLastExecution:0b} destroy
    #判断
    execute positioned -29999999 2 2022231 run setblock ~ ~ ~ chain_command_block[facing=west]{Command:"function t_algorithm_lib:string/string_parser/string/dichotomy/check",auto:1b,TrackOutput:0b,UpdateLastExecution:0b} destroy


    execute positioned -30000000 3 2022228 run setblock ~ ~ ~ dirt
#告示牌
execute positioned -30000000 4 2022228 run setblock ~ ~ ~ air
execute positioned -30000000 4 2022228 run setblock ~ ~ ~ oak_sign destroy

#创建实体
function t_algorithm_lib:string/string_parser/check/entity_is_alive

##玩家自定义参数
data modify storage t_algorithm_lib:string_parser io.parameter set value {limitTime:10000,len:10000,timer:1b,printable:1b,statement:["limitTime:设置循环拆解字符次数,防止死循环","len为限制 拆解的字符个数,","timer:是否计时拆解时间","printable:是否启动 拆解结果告知"]}