#获取二进制 8个
data modify storage t_algorithm_lib:string base64.decode.list_check set value {num1:0,num2:0,num3:0,num4:0,num5:0,num6:0}
execute store result score #tal.str.base64.decode.num1 tal.input run data get storage t_algorithm_lib:string base64.decode.list1[0]
execute store result score #tal.str.base64.decode.num2 tal.input run data get storage t_algorithm_lib:string base64.decode.list1[1]
execute store result score #tal.str.base64.decode.num3 tal.input run data get storage t_algorithm_lib:string base64.decode.list1[2]
execute store result score #tal.str.base64.decode.num4 tal.input run data get storage t_algorithm_lib:string base64.decode.list1[3]
execute store result score #tal.str.base64.decode.num5 tal.input run data get storage t_algorithm_lib:string base64.decode.list1[4]
execute store result score #tal.str.base64.decode.num6 tal.input run data get storage t_algorithm_lib:string base64.decode.list1[5]
execute store result score #tal.str.base64.decode.num7 tal.input run data get storage t_algorithm_lib:string base64.decode.list1[6]
execute store result score #tal.str.base64.decode.num8 tal.input run data get storage t_algorithm_lib:string base64.decode.list1[7]
##判断
function t_algorithm_lib:string/base64/decode/get_ascii/check


data remove storage t_algorithm_lib:string base64.decode.list1[0]
data remove storage t_algorithm_lib:string base64.decode.list1[0]
data remove storage t_algorithm_lib:string base64.decode.list1[0]
data remove storage t_algorithm_lib:string base64.decode.list1[0]
data remove storage t_algorithm_lib:string base64.decode.list1[0]
data remove storage t_algorithm_lib:string base64.decode.list1[0]
data remove storage t_algorithm_lib:string base64.decode.list1[0]
data remove storage t_algorithm_lib:string base64.decode.list1[0]


execute store result score #tal.str.base64.decode.list_count tal.input run data get storage t_algorithm_lib:string base64.decode.list1
execute if score #tal.str.base64.decode.list_count tal.input matches 8.. run function t_algorithm_lib:string/base64/decode/get_ascii/loop