## ( result +/- 第二项 ) * gcd

#result
function t_algorithm_lib:maths/polynomial/simplify/main/add/main/read_loop3
#添加符号 和第二项
data modify storage t_algorithm_lib:maths polynomial.temp.list[0] append from storage t_algorithm_lib:maths polynomial.add.symbol
data modify storage t_algorithm_lib:maths polynomial.temp.list[0] append value []
data modify storage t_algorithm_lib:maths polynomial.temp.list[0][-1] append from storage t_algorithm_lib:maths polynomial.add.list2[]

#判断 是否添加gcd
execute store result score #tal.maths.polynomial.list_count tal.str_parser run data get storage t_algorithm_lib:maths polynomial.add.temp.gcd
scoreboard players set #tal.maths.polynomial.is_gcd tal.str_parser 0
# [ [1],[2],[3],[4]...  ] [+] , [2]
execute if score #tal.maths.polynomial.list_count tal.str_parser matches 1.. run data modify storage t_algorithm_lib:maths polynomial.temp.list prepend value [[]]
execute if score #tal.maths.polynomial.list_count tal.str_parser matches 1.. run data modify storage t_algorithm_lib:maths polynomial.temp.list[0][0] append from storage t_algorithm_lib:maths polynomial.temp.list[1][]
execute if score #tal.maths.polynomial.list_count tal.str_parser matches 1.. run data remove storage t_algorithm_lib:maths polynomial.temp.list[1]
execute if score #tal.maths.polynomial.list_count tal.str_parser matches 1.. run data modify storage t_algorithm_lib:maths polynomial.temp.list[0] prepend value ['*']
execute if score #tal.maths.polynomial.list_count tal.str_parser matches 1.. run data modify storage t_algorithm_lib:maths polynomial.temp.list[0] prepend value []
execute if score #tal.maths.polynomial.list_count tal.str_parser matches 1.. run scoreboard players set #tal.maths.polynomial.is_gcd tal.str_parser 1
execute if score #tal.maths.polynomial.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/read_loop