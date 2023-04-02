###获取随机数 线性同余
##源数据
function t_algorithm_lib:num/random/get_seed/by_attributes2/start
scoreboard players operation #tal.num.random.seed tal.input %= #10000 tal.input
scoreboard players operation #tal.num.random.lcg.num tal.input = #tal.num.random.seed tal.input
# scoreboard players set #tal.num.random.lcg.num tal.input 5421

##范围 []
# scoreboard players set #tal.num.random.lcg.limit1 tal.input 0
# scoreboard players set #tal.num.random.lcg.limit2 tal.input 100



scoreboard players set #tal.num.random.lcg.m tal.input 1048576
scoreboard players set #1000 tal.input 1000
#a
scoreboard players set #100000 tal.input 100000
scoreboard players set #tal.num.random.lcg.a tal.input 100000
# function t_algorithm_lib:num/random/get_seed/by_attributes/start
# scoreboard players operation #tal.num.random.seed tal.input %= #10000 tal.input
# scoreboard players operation #tal.num.random.lcg.a tal.input = #tal.num.random.seed tal.input
#c
scoreboard players set #97152 tal.input 97152
scoreboard players set #tal.num.random.lcg.c tal.input 97152
# function t_algorithm_lib:num/random/get_seed/by_attributes/start
# scoreboard players operation #tal.num.random.seed tal.input %= #97152 tal.input
# scoreboard players operation #tal.num.random.lcg.c tal.input = #tal.num.random.seed tal.input

##结果
scoreboard players set #tal.num.random.lcg.result tal.input 0

##运算
function t_algorithm_lib:num/random/get_num/lcg/calculate
scoreboard players operation #tal.num.random.lcg.result tal.input = #tal.num.random.lcg.num tal.input

##范围
scoreboard players set #tal.num.random.lcg.limit1 tal.input 0
scoreboard players set #tal.num.random.lcg.limit2 tal.input 100