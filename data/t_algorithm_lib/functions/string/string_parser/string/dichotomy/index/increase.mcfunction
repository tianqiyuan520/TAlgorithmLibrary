#二分法 初始分数 小 指针 大

scoreboard players operation #tal.str_p.index.small tal.input = #tal.str_p.index tal.input

scoreboard players operation #tal.str_p.index.step tal.input = #tal.str_p.index.big tal.input
scoreboard players operation #tal.str_p.index.step tal.input -= #tal.str_p.index tal.input
#二分法
scoreboard players operation #tal.str_p.index.step tal.input /= #tal.str_p.num.2 tal.input

execute if score #tal.str_p.index.step tal.input matches 0 run scoreboard players set #tal.str_p.index.step tal.input 1

execute if score #tal.str_p.index.step tal.input matches ..3 run scoreboard players set #tal.str_p.index.step tal.input 1
execute unless score #tal.str_p.SpecialChar tal.input matches 0 run scoreboard players set #tal.str_p.index.step tal.input 1


scoreboard players operation #tal.str_p.index tal.input += #tal.str_p.index.step tal.input
