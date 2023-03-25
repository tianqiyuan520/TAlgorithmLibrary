# tellraw @a ["嵌套值 ",{"nbt":"calculator.main.stack[-1][0][0]","storage":"t_algorithm_lib:maths"}]


data modify storage t_algorithm_lib:maths calculator.content set from storage t_algorithm_lib:maths calculator.main.stack[-1][0][0]
data remove storage t_algorithm_lib:maths calculator.content[0]
data remove storage t_algorithm_lib:maths calculator.content[-1]
function t_algorithm_lib:maths/calculator/transformation/init


data modify storage t_algorithm_lib:maths calculator.transformation.input set from storage t_algorithm_lib:maths calculator.temp.data2
function t_algorithm_lib:maths/calculator/transformation/start


##新建栈
data modify storage t_algorithm_lib:maths calculator.main.stack append value [[],[],[0]]

data modify storage t_algorithm_lib:maths calculator.main.stack[-1][0] set from storage t_algorithm_lib:maths calculator.transformation.s1


data modify storage t_algorithm_lib:maths calculator.main.stack[-1][1] set value []

execute store result score #tal.maths.calculator.list_count tal.str_parser run data get storage t_algorithm_lib:maths calculator.main.stack[-1][0]
# tellraw @a ["新栈 ",{"nbt":"calculator.main.stack[-1]","storage":"t_algorithm_lib:maths"}]

execute if score #tal.maths.calculator.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/calculator/main/loop


##处理完之后 根据函数，查表
# tellraw @a ["嵌套值2 ",{"nbt":"calculator.main.stack[-1]","storage":"t_algorithm_lib:maths"}]
# tellraw @a ["返回的值 ",{"nbt":"calculator.main.stack[-1][2][0]","storage":"t_algorithm_lib:maths"}]
# tellraw @a ["函数名 ",{"nbt":"calculator.main.stack[-1][0][0][0]","storage":"t_algorithm_lib:maths"}]

function t_algorithm_lib:maths/calculator/main/func/get_value

# tellraw @a ["对应函数处理结果",{"nbt":"calculator.main.stack[-1]","storage":"t_algorithm_lib:maths","color":"#CE445D"}]
