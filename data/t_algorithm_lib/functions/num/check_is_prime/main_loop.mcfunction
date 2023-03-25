
execute store result score #tal.num.nthroot.num1 tal.str_parser run data get storage t_algorithm_lib:num check_is_prime.input
execute store result score #tal.num.nthroot.num2 tal.str_parser run data get storage t_algorithm_lib:num check_is_prime.prime_list[0]

execute if score #tal.num.nthroot.num1 tal.str_parser < #tal.num.nthroot.num2 tal.str_parser run scoreboard players set #tal.num.nthroot.loop_end tal.str_parser 1

execute unless score #tal.num.nthroot.num1 tal.str_parser = #tal.num.nthroot.num2 tal.str_parser run scoreboard players operation #tal.num.nthroot.num1 tal.str_parser %= #tal.num.nthroot.num2 tal.str_parser

execute if score #tal.num.nthroot.num1 tal.str_parser matches 0 run scoreboard players set #tal.num.nthroot.end tal.str_parser 1
execute if score #tal.num.nthroot.num1 tal.str_parser matches 0 run data modify storage t_algorithm_lib:num check_is_prime.num append from storage t_algorithm_lib:num check_is_prime.prime_list[0]

execute if score #tal.num.nthroot.end tal.str_parser matches 1 if score #tal.num.nthroot.no_continue tal.str_parser matches 1 run scoreboard players set #tal.num.nthroot.loop_end tal.str_parser 1


data remove storage t_algorithm_lib:num check_is_prime.prime_list[0]
execute store result score #tal.num.nthroot.count tal.str_parser run data get storage t_algorithm_lib:num check_is_prime.prime_list
execute if score #tal.num.nthroot.count tal.str_parser matches 1.. if score #tal.num.nthroot.loop_end tal.str_parser matches 0 run function t_algorithm_lib:num/check_is_prime/main_loop