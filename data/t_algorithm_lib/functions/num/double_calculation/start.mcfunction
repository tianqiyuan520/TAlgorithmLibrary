###double类型高精度加减乘除

data modify storage t_algorithm_lib:num temp.preparation_chars set from storage t_algorithm_lib:string_parser preparation_chars
data modify storage t_algorithm_lib:num temp.parameter set from storage t_algorithm_lib:string_parser io.parameter
data modify storage t_algorithm_lib:string_parser preparation_chars set value ["+","-",".","0","1","2","3","4","5","6","7","8","9","E",""]
data modify storage t_algorithm_lib:string_parser io.parameter set value {limitTime:10000,len:10000,timer:0b,printable:0b,statement:["limitTime:设置循环拆解字符次数,防止死循环","len为限制 拆解的字符个数,","timer:是否计时拆解时间","printable:是否启动 拆解结果告知"]}

data modify storage t_algorithm_lib:string_parser io.command set value 'function t_algorithm_lib:num/double_calculation/wait_for_p'


##num1 数1和 num2 数2 operation运算法则 0不作计算 1加法 2减法 3乘法 4除法
# data modify storage t_algorithm_lib:num double_calculation set value {num1:15311111186.3352,num2:311112.78,operation:1,temp:{num1:[],num2:[]},Command:""}

data modify storage t_algorithm_lib:string_parser io.input set from storage t_algorithm_lib:num double_calculation.num1
#{num1:15311111186.113352,num2:311155512.78991,operation:1,temp:{num1:[],num2:[]}}

schedule function t_algorithm_lib:string/string_parser/call 1t append