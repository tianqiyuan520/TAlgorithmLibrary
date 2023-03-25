###计算任意对数
##换底公式 logb(a) = ln(a)/ln(b)
##log2(300) = ln(300)/ln(2)
#源数据
#底数
# scoreboard players set #tal.num.log.num1 tal.str_parser 2
#对数
# scoreboard players set #tal.num.log.num2 tal.str_parser 300


#
data modify storage t_algorithm_lib:num double_calculation set value {num1:1.0,num2:1.0,operation:4,temp:{num1:[],num2:[]}}


scoreboard players operation #tal.num.ln.num1 tal.str_parser = #tal.num.log.num2 tal.str_parser
function t_algorithm_lib:num/logarithm/ln/start
execute store result storage t_algorithm_lib:num double_calculation.num1 double 1 run scoreboard players get #tal.num.ln.result tal.str_parser

scoreboard players operation #tal.num.ln.num1 tal.str_parser = #tal.num.log.num1 tal.str_parser
function t_algorithm_lib:num/logarithm/ln/start
execute store result storage t_algorithm_lib:num double_calculation.num2 double 1 run scoreboard players get #tal.num.ln.result tal.str_parser


function t_algorithm_lib:num/double_calculation/start