#二分法 初始分数 小 指针 大


scoreboard players set #tal.str_p.index tal.input 0
scoreboard players set #tal.str_p.index.small tal.input 0
scoreboard players operation #tal.str_p.index.big tal.input = #tal.str_p.char_count tal.input

scoreboard players set #tal.str_p.index.init tal.input 1

scoreboard players set #tal.str_p.SpecialChar tal.input 0