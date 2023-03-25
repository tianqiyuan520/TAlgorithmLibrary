##除法 
## a/b
##小数点 x*10^a / y*10^b  = x/y * 10^(a-b)
##小数点 #tal.num.hpc.division.fill_t tal.str_parser(相对与于除数的补位) + #tal.num.hpc.num2_p tal.str_parser - #tal.num.hpc.num1_p tal.str_parser
## 循环被除数，余数加后面的数位(若没有则补0)

##除数

data modify storage t_algorithm_lib:num double_calculation.division.N2 set from storage t_algorithm_lib:num double_calculation.temp.num2
##除数
data modify storage t_algorithm_lib:num double_calculation.division.num2 set from storage t_algorithm_lib:num double_calculation.temp.num2
# data modify storage t_algorithm_lib:num double_calculation.division.num1 set value [1,3,0]
data modify storage t_algorithm_lib:num double_calculation.division.num1 set from storage t_algorithm_lib:num double_calculation.temp.num1



#个位数
scoreboard players set #tal.num.hpc.division_extra tal.str_parser 0
#限制循环次数
scoreboard players set #tal.num.hpc.division_time tal.str_parser 50
#结果
data modify storage t_algorithm_lib:num double_calculation.division_result set value [0]
#后续需加法
data modify storage t_algorithm_lib:num double_calculation.division_result2 set value []

##进行补位
#补位个数
# tellraw @a ["被除数 ",{"nbt":"double_calculation.division.num1","storage": "t_algorithm_lib:num","color": "red"},"\n除数 ",{"nbt":"double_calculation.division.num2","storage": "t_algorithm_lib:num","color": "yellow"}]
scoreboard players set #tal.num.hpc.division.fill_t tal.str_parser 0
function t_algorithm_lib:num/double_calculation/operation/division/complement/start
# tellraw @a ["被除数2 ",{"nbt":"double_calculation.division.num1","storage": "t_algorithm_lib:num","color": "red"},"\n除数 ",{"nbt":"double_calculation.division.num2","storage": "t_algorithm_lib:num","color": "yellow"}]

##循环的备份
data modify storage t_algorithm_lib:num double_calculation.division.num1_ set from storage t_algorithm_lib:num double_calculation.division.num1
data modify storage t_algorithm_lib:num double_calculation.division.num1 set value [0]
data modify storage t_algorithm_lib:num double_calculation.division.num1[0] set from storage t_algorithm_lib:num double_calculation.division.num1_[0]
data remove storage t_algorithm_lib:num double_calculation.division.num1_[0]

# data modify storage t_algorithm_lib:num double_calculation.division.num2 set value [3,7,8]

#除法
data modify storage t_algorithm_lib:num double_calculation.division.num3 set value [2]
data modify storage t_algorithm_lib:num double_calculation.division.num4 set value []



##先将 除数的乘法1-9处理好，减少迭代量
data modify storage t_algorithm_lib:num double_calculation.division.num2_mul set value []

##求乘数
data modify storage t_algorithm_lib:num double_calculation.division.num3 set from storage t_algorithm_lib:num double_calculation.division.num2
scoreboard players set #tal.num.hpc.division_mul_1 tal.str_parser 0
data modify storage t_algorithm_lib:num double_calculation.division.num4 set value []

#乘数循环1-9
scoreboard players set #tal.num.hpc.division_mul_time tal.str_parser 0

##新值的小数点
scoreboard players set #tal.num.hpc.division.num_pr tal.str_parser 10000000
##记录 是否第一次加0
scoreboard players set #tal.num.hpc.division.num_add_p tal.str_parser 0

data modify storage t_algorithm_lib:num double_calculation.division.num2_mul append from storage t_algorithm_lib:num double_calculation.division.num2
execute if score #tal.num.hpc.division_mul_time tal.str_parser matches ..8 run function t_algorithm_lib:num/double_calculation/operation/division/get_mul_loop


##预先 添加
# execute store result score #tal.num.hpc.list_count tal.str_parser run data get storage t_algorithm_lib:num double_calculation.division.num1
# execute store result score #tal.num.hpc.list_count2 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.division.num2
# scoreboard players operation #tal.num.hpc.list_count2 tal.str_parser -= #tal.num.hpc.list_count tal.str_parser
# execute if score #tal.num.hpc.list_count2 tal.str_parser matches 1.. run function t_algorithm_lib:num/double_calculation/operation/division/add_loop



# schedule function t_algorithm_lib:num/double_calculation/operation/division/start 1t append
function t_algorithm_lib:num/double_calculation/operation/division/start

# tellraw @a ["第",{"score":{"objective":"tal.str_parser","name":"#tal.num.hpc.division_time"}},"次","结果 ",{"nbt":"double_calculation.division_result","storage": "t_algorithm_lib:num","color":"#B8DC9C"}]

# tellraw @a ["小数点 ",{"score":{"objective":"tal.str_parser","name":"#tal.num.hpc.division.num_pr"}}]
# tellraw @a ["小数点2 ",{"score":{"objective":"tal.str_parser","name":"#tal.num.hpc.division.fill_t"}}]
function t_algorithm_lib:num/double_calculation/operation/division/end

tellraw @a ["结果 ",{"nbt":"double_calculation.temp.result","storage": "t_algorithm_lib:num","color":"#B8DC9C"}]
