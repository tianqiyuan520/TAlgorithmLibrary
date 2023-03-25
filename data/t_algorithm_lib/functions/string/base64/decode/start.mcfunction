
##二进制的数组
data modify storage t_algorithm_lib:string base64.decode.bin set value []
data modify storage t_algorithm_lib:string base64.decode.result set value []
##遍历的数组
data modify storage t_algorithm_lib:string base64.decode.list1 set from storage t_algorithm_lib:string base64.decode.input
##获取Base64对应的二进制
execute store result score #tal.str.base64.decode.list_count tal.str_parser run data get storage t_algorithm_lib:string base64.decode.list1
execute if score #tal.str.base64.decode.list_count tal.str_parser matches 1.. run function t_algorithm_lib:string/base64/decode/get_bin/loop

##对照ASCII表获取数据
scoreboard players set #tal.str.base64.decode.index tal.str_parser 0
##遍历的数组
data modify storage t_algorithm_lib:string base64.decode.list1 set from storage t_algorithm_lib:string base64.decode.bin
data modify storage t_algorithm_lib:string base64.decode.list2 set value []

execute store result score #tal.str.base64.decode.list_count tal.str_parser run data get storage t_algorithm_lib:string base64.decode.list1
execute if score #tal.str.base64.decode.list_count tal.str_parser matches 1.. run function t_algorithm_lib:string/base64/decode/get_ascii/loop
