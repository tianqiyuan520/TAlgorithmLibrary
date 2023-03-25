#二分法 初始分数 小 指针 大

scoreboard players operation #tal.str_p.index.small tal.str_parser = #tal.str_p.index tal.str_parser

scoreboard players operation #tal.str_p.index.step tal.str_parser = #tal.str_p.index.big tal.str_parser
scoreboard players operation #tal.str_p.index.step tal.str_parser -= #tal.str_p.index tal.str_parser
#二分法
scoreboard players operation #tal.str_p.index.step tal.str_parser /= #tal.str_p.num.2 tal.str_parser

execute if score #tal.str_p.index.step tal.str_parser matches 0 run scoreboard players set #tal.str_p.index.step tal.str_parser 1

execute if score #tal.str_p.index.step tal.str_parser matches ..3 run scoreboard players set #tal.str_p.index.step tal.str_parser 1
execute unless score #tal.str_p.SpecialChar tal.str_parser matches 0 run scoreboard players set #tal.str_p.index.step tal.str_parser 1


scoreboard players operation #tal.str_p.index tal.str_parser += #tal.str_p.index.step tal.str_parser
