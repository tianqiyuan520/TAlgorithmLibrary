##初始化

##生物
execute positioned -30000000 4 2022221 run function t_algorithm_lib:string/string_editor/merge/entity
##命令方块 自闭链
execute positioned -30000000 3 2022221 run setblock ~ ~ ~ command_block[facing=north]{Command:"data modify block -30000000 3 2022221 auto set value 0b",auto:0b} destroy
    execute positioned -30000000 3 2022220 run setblock ~ ~ ~ chain_command_block[facing=north]{Command:"function t_algorithm_lib:string/string_editor/merge/main/before",UpdateLastExecution:0b,auto:1b} destroy
    execute positioned -30000000 3 2022219 run setblock ~ ~ ~ chain_command_block[facing=north]{Command:"enchant 2023119-0000-1d63-0000-000000000001 aqua_affinity",auto:1b,UpdateLastExecution:0b} destroy
    execute positioned -30000000 3 2022218 run setblock ~ ~ ~ chain_command_block[facing=east]{Command:"function t_algorithm_lib:string/string_editor/merge/main/do",auto:1b,UpdateLastExecution:0b} destroy
    #原句子 附魔压扁
    execute positioned -29999999 3 2022218 run setblock ~ ~ ~ chain_command_block[facing=south]{Command:"enchant 2023119-0000-1d63-0000-000000000002 aqua_affinity",auto:1b,UpdateLastExecution:0b} destroy
    execute positioned -29999999 3 2022219 run setblock ~ ~ ~ chain_command_block[facing=south]{Command:"function t_algorithm_lib:string/string_editor/merge/main/fetch",auto:1b,UpdateLastExecution:0b} destroy
    execute positioned -29999999 3 2022220 run setblock ~ ~ ~ chain_command_block[facing=west]{Command:"",auto:1b,UpdateLastExecution:0b} destroy
    
#告示牌
execute positioned -30000000 4 2022221 run setblock ~ ~ ~ air
execute positioned -30000000 4 2022221 run setblock ~ ~ ~ oak_sign


