###简易开平方
##原理：
##分段函数，迭代
##详情请看：https://www.bilibili.com/read/cv5789989
##[自定义输入] 数字
# scoreboard players set #tal.num.simple_sprt.input tal.input 1
##定义常数
scoreboard players set #119 tal.input 119
scoreboard players set #4214 tal.input 4214
scoreboard players set #50436 tal.input 50436
scoreboard players set #1000 tal.input 1000
##所有变量赋值为 输入值
execute store result score #tal.num.simple_sprt.temp0 tal.input store result score #tal.num.simple_sprt.stemp1 tal.input store result score #tal.num.simple_sprt.temp3 tal.input store result score #tal.num.simple_sprt.stemp1 tal.input store result score #tal.num.simple_sprt.stemp3 tal.input run scoreboard players operation #tal.num.simple_sprt.input_ tal.input = #tal.num.simple_sprt.input tal.input
##根据输入值选择分段函数范围 将 input_ 进行处理
execute if score #tal.num.simple_sprt.input tal.input matches ..13924 run function t_algorithm_lib:num/simple_sprt/range0
execute if score #tal.num.simple_sprt.input tal.input matches 13925..16777216 run function t_algorithm_lib:num/simple_sprt/range1
execute if score #tal.num.simple_sprt.input tal.input matches 16777217.. run function t_algorithm_lib:num/simple_sprt/range2


scoreboard players operation #tal.num.simple_sprt.temp0 tal.input /= #tal.num.simple_sprt.input_ tal.input
scoreboard players operation #tal.num.simple_sprt.input_ tal.input += #tal.num.simple_sprt.temp0 tal.input
scoreboard players operation #tal.num.simple_sprt.input_ tal.input /= #2 tal.input
scoreboard players operation #tal.num.simple_sprt.stemp1 tal.input /= #tal.num.simple_sprt.input_ tal.input
scoreboard players operation #tal.num.simple_sprt.input_ tal.input += #tal.num.simple_sprt.stemp1 tal.input
scoreboard players operation #tal.num.simple_sprt.input_ tal.input /= #2 tal.input
scoreboard players operation #tal.num.simple_sprt.stemp1 tal.input /= #tal.num.simple_sprt.input_ tal.input
scoreboard players operation #tal.num.simple_sprt.input_ tal.input += #tal.num.simple_sprt.stemp1 tal.input
scoreboard players operation #tal.num.simple_sprt.input_ tal.input /= #2 tal.input
scoreboard players operation #tal.num.simple_sprt.stemp3 tal.input /= #tal.num.simple_sprt.input_ tal.input
scoreboard players operation #tal.num.simple_sprt.input_ tal.input += #tal.num.simple_sprt.stemp3 tal.input
scoreboard players operation #tal.num.simple_sprt.input_ tal.input /= #2 tal.input
##返回结果
# scoreboard players get #tal.num.simple_sprt.input_ tal.input

