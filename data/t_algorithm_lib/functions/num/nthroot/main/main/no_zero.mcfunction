execute store result score #tal.num.nthroot.ir tal.str_parser run data get storage t_algorithm_lib:num nthroot.main.stack[-1].is_return
# execute store result score #tal.num.nthroot.last tal.str_parser run data get storage t_algorithm_lib:num nthroot.main.stack[-1].last

execute if score #tal.num.nthroot.ir tal.str_parser matches 1 run function t_algorithm_lib:num/nthroot/main/main/last

execute if score #tal.num.nthroot.ir tal.str_parser matches 0 run function t_algorithm_lib:num/nthroot/main/main/no_return
