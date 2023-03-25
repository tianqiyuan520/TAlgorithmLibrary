##函数
data modify storage t_algorithm_lib:maths calculator.temp.char set from storage t_algorithm_lib:maths calculator.main.stack[-1][0][0][0]
data modify storage t_algorithm_lib:maths calculator.main.fuc_value set value 0
execute if data storage t_algorithm_lib:maths calculator.temp{char:["cos("]} run function t_algorithm_lib:maths/calculator/main/func/cos
execute if data storage t_algorithm_lib:maths calculator.temp{char:["sin("]} run function t_algorithm_lib:maths/calculator/main/func/sin
execute if data storage t_algorithm_lib:maths calculator.temp{char:["tan("]} run function t_algorithm_lib:maths/calculator/main/func/tan
execute if data storage t_algorithm_lib:maths calculator.temp{char:["abs("]} run function t_algorithm_lib:maths/calculator/main/func/abs
execute if data storage t_algorithm_lib:maths calculator.temp{char:["ln("]} run function t_algorithm_lib:maths/calculator/main/func/ln




##数字入栈
data modify storage t_algorithm_lib:maths calculator.main.stack[-1][1] append value []
data modify storage t_algorithm_lib:maths calculator.main.stack[-1][1][-1] append from storage t_algorithm_lib:maths calculator.main.fuc_value