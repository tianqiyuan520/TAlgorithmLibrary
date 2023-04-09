##保存#tal.num.simple_sprt.input int的值
scoreboard players operation #tal.num.simple_sprt.temp4 tal.input = #tal.num.simple_sprt.input tal.input
##*1000
scoreboard players operation #tal.num.simple_sprt.input tal.input *= #10000 tal.input
function t_algorithm_lib:num/simple_sprt/start
execute store result score #tal.num.simple_sprt.temp1 tal.input run scoreboard players operation #tal.num.simple_sprt.temp3 tal.input = #tal.num.simple_sprt.input_ tal.input
scoreboard players operation #tal.num.simple_sprt.temp1 tal.input *= #tal.num.simple_sprt.temp3 tal.input
execute if score #tal.num.simple_sprt.temp1 tal.input > #tal.num.simple_sprt.input tal.input run function t_algorithm_lib:num/simple_sprt/remove
scoreboard players operation #tal.num.simple_sprt.temp5 tal.input = #tal.num.simple_sprt.temp3 tal.input
scoreboard players operation #tal.num.simple_sprt.temp5 tal.input *= #2 tal.input
scoreboard players add #tal.num.simple_sprt.temp5 tal.input 1
scoreboard players operation #tal.num.simple_sprt.temp3 tal.input *= #10 tal.input
scoreboard players operation #tal.num.simple_sprt.input_ tal.input = #tal.num.simple_sprt.input tal.input
scoreboard players operation #tal.num.simple_sprt.input_ tal.input -= #tal.num.simple_sprt.temp1 tal.input
scoreboard players operation #tal.num.simple_sprt.temp6 tal.input = #tal.num.simple_sprt.input_ tal.input
scoreboard players operation #tal.num.simple_sprt.input_ tal.input /= #tal.num.simple_sprt.temp5 tal.input
scoreboard players operation #tal.num.simple_sprt.temp6 tal.input %= #tal.num.simple_sprt.temp5 tal.input
scoreboard players operation #tal.num.simple_sprt.input_ tal.input *= #10 tal.input
scoreboard players operation #tal.num.simple_sprt.temp6 tal.input *= #10 tal.input
scoreboard players operation #tal.num.simple_sprt.temp6 tal.input /= #tal.num.simple_sprt.temp5 tal.input
scoreboard players operation #tal.num.simple_sprt.input_ tal.input += #tal.num.simple_sprt.temp6 tal.input
scoreboard players operation #tal.num.simple_sprt.input_ tal.input += #tal.num.simple_sprt.temp3 tal.input
##重加载#tal.num.simple_sprt.input int的值
scoreboard players operation #tal.num.simple_sprt.input tal.input = #tal.num.simple_sprt.temp4 tal.input