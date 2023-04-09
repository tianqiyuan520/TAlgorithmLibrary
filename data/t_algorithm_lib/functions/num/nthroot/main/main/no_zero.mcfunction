execute store result score #tal.num.nthroot.ir tal.input run data get storage t_algorithm_lib:num nthroot.main.stack[-1].is_return
# execute store result score #tal.num.nthroot.last tal.input run data get storage t_algorithm_lib:num nthroot.main.stack[-1].last

execute if score #tal.num.nthroot.ir tal.input matches 1 run function t_algorithm_lib:num/nthroot/main/main/last

execute if score #tal.num.nthroot.ir tal.input matches 0 run function t_algorithm_lib:num/nthroot/main/main/no_return
