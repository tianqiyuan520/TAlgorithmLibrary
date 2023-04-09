scoreboard players set #1000 tal.input 1000

scoreboard players operation #tal.num.random.lcg.num tal.input *= #tal.num.random.lcg.a tal.input
scoreboard players operation #tal.num.random.lcg.num tal.input += #tal.num.random.lcg.c tal.input
scoreboard players operation #tal.num.random.lcg.num tal.input %= #tal.num.random.lcg.m tal.input


scoreboard players operation #tal.num.random.lcg.num tal.input *= #1000 tal.input
scoreboard players remove #tal.num.random.lcg.m tal.input 1
scoreboard players operation #tal.num.random.lcg.num tal.input /= #tal.num.random.lcg.m tal.input


##获取范围
scoreboard players operation #tal.num.random.lcg.limit2 tal.input -= #tal.num.random.lcg.limit1 tal.input
scoreboard players operation #tal.num.random.lcg.limit1 tal.input *= #1000 tal.input

scoreboard players operation #tal.num.random.lcg.num tal.input *= #tal.num.random.lcg.limit2 tal.input
scoreboard players operation #tal.num.random.lcg.num tal.input += #tal.num.random.lcg.limit1 tal.input

scoreboard players operation #tal.num.random.lcg.num tal.input /= #1000 tal.input

