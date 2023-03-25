scoreboard players set #tal.str_p.char.bigger tal.str_parser 0
#进行判断
execute store result score #tal.str_p.char.success tal.str_parser run tag 00000000-0000-1d63-0000-000000000000 list

execute store success score #tal.str_p.char.bigger tal.str_parser run data modify block -29999999 2 2022230 LastOutput set from block -29999999 2 2022229 LastOutput
#如果为 1 则该数是大于 原数字
#判断 大小 进行分数修改
##大于 需index减少
execute if score #tal.str_p.index tal.str_parser >= #tal.str_p.index.big tal.str_parser run scoreboard players operation #tal.str_p.index.big tal.str_parser = #tal.str_p.char_count tal.str_parser
execute if score #tal.str_p.char.bigger tal.str_parser matches 1 run function t_algorithm_lib:string/string_parser/string/dichotomy/index/reduce
##小于 需index增加
execute if score #tal.str_p.char.bigger tal.str_parser matches 0 run function t_algorithm_lib:string/string_parser/string/dichotomy/index/increase

##解决特殊字符所用字符串组修改 (解决 ! 字符)

#大于

execute if score #tal.str_p.SpecialChar tal.str_parser matches 1 if score #tal.str_p.char.bigger tal.str_parser matches 1 run data modify storage t_algorithm_lib:string_parser char.check_last_last set from storage t_algorithm_lib:string_parser char.true_char[-1]
execute if score #tal.str_p.SpecialChar tal.str_parser matches 1 if score #tal.str_p.char.bigger tal.str_parser matches 1 run data modify storage t_algorithm_lib:string_parser char.true_char[-1] set from storage t_algorithm_lib:string_parser char.check_last
execute if score #tal.str_p.SpecialChar tal.str_parser matches 1 if score #tal.str_p.char.bigger tal.str_parser matches 1 run function t_algorithm_lib:string/string_parser/string/dichotomy/index/reset


#如果小于

execute if score #tal.str_p.SpecialChar tal.str_parser matches 2 run scoreboard players set #tal.str_p.SpecialChar tal.str_parser 0
execute unless score #tal.str_p.SpecialChar tal.str_parser matches 0 run scoreboard players add #tal.str_p.SpecialChar tal.str_parser 1
##
#解决 " "字符
execute store success score #tal.str_p.char.IsChanged tal.str_parser run data modify storage t_algorithm_lib:string_parser temp.charsCheck_IsChanged set from storage t_algorithm_lib:string_parser char.check

execute if score #tal.str_p.char.IsChanged tal.str_parser matches 0 run data modify storage t_algorithm_lib:string_parser char.true_char append value " "



###
scoreboard players operation #tal.str_p.index.step tal.str_parser = #tal.str_p.index.big tal.str_parser
scoreboard players operation #tal.str_p.index.step tal.str_parser -= #tal.str_p.index tal.str_parser

#二分法精确到正确字符 添加字符到匹配列表中 
execute if score #tal.str_p.char.bigger tal.str_parser matches 1 if score #tal.str_p.char.bigger2 tal.str_parser matches 0 if score #tal.str_p.index.step tal.str_parser matches 1 run function t_algorithm_lib:string/string_parser/string/dichotomy/true_check_add

#赋值上一次的判断大小 为当前的判断大小
scoreboard players operation #tal.str_p.char.bigger2 tal.str_parser = #tal.str_p.char.bigger tal.str_parser
#存储上次的 判断结果 
execute unless score #tal.str_p.SpecialChar tal.str_parser matches 1 run data modify storage t_algorithm_lib:string_parser char.check_last set from storage t_algorithm_lib:string_parser char.check[-1]


#####
#如果 匹配未成功 则 继续循环
#获取已完成拆解的个数
execute store result score #tal.str_p.char.solveCount tal.str_parser run data get storage t_algorithm_lib:string_parser io.output

execute if score #tal.str_p.char.limlit tal.str_parser > #tal.str_p.char.TotalLimlit tal.str_parser run function t_algorithm_lib:string/string_parser/string/dichotomy/end
# execute if score #tal.str_p.char.limlit tal.str_parser matches 900.. run function t_algorithm_lib:string/string_parser/string/dichotomy/end

#######匹配完成
#判断是否需结束
execute if score #tal.str_p.char.success tal.str_parser matches 1 run function t_algorithm_lib:string/string_parser/string/dichotomy/success
execute if score #tal.str_p.char.solveCount tal.str_parser >= #tal.str_p.char.len tal.str_parser run function t_algorithm_lib:string/string_parser/string/dichotomy/success

##越界 溯回
execute if score #tal.str_p.char.bigger tal.str_parser matches 0 if score #tal.str_p.index tal.str_parser > #tal.str_p.char_count tal.str_parser run function t_algorithm_lib:string/string_parser/string/dichotomy/over_array
execute if score #tal.str_p.char.re_read tal.str_parser matches 2..5 run function t_algorithm_lib:string/string_parser/string/dichotomy/re_read_list
