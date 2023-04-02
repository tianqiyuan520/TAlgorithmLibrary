###Base64 解码
##ascii转Base64

#先将字符串解析

data modify storage t_algorithm_lib:string temp.list2 set from storage t_algorithm_lib:string_parser io.parameter

data modify storage t_algorithm_lib:string_parser io.parameter set value {limitTime:10000,len:49,timer:0b,printable:0b,statement:["limitTime:设置循环拆解字符次数,防止死循环","len为限制 拆解的字符个数,","timer:是否计时拆解时间","printable:是否启动 拆解结果告知"]}
data modify storage t_algorithm_lib:string_parser io.command set value 'function t_algorithm_lib:string/base64/decode/wait_for_p'
##源数据 参数
##data modify storage t_algorithm_lib:string_parser io.input set value 'ewogICJ0aW1lc3RhbXAiIDogMTY2NTgzMDU3MzQ2NSwKICAic'
function t_algorithm_lib:string/string_parser/call
execute if score #tal.sign_version tal.input matches 2 run function t_algorithm_lib:string/base64/decode/wait_for_p