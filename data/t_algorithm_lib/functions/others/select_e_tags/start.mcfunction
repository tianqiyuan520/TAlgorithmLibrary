###球体范围（通过自定义Tags查找实体）

##[自定义输入] tags类型
# data modify storage t_algorithm_lib:others select_e_tags.input set value {}
##例如:
# data modify storage t_algorithm_lib:others select_e_tags.input set value {UUID:[I;1,1,1,1],Pos:[0d,0d,0d]...}

scoreboard players set #tal.select_e_tags.check_time tal.input 0
execute as @e run function t_algorithm_lib:others/select_e_tags/main

##[返回结果] 匹配成功的实体的个数
data modify storage t_algorithm_lib:others select_e_tags.result set value 0.0
execute store result storage t_algorithm_lib:others select_e_tags.result int 1 run scoreboard players get #tal.select_e_tags.check_time tal.input
