##进行补位
function t_algorithm_lib:string/jaro_similarity/complement/start

##获取可移位的个数
scoreboard players set #2 tal.str_parser 2
execute store result score #tal.str.jaro_similarity.c_s tal.str_parser run data get storage t_algorithm_lib:string jaro_similarity.strA
scoreboard players operation #tal.str.jaro_similarity.c_s tal.str_parser /= #2 tal.str_parser
scoreboard players remove #tal.str.jaro_similarity.c_s tal.str_parser 1

data modify storage t_algorithm_lib:string jaro_similarity.return set value 0

##指针
scoreboard players set #tal.str.jaro_similarity.index tal.str_parser 0
##数据 [1,3,2] 存储指针的数组
data modify storage t_algorithm_lib:string jaro_similarity.index set value []
##匹配的个数
scoreboard players set #tal.str.jaro_similarity.m tal.str_parser 0
##错序的个数
scoreboard players set #tal.str.jaro_similarity.t tal.str_parser 0
##循环所需变量
scoreboard players set #tal.str.jaro_similarity.num tal.str_parser 0
scoreboard players set #tal.str.jaro_similarity.num2 tal.str_parser 0
scoreboard players set #tal.str.jaro_similarity.num3 tal.str_parser 0

##循环判断
data modify storage t_algorithm_lib:string jaro_similarity.list1 set from storage t_algorithm_lib:string jaro_similarity.strA
data modify storage t_algorithm_lib:string jaro_similarity.list2 set from storage t_algorithm_lib:string jaro_similarity.strB
execute store result score #tal.str.jaro_similarity.list_count1 tal.str_parser run data get storage t_algorithm_lib:string jaro_similarity.list1
execute if score #tal.str.jaro_similarity.list_count1 tal.str_parser matches 1.. run function t_algorithm_lib:string/jaro_similarity/loop/loop


##确认错序的字符
data modify storage t_algorithm_lib:string jaro_similarity.list1 set from storage t_algorithm_lib:string jaro_similarity.index
execute if score #tal.str.jaro_similarity.list_count1 tal.str_parser matches 1.. run function t_algorithm_lib:string/jaro_similarity/loop/check_t

##代入到算法中 ( m/s1 + m/s2+ (m-t)/m )/3
scoreboard players set #10000 tal.str_parser 10000
scoreboard players set #3 tal.str_parser 3
scoreboard players operation #tal.str.jaro_similarity.m tal.str_parser *= #10000 tal.str_parser
scoreboard players operation #tal.str.jaro_similarity.t tal.str_parser *= #10000 tal.str_parser

scoreboard players set #2 tal.str_parser 2
scoreboard players operation #tal.str.jaro_similarity.t tal.str_parser /= #2 tal.str_parser

scoreboard players operation #tal.str.jaro_similarity.num tal.str_parser = #tal.str.jaro_similarity.m tal.str_parser
execute store result score #tal.str.jaro_similarity.list_count1 tal.str_parser run data get storage t_algorithm_lib:string jaro_similarity.strA
scoreboard players operation #tal.str.jaro_similarity.num tal.str_parser /= #tal.str.jaro_similarity.list_count1 tal.str_parser

scoreboard players operation #tal.str.jaro_similarity.num2 tal.str_parser = #tal.str.jaro_similarity.m tal.str_parser
execute store result score #tal.str.jaro_similarity.list_count1 tal.str_parser run data get storage t_algorithm_lib:string jaro_similarity.strB
scoreboard players operation #tal.str.jaro_similarity.num2 tal.str_parser /= #tal.str.jaro_similarity.list_count1 tal.str_parser

scoreboard players operation #tal.str.jaro_similarity.num3 tal.str_parser = #tal.str.jaro_similarity.m tal.str_parser
scoreboard players operation #tal.str.jaro_similarity.num3 tal.str_parser -= #tal.str.jaro_similarity.t tal.str_parser
scoreboard players operation #tal.str.jaro_similarity.m tal.str_parser /= #10000 tal.str_parser
scoreboard players operation #tal.str.jaro_similarity.num3 tal.str_parser /= #tal.str.jaro_similarity.m tal.str_parser


scoreboard players operation #tal.str.jaro_similarity.num tal.str_parser += #tal.str.jaro_similarity.num2 tal.str_parser
scoreboard players operation #tal.str.jaro_similarity.num tal.str_parser += #tal.str.jaro_similarity.num3 tal.str_parser

scoreboard players operation #tal.str.jaro_similarity.num tal.str_parser /= #3 tal.str_parser

##返回结果(Double类型 [0,1])
execute store result storage t_algorithm_lib:string jaro_similarity.return double 0.0001 run scoreboard players get #tal.str.jaro_similarity.num tal.str_parser
