##三位精度开平方
##n若为小数可先*1000 后 将开根结果减1000^(-1/2) (即减0.03162277660168379331998893544433)
##[自定义输入] 数字
# scoreboard players set #tal.num.simple_sprt.input tal.input 1
##定义常数
scoreboard players set #1000 tal.input 1000
scoreboard players set #10 tal.input 10
scoreboard players set #2 tal.input 2
scoreboard players set #10000 tal.input 10000

##根据范围选择运算
execute if score #tal.num.simple_sprt.input tal.input matches ..10000 run function t_algorithm_lib:num/simple_sprt/range3
execute if score #tal.num.simple_sprt.input tal.input matches 10001.. run function t_algorithm_lib:num/simple_sprt/range4


##返回结果
# scoreboard players get #tal.num.simple_sprt.input_ tal.input