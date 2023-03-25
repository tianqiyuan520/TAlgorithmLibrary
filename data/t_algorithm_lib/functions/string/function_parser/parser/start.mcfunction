##先进行分类 
##5+13*x^(5-x)+(5-3)/2+5
##[5,+,13,*,x,^,(,5,-,x,),+,(5,-,3),/,2,+,5]
##[[5],[+],[13],[*],[x],[^],[[5],[-],[x]],[+],[[5],[-],[3]],[/],[2],[+],[5]]

data modify storage t_algorithm_lib:string function_parser.separation set value []
data modify storage t_algorithm_lib:string function_parser.temp.separation set from storage t_algorithm_lib:string function_parser.input
data modify storage t_algorithm_lib:string function_parser.temp.list set value []
function t_algorithm_lib:string/function_parser/parser/separate/start


##分类后进行读取
function t_algorithm_lib:string/function_parser/parser/read/start

##精度 0为低精度，1为高精度
scoreboard players set #tal.str.func_p.scale tal.str_parser 1