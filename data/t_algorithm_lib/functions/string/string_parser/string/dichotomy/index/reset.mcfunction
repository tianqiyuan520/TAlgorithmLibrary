#二分法 初始分数 小 指针 大


scoreboard players set #tal.str_p.index tal.str_parser 0
scoreboard players set #tal.str_p.index.small tal.str_parser 0
scoreboard players operation #tal.str_p.index.big tal.str_parser = #tal.str_p.char_count tal.str_parser

scoreboard players set #tal.str_p.index.init tal.str_parser 1

scoreboard players set #tal.str_p.SpecialChar tal.str_parser 0