function t_algorithm_lib:num/simple_sprt/start
##变量赋值为 处理后的input_
execute store result score #tal.num.simple_sprt.temp1 tal.input run scoreboard players operation #tal.num.simple_sprt.temp3 tal.input = #tal.num.simple_sprt.input_ tal.input
##平方 temp1=input_^2
scoreboard players operation #tal.num.simple_sprt.temp1 tal.input *= #tal.num.simple_sprt.temp3 tal.input
##判断 大于则变为 ( input_ -1)*input_
execute if score #tal.num.simple_sprt.temp1 tal.input > #tal.num.simple_sprt.input tal.input run function t_algorithm_lib:num/simple_sprt/remove
##平方的值  or((input_^2),( input_ -1)*input_)
##temp5 = 平方后的值 * 2 + 1
scoreboard players operation #tal.num.simple_sprt.temp5 tal.input = #tal.num.simple_sprt.temp3 tal.input
scoreboard players operation #tal.num.simple_sprt.temp5 tal.input *= #2 tal.input
scoreboard players add #tal.num.simple_sprt.temp5 tal.input 1
## temp3 = 平方后的值*1000
scoreboard players operation #tal.num.simple_sprt.temp3 tal.input *= #1000 tal.input
## input_ = input- 平方的值
scoreboard players operation #tal.num.simple_sprt.input_ tal.input = #tal.num.simple_sprt.input tal.input
scoreboard players operation #tal.num.simple_sprt.input_ tal.input -= #tal.num.simple_sprt.temp1 tal.input
##  temp6 = 新的input_
scoreboard players operation #tal.num.simple_sprt.temp6 tal.input = #tal.num.simple_sprt.input_ tal.input
scoreboard players operation #tal.num.simple_sprt.input_ tal.input /= #tal.num.simple_sprt.temp5 tal.input
scoreboard players operation #tal.num.simple_sprt.temp6 tal.input %= #tal.num.simple_sprt.temp5 tal.input
scoreboard players operation #tal.num.simple_sprt.input_ tal.input *= #1000 tal.input
scoreboard players operation #tal.num.simple_sprt.temp6 tal.input *= #1000 tal.input
scoreboard players operation #tal.num.simple_sprt.temp6 tal.input /= #tal.num.simple_sprt.temp5 tal.input
scoreboard players operation #tal.num.simple_sprt.input_ tal.input += #tal.num.simple_sprt.temp6 tal.input
scoreboard players operation #tal.num.simple_sprt.input_ tal.input += #tal.num.simple_sprt.temp3 tal.input