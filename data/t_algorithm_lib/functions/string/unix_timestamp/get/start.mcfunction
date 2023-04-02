###获取时间戳
##通过玩家头颅获取
execute as @s positioned -30000000 -5 2022228 run loot spawn ~ ~ ~ loot t_algorithm_lib:get_player_head
execute positioned -30000000 -5 2022228 run data modify storage t_algorithm_lib:string timestamp.string set from entity @e[distance=..1,limit=1,type=minecraft:item] Item.tag.SkullOwner.Properties.textures[0].Value
execute positioned -30000000 -5 2022228 run kill @e[distance=..1,limit=1,type=minecraft:item]
##解析字符串
data modify storage t_algorithm_lib:string temp.list2 set from storage t_algorithm_lib:string_parser io.parameter

data modify storage t_algorithm_lib:string_parser io.parameter set value {limitTime:10000,len:49,timer:0b,printable:0b,statement:["limitTime:设置循环拆解字符次数,防止死循环","len为限制 拆解的字符个数,","timer:是否计时拆解时间","printable:是否启动 拆解结果告知"]}
data modify storage t_algorithm_lib:string_parser io.command set value 'function t_algorithm_lib:string/unix_timestamp/get/wait_for_p'
data modify storage t_algorithm_lib:string_parser io.input set from storage t_algorithm_lib:string timestamp.string

function t_algorithm_lib:string/string_parser/call
execute if score #tal.sign_version tal.input matches 2 run function t_algorithm_lib:string/unix_timestamp/get/wait_for_p