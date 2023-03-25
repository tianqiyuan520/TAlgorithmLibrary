##除法
##被除数



#乘法中的乘数
scoreboard players set #tal.num.hpc.division_mul_1 tal.str_parser 0
scoreboard players set #tal.num.hpc.division_mul_2 tal.str_parser 0
##控制循环结束
scoreboard players set #tal.num.hpc.division.end tal.str_parser 0


##循环
function t_algorithm_lib:num/double_calculation/operation/division/loop

