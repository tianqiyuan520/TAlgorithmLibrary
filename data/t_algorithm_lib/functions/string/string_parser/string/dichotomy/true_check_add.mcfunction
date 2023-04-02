#添加该字符到 匹配列表中
data modify storage t_algorithm_lib:string_parser char.true_char append from storage t_algorithm_lib:string_parser char.check[-1]
#同步匹配结果 到输出中
data modify storage t_algorithm_lib:string_parser io.output set from storage t_algorithm_lib:string_parser char.true_char
#设置 索引为 字符串匹配列表的个数，为进行下次的二分法
execute unless score #tal.str_p.char.re_read tal.input matches 10 run scoreboard players set #tal.str_p.char.re_read tal.input 0


##########################处理 " ","!" 特殊字符###################
function t_algorithm_lib:string/string_parser/string/dichotomy/index/reset

scoreboard players set #tal.str_p.SpecialChar tal.input 1
