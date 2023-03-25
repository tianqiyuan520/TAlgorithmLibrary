###检测字符串 全部字符为 字母
# data modify storage t_algorithm_lib:string temp.preparation_chars set from storage t_algorithm_lib:string_parser preparation_chars
data modify storage t_algorithm_lib:string temp.parameter set from storage t_algorithm_lib:string_parser io.parameter
data modify storage t_algorithm_lib:string_parser io.parameter set value {limitTime:10000,len:10000,timer:0b,printable:0b,statement:["limitTime:设置循环拆解字符次数,防止死循环","len为限制 拆解的字符个数,","timer:是否计时拆解时间","printable:是否启动 拆解结果告知"]}
data modify storage t_algorithm_lib:string_parser io.command set value '/function t_algorithm_lib:string/check/all_is_char/wait_for_p'

##源数据 参数
# data modify storage t_algorithm_lib:string_parser io.input set value '1235'
schedule function t_algorithm_lib:string/string_parser/call 1t append