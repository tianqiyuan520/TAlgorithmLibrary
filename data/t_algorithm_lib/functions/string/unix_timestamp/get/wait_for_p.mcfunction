
data modify storage t_algorithm_lib:string_parser io.parameter set from storage t_algorithm_lib:string temp.parameter
#获取解析后的式子
data modify storage t_algorithm_lib:string base64.decode.input set from storage t_algorithm_lib:string_parser io.output
##开始Base64解码
function t_algorithm_lib:string/base64/decode/start
data modify storage t_algorithm_lib:string timestamp.input set from storage t_algorithm_lib:string base64.decode.result
##抽取数字部分
data modify storage t_algorithm_lib:array take_num.list set from storage t_algorithm_lib:string timestamp.input
function t_algorithm_lib:array/take_str_num_for_array/start
data remove storage t_algorithm_lib:array take_num.list2[-1]
data remove storage t_algorithm_lib:array take_num.list2[-1]
data remove storage t_algorithm_lib:array take_num.list2[-1]
##数字合并
data modify storage t_algorithm_lib:array temp.list set from storage t_algorithm_lib:array take_num.list2
function t_algorithm_lib:array/num_array_to_num/start
execute store result storage t_algorithm_lib:string timestamp.time int 1 run scoreboard players get #tal.array.temp.num tal.str_parser
##转为现实时间
function t_algorithm_lib:string/unix_timestamp/to_realistic_time/start