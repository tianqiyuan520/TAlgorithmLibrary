###判断该数是否为质数
##采用试除法 提供1-100000的质数 n % i != 0 (i∈质数表)
##该方法可优化： 不满足"质数分布规律"的 % (外部质数表-"质数分布规律") != 0
##[自定义]输入数字
# data modify storage t_algorithm_lib:num check_is_prime.input set value 33
##质数表 处理完成时移除
# data modify storage t_algorithm_lib:num check_is_prime.prime_list set value []
execute unless data storage t_algorithm_lib:num check_is_prime.prime_list run function t_algorithm_lib:num/check_is_prime/init

scoreboard players set #tal.num.nthroot.end tal.str_parser 0
scoreboard players set #tal.num.nthroot.loop_end tal.str_parser 0
scoreboard players set #tal.num.nthroot.num1 tal.str_parser 0
scoreboard players set #tal.num.nthroot.num2 tal.str_parser 0
##[自定义]是否在遇到 整除数字时立即终止
execute unless score #tal.num.nthroot.no_continue tal.str_parser matches 1 unless score #tal.num.nthroot.no_continue tal.str_parser matches 0 run scoreboard players set #tal.num.nthroot.no_continue tal.str_parser 1
##可被整除的数字集合
data modify storage t_algorithm_lib:num check_is_prime.num set value [1]

execute store result score #tal.num.nthroot.count tal.str_parser run data get storage t_algorithm_lib:num check_is_prime.prime_list
execute if score #tal.num.nthroot.count tal.str_parser matches 1.. run function t_algorithm_lib:num/check_is_prime/main_loop

##返回 [[1或0] ,[可被整除的数字集合])]
data modify storage t_algorithm_lib:num check_is_prime.result set value [[1],[0]]
execute if score #tal.num.nthroot.end tal.str_parser matches 1 run data modify storage t_algorithm_lib:num check_is_prime.result[0][0] set value 0
execute if score #tal.num.nthroot.end tal.str_parser matches 1 run data modify storage t_algorithm_lib:num check_is_prime.result[1] set from storage t_algorithm_lib:num check_is_prime.num

data remove storage t_algorithm_lib:num check_is_prime.prime_list

##[自定义]输入数字
data modify storage t_algorithm_lib:num check_is_prime.input set value 33
##[自定义]是否在遇到 整除数字时立即终止
scoreboard players set #tal.num.nthroot.no_continue tal.str_parser 1
