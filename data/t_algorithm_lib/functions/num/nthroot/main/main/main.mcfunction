##main
##判断是否为质数
execute store result score #tal.num.nthroot.num1 tal.input run data get storage t_algorithm_lib:num nthroot.main.stack[-1].num2
##
data modify storage t_algorithm_lib:num check_is_prime.input set from storage t_algorithm_lib:num nthroot.main.stack[-1].num2
function t_algorithm_lib:num/check_is_prime/start
execute store result score #tal.num.nthroot.num2 tal.input run data get storage t_algorithm_lib:num check_is_prime.result[0][0]
execute store result score #tal.num.nthroot.num_s tal.input run data get storage t_algorithm_lib:num check_is_prime.result[1][-1]

#是否为质数，且是第一次
scoreboard players set #tal.num.nthroot.is_z tal.input 0
execute store result score #tal.num.nthroot.num3 tal.input run data get storage t_algorithm_lib:num nthroot.main.stack[-1].is_return
execute if score #tal.num.nthroot.num3 tal.input matches 0 if score #tal.num.nthroot.num2 tal.input matches 1 run function t_algorithm_lib:num/nthroot/main/main/match_zero

execute if score #tal.num.nthroot.is_z tal.input matches 0 run function t_algorithm_lib:num/nthroot/main/main/no_zero


##循环
execute store result score #tal.num.nthroot.num3 tal.input run data get storage t_algorithm_lib:num nthroot.main.stack
scoreboard players add #tal.num.nthroot.i tal.input 1
execute if score #tal.num.nthroot.num3 tal.input matches 1 run function t_algorithm_lib:num/nthroot/main/end

execute if score #tal.num.nthroot.num3 tal.input matches 2.. if score #tal.num.nthroot.i tal.input < #tal.num.nthroot.i2 tal.input run schedule function t_algorithm_lib:num/nthroot/main/main/main 1t replace