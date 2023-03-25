#判断数字
data modify storage t_algorithm_lib:maths calculator.temp.num set from storage t_algorithm_lib:maths calculator.temp.n3[-1]

execute if data storage t_algorithm_lib:maths calculator.temp{num:0} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "0"
execute if data storage t_algorithm_lib:maths calculator.temp{num:[0]} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "0"

execute if data storage t_algorithm_lib:maths calculator.temp{num:1} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "1"
execute if data storage t_algorithm_lib:maths calculator.temp{num:[1]} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "1"

execute if data storage t_algorithm_lib:maths calculator.temp{num:2} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "2"
execute if data storage t_algorithm_lib:maths calculator.temp{num:[2]} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "2"

execute if data storage t_algorithm_lib:maths calculator.temp{num:3} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "3"
execute if data storage t_algorithm_lib:maths calculator.temp{num:[3]} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "3"

execute if data storage t_algorithm_lib:maths calculator.temp{num:4} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "4"
execute if data storage t_algorithm_lib:maths calculator.temp{num:[4]} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "4"

execute if data storage t_algorithm_lib:maths calculator.temp{num:5} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "5"
execute if data storage t_algorithm_lib:maths calculator.temp{num:[5]} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "5"

execute if data storage t_algorithm_lib:maths calculator.temp{num:6} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "6"
execute if data storage t_algorithm_lib:maths calculator.temp{num:[6]} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "6"

execute if data storage t_algorithm_lib:maths calculator.temp{num:7} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "7"
execute if data storage t_algorithm_lib:maths calculator.temp{num:[7]} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "7"

execute if data storage t_algorithm_lib:maths calculator.temp{num:8} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "8"
execute if data storage t_algorithm_lib:maths calculator.temp{num:[8]} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "8"

execute if data storage t_algorithm_lib:maths calculator.temp{num:9} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "9"
execute if data storage t_algorithm_lib:maths calculator.temp{num:[9]} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "9"

execute if data storage t_algorithm_lib:maths calculator.temp{num:10} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "9"
execute if data storage t_algorithm_lib:maths calculator.temp{num:[10]} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "9"

execute if data storage t_algorithm_lib:maths calculator.temp{num:["."]} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "."
execute if data storage t_algorithm_lib:maths calculator.temp{num:["+"]} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "+"
execute if data storage t_algorithm_lib:maths calculator.temp{num:["-"]} run data modify storage t_algorithm_lib:maths calculator.temp.n1 prepend value "-"


data remove storage t_algorithm_lib:maths calculator.temp.n3[-1]

execute store result score #tal.str.calculator.list_count tal.str_parser run data get storage t_algorithm_lib:maths calculator.temp.n3
execute if score #tal.str.calculator.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/calculator/main/cal/loop_sp/loop_sp
