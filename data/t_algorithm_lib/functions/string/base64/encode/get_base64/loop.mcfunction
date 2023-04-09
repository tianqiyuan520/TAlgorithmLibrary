#获取二进制 6个
data modify storage t_algorithm_lib:string base64.encode.list_check set value {num1:0,num2:0,num3:0,num4:0,num5:0,num6:0}
execute store result score #tal.str.base64.encode.num1 tal.input run data get storage t_algorithm_lib:string base64.encode.list1[0]
execute store result score #tal.str.base64.encode.num2 tal.input run data get storage t_algorithm_lib:string base64.encode.list1[1]
execute store result score #tal.str.base64.encode.num3 tal.input run data get storage t_algorithm_lib:string base64.encode.list1[2]
execute store result score #tal.str.base64.encode.num4 tal.input run data get storage t_algorithm_lib:string base64.encode.list1[3]
execute store result score #tal.str.base64.encode.num5 tal.input run data get storage t_algorithm_lib:string base64.encode.list1[4]
execute store result score #tal.str.base64.encode.num6 tal.input run data get storage t_algorithm_lib:string base64.encode.list1[5]
##判断
function t_algorithm_lib:string/base64/encode/get_base64/check



data remove storage t_algorithm_lib:string base64.encode.list1[0]
data remove storage t_algorithm_lib:string base64.encode.list1[0]
data remove storage t_algorithm_lib:string base64.encode.list1[0]
data remove storage t_algorithm_lib:string base64.encode.list1[0]
data remove storage t_algorithm_lib:string base64.encode.list1[0]
data remove storage t_algorithm_lib:string base64.encode.list1[0]


execute store result score #tal.str.base64.encode.list_count tal.input run data get storage t_algorithm_lib:string base64.encode.list1
execute if score #tal.str.base64.encode.list_count tal.input matches 6.. run function t_algorithm_lib:string/base64/encode/get_base64/loop