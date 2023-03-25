scoreboard players set #1000 tal.str_parser 1000

scoreboard players operation #tal.num.random.lcg.num tal.str_parser *= #tal.num.random.lcg.a tal.str_parser
scoreboard players operation #tal.num.random.lcg.num tal.str_parser += #tal.num.random.lcg.c tal.str_parser
scoreboard players operation #tal.num.random.lcg.num tal.str_parser %= #tal.num.random.lcg.m tal.str_parser


scoreboard players operation #tal.num.random.lcg.num tal.str_parser *= #1000 tal.str_parser
scoreboard players remove #tal.num.random.lcg.m tal.str_parser 1
scoreboard players operation #tal.num.random.lcg.num tal.str_parser /= #tal.num.random.lcg.m tal.str_parser


##获取范围
scoreboard players operation #tal.num.random.lcg.limit2 tal.str_parser -= #tal.num.random.lcg.limit1 tal.str_parser
scoreboard players operation #tal.num.random.lcg.limit1 tal.str_parser *= #1000 tal.str_parser

scoreboard players operation #tal.num.random.lcg.num tal.str_parser *= #tal.num.random.lcg.limit2 tal.str_parser
scoreboard players operation #tal.num.random.lcg.num tal.str_parser += #tal.num.random.lcg.limit1 tal.str_parser

scoreboard players operation #tal.num.random.lcg.num tal.str_parser /= #1000 tal.str_parser

