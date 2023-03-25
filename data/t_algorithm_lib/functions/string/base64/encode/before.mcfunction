###Base64 编码
##ascii转Base64

#先将字符串解析

data modify storage t_algorithm_lib:string temp.list2 set from storage t_algorithm_lib:string_parser io.parameter

data modify storage t_algorithm_lib:string_parser io.parameter set value {limitTime:1000,len:58,timer:0b,printable:0b,statement:["limitTime:设置循环拆解字符次数,防止死循环","len为限制 拆解的字符个数,","timer:是否计时拆解时间","printable:是否启动 拆解结果告知"]}
data modify storage t_algorithm_lib:string_parser io.command set value 'function t_algorithm_lib:string/base64/encode/wait_for_p'
##源数据 参数
## data modify storage t_algorithm_lib:string_parser io.input set value 'This is an example!!'
schedule function t_algorithm_lib:string/string_parser/call 1t append