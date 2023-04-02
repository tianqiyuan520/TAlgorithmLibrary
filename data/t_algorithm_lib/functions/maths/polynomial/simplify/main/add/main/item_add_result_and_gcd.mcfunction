## ( result +/- 第二项 ) * gcd

data modify storage t_algorithm_lib:maths polynomial.temp.list[0] prepend value []
#result
execute store result score #tal.maths.polynomial.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.add.temp.result
execute if score #tal.maths.polynomial.list_count tal.input matches 0 run data modify storage t_algorithm_lib:maths polynomial.add.temp.result append value [[[1]],['^'],[[1]]]
function t_algorithm_lib:maths/polynomial/simplify/main/add/main/read_loop2
#添加符号 和第二项
data modify storage t_algorithm_lib:maths polynomial.temp.list[0] append from storage t_algorithm_lib:maths polynomial.add.symbol
data modify storage t_algorithm_lib:maths polynomial.temp.list[0] append value []
data modify storage t_algorithm_lib:maths polynomial.temp.list[0][2] append from storage t_algorithm_lib:maths polynomial.add.list2[]

#判断 是否添加gcd
execute store result score #tal.maths.polynomial.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.add.temp.gcd
scoreboard players set #tal.maths.polynomial.is_gcd tal.input 0
# [ [1],[2],[3],[4]...  ] [+] , [2]
execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run data modify storage t_algorithm_lib:maths polynomial.temp.list prepend value [[]]
execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run data modify storage t_algorithm_lib:maths polynomial.temp.list[0][0] append from storage t_algorithm_lib:maths polynomial.temp.list[1][]
execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run data remove storage t_algorithm_lib:maths polynomial.temp.list[1]
execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run data modify storage t_algorithm_lib:maths polynomial.temp.list[0] prepend value ['*']
execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run data modify storage t_algorithm_lib:maths polynomial.temp.list[0] prepend value []
execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run scoreboard players set #tal.maths.polynomial.is_gcd tal.input 1
execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/read_loop