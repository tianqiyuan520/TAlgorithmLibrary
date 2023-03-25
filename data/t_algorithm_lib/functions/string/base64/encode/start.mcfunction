
##二进制的数组
data modify storage t_algorithm_lib:string base64.encode.bin set value []
data modify storage t_algorithm_lib:string base64.encode.result set value []
##遍历的数组
data modify storage t_algorithm_lib:string base64.encode.list1 set from storage t_algorithm_lib:string base64.encode.input
##获取ASCII对应的二进制
execute store result score #tal.str.base64.encode.list_count tal.str_parser run data get storage t_algorithm_lib:string base64.encode.list1
execute if score #tal.str.base64.encode.list_count tal.str_parser matches 1.. run function t_algorithm_lib:string/base64/encode/get_bin/loop
##补0
execute store result score #tal.str.base64.encode.list_count tal.str_parser run data get storage t_algorithm_lib:string base64.encode.input
#求余
scoreboard players set #3 tal.str_parser 3
scoreboard players operation #tal.str.base64.encode.list_count tal.str_parser %= #3 tal.str_parser
execute if score #tal.str.base64.encode.list_count tal.str_parser matches 2 run data modify storage t_algorithm_lib:string base64.encode.bin append value 0
execute if score #tal.str.base64.encode.list_count tal.str_parser matches 2 run data modify storage t_algorithm_lib:string base64.encode.bin append value 0
execute if score #tal.str.base64.encode.list_count tal.str_parser matches 1 run data modify storage t_algorithm_lib:string base64.encode.bin append value 0
execute if score #tal.str.base64.encode.list_count tal.str_parser matches 1 run data modify storage t_algorithm_lib:string base64.encode.bin append value 0
execute if score #tal.str.base64.encode.list_count tal.str_parser matches 1 run data modify storage t_algorithm_lib:string base64.encode.bin append value 0
execute if score #tal.str.base64.encode.list_count tal.str_parser matches 1 run data modify storage t_algorithm_lib:string base64.encode.bin append value 0
##对照base64表获取数据
scoreboard players set #tal.str.base64.encode.index tal.str_parser 0
##遍历的数组
data modify storage t_algorithm_lib:string base64.encode.list1 set from storage t_algorithm_lib:string base64.encode.bin
data modify storage t_algorithm_lib:string base64.encode.list2 set value []

execute store result score #tal.str.base64.encode.list_count tal.str_parser run data get storage t_algorithm_lib:string base64.encode.list1
execute if score #tal.str.base64.encode.list_count tal.str_parser matches 1.. run function t_algorithm_lib:string/base64/encode/get_base64/loop

#如果有剩余<=5则继续
execute store result score #tal.str.base64.encode.list_count tal.str_parser run data get storage t_algorithm_lib:string base64.encode.list1
execute if score #tal.str.base64.encode.list_count tal.str_parser matches 1..5 run data modify storage t_algorithm_lib:string base64.encode.list1 prepend value 0
execute store result score #tal.str.base64.encode.list_count tal.str_parser run data get storage t_algorithm_lib:string base64.encode.list1
execute if score #tal.str.base64.encode.list_count tal.str_parser matches 1..5 run data modify storage t_algorithm_lib:string base64.encode.list1 prepend value 0
execute store result score #tal.str.base64.encode.list_count tal.str_parser run data get storage t_algorithm_lib:string base64.encode.list1
execute if score #tal.str.base64.encode.list_count tal.str_parser matches 1..5 run data modify storage t_algorithm_lib:string base64.encode.list1 prepend value 0
execute store result score #tal.str.base64.encode.list_count tal.str_parser run data get storage t_algorithm_lib:string base64.encode.list1
execute if score #tal.str.base64.encode.list_count tal.str_parser matches 1..5 run data modify storage t_algorithm_lib:string base64.encode.list1 prepend value 0
execute store result score #tal.str.base64.encode.list_count tal.str_parser run data get storage t_algorithm_lib:string base64.encode.list1
execute if score #tal.str.base64.encode.list_count tal.str_parser matches 1..5 run data modify storage t_algorithm_lib:string base64.encode.list1 prepend value 0
execute if score #tal.str.base64.encode.list_count tal.str_parser matches 1.. run function t_algorithm_lib:string/base64/encode/get_base64/loop

##补 =
execute store result score #tal.str.base64.encode.list_count tal.str_parser run data get storage t_algorithm_lib:string base64.encode.input
scoreboard players set #3 tal.str_parser 3
scoreboard players operation #tal.str.base64.encode.list_count tal.str_parser %= #3 tal.str_parser
execute if score #tal.str.base64.encode.list_count tal.str_parser matches 2 run data modify storage t_algorithm_lib:string base64.encode.result append value '='
execute if score #tal.str.base64.encode.list_count tal.str_parser matches 1 run data modify storage t_algorithm_lib:string base64.encode.result append value '='
execute if score #tal.str.base64.encode.list_count tal.str_parser matches 1 run data modify storage t_algorithm_lib:string base64.encode.result append value '='