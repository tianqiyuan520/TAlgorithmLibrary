###KMP字符串匹配算法

data modify storage t_algorithm_lib:string temp.list2 set from storage t_algorithm_lib:string_parser io.parameter

data modify storage t_algorithm_lib:string_parser io.parameter set value {limitTime:1000,len:58,timer:0b,printable:0b,statement:["limitTime:设置循环拆解字符次数,防止死循环","len为限制 拆解的字符个数,","timer:是否计时拆解时间","printable:是否启动 拆解结果告知"]}
data modify storage t_algorithm_lib:string_parser io.command set value 'function t_algorithm_lib:string/kmp/wait_for_p'

data modify storage t_algorithm_lib:string_parser io.input set from storage t_algorithm_lib:string kmp.input1


##源数据 参数 主串字符串A 子串字符串B
execute unless data storage t_algorithm_lib:string kmp.input1 run data modify storage t_algorithm_lib:string kmp.input1 set value 'abababc'
execute unless data storage t_algorithm_lib:string kmp.input2 run data modify storage t_algorithm_lib:string kmp.input2 set value 'aba'
schedule function t_algorithm_lib:string/string_parser/call 1t append