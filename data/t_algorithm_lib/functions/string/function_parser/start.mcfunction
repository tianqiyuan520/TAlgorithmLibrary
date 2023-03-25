###数学函数解析
data modify storage t_algorithm_lib:string temp.preparation_chars set from storage t_algorithm_lib:string_parser preparation_chars
data modify storage t_algorithm_lib:string temp.parameter set from storage t_algorithm_lib:string_parser io.parameter
data modify storage t_algorithm_lib:string_parser preparation_chars set value [" ","!","(",")","*","+",",","-",".","/","0","1","2","3","4","5","6","7","8","9","[","]","^","_","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","{","}","~","∑","∞","∫",""]
data modify storage t_algorithm_lib:string_parser io.parameter set value {limitTime:1000,len:1000,timer:0b,printable:0b,statement:["limitTime:设置循环拆解字符次数,防止死循环","len为限制 拆解的字符个数,","timer:是否计时拆解时间","printable:是否启动 拆解结果告知"]}
data modify storage t_algorithm_lib:string_parser io.command set value '/function t_algorithm_lib:string/function_parser/wait_for_p'


##函数
## data modify storage t_algorithm_lib:string_parser io.input set value 'x+2.0+x*x/x-5.2-3.8'
## data modify storage t_algorithm_lib:string_parser io.input set value '2.0+3'
## data modify storage t_algorithm_lib:string_parser io.input set value '1-7.332'
## data modify storage t_algorithm_lib:string_parser io.input set value '1-7.332'
# data modify storage t_algorithm_lib:string function_parser.arg.x set value 7.332
##参数 自变量
# data modify storage t_algorithm_lib:string function_parser.arg set value {x:200}
# data modify storage t_algorithm_lib:string function_parser.arg append value {a:2}
# data modify storage t_algorithm_lib:string function_parser.arg append value {b:2}
# data modify storage t_algorithm_lib:string function_parser.arg append value {c:2}


schedule function t_algorithm_lib:string/string_parser/call 1t append