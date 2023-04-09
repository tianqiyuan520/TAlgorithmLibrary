execute store result score #tal.num.nthroot.num1 tal.input run data get storage t_algorithm_lib:num nthroot.main.stack[-1].num2

data modify storage t_algorithm_lib:num nthroot.main.stack append value {num1:1,num2:1,is_return:0,return:0,last:0}
data modify storage t_algorithm_lib:num nthroot.main.stack[-1].num1 set from storage t_algorithm_lib:num nthroot.input.num
execute store result storage t_algorithm_lib:num nthroot.main.stack[-1].last double 1.0 run scoreboard players get #tal.num.nthroot.num_s tal.input
execute store result storage t_algorithm_lib:num nthroot.main.stack[-1].num2 double 1.0 run scoreboard players operation #tal.num.nthroot.num1 tal.input /= #tal.num.nthroot.num_s tal.input