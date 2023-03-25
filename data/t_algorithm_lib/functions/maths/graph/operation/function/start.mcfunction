##函数处理
##返回 坐标集
##通用：type类型 content内容 time持续时间(tick)
##循环终止
scoreboard players set #tal.maths.graph.loop_end tal.str_parser 0

# data modify storage t_algorithm_lib:maths graph.operation.function.input set value {type:"function",content:{function:"2*cos(x)",variable:[{id:'x',value:{range:[3d,3d],step:0.1}}]},time:20,style:1}
data modify storage t_algorithm_lib:maths graph.operation.function.result set value []

##渲染函数
##e.g. {type:"function",content:{function:"x+a",variable:[{id:'x',value:{range:[0,3],step:0.1}},{id:'a',value:{range:[1]}}]},time:20}  range为自变量范围,step为步长. 运算结果为 一系列函数值坐标系


###数学函数解析
data modify storage t_algorithm_lib:string temp.preparation_chars set from storage t_algorithm_lib:string_parser preparation_chars
data modify storage t_algorithm_lib:string temp.parameter set from storage t_algorithm_lib:string_parser io.parameter
data modify storage t_algorithm_lib:string_parser preparation_chars set value [" ","!","(",")","*","+",",","-",".","/","0","1","2","3","4","5","6","7","8","9","[","]","^","_","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","{","}","~","∑","∞","∫",""]
data modify storage t_algorithm_lib:string_parser io.parameter set value {limitTime:1000,len:1000,timer:0b,printable:0b,statement:["limitTime:设置循环拆解字符次数,防止死循环","len为限制 拆解的字符个数,","timer:是否计时拆解时间","printable:是否启动 拆解结果告知"]}
data modify storage t_algorithm_lib:string_parser io.command set value '/function t_algorithm_lib:maths/graph/operation/function/wait_for_p'
##函数
data modify storage t_algorithm_lib:string_parser io.input set from storage t_algorithm_lib:maths graph.operation.function.input.content.function

function t_algorithm_lib:string/string_parser/call
