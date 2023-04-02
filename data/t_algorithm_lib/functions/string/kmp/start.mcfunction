
##指针
scoreboard players set #tal.str.kmp.index tal.input 1
##数据 next数组
data modify storage t_algorithm_lib:string kmp.next set value [0]
##返回数据指针位置
data modify storage t_algorithm_lib:string kmp.result set value []
scoreboard players set #tal.str.kmp.index2 tal.input 0
scoreboard players set #tal.str.kmp.num tal.input 0

##生成子串的next数组
function t_algorithm_lib:string/kmp/build_next_array/loop


##循环匹配
##主串 指针
scoreboard players set #tal.str.kmp.index tal.input 0
##子串 指针
scoreboard players set #tal.str.kmp.index2 tal.input 0

##判断
function t_algorithm_lib:string/kmp/search/loop


##返回结果
# data get storage t_algorithm_lib:string kmp.result