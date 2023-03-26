###获取随机数 线性同余
##源数据
function t_algorithm_lib:num/random/get_seed/by_attributes2/start
scoreboard players operation #tal.num.random.seed tal.str_parser %= #10000 tal.str_parser
scoreboard players operation #tal.num.random.lcg.num tal.str_parser = #tal.num.random.seed tal.str_parser
# scoreboard players set #tal.num.random.lcg.num tal.str_parser 5421

##范围 []
# scoreboard players set #tal.num.random.lcg.limit1 tal.str_parser 0
# scoreboard players set #tal.num.random.lcg.limit2 tal.str_parser 100



scoreboard players set #tal.num.random.lcg.m tal.str_parser 1048576
scoreboard players set #1000 tal.str_parser 1000
#a
scoreboard players set #100000 tal.str_parser 100000
scoreboard players set #tal.num.random.lcg.a tal.str_parser 100000
# function t_algorithm_lib:num/random/get_seed/by_attributes/start
# scoreboard players operation #tal.num.random.seed tal.str_parser %= #10000 tal.str_parser
# scoreboard players operation #tal.num.random.lcg.a tal.str_parser = #tal.num.random.seed tal.str_parser
#c
scoreboard players set #97152 tal.str_parser 97152
scoreboard players set #tal.num.random.lcg.c tal.str_parser 97152
# function t_algorithm_lib:num/random/get_seed/by_attributes/start
# scoreboard players operation #tal.num.random.seed tal.str_parser %= #97152 tal.str_parser
# scoreboard players operation #tal.num.random.lcg.c tal.str_parser = #tal.num.random.seed tal.str_parser

##结果
scoreboard players set #tal.num.random.lcg.result tal.str_parser 0

##运算
function t_algorithm_lib:num/random/get_num/lcg/calculate
scoreboard players operation #tal.num.random.lcg.result tal.str_parser = #tal.num.random.lcg.num tal.str_parser

##范围
scoreboard players set #tal.num.random.lcg.limit1 tal.str_parser 0
scoreboard players set #tal.num.random.lcg.limit2 tal.str_parser 100