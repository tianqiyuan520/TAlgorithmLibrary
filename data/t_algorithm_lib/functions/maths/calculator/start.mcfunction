###表达式求值
##原理：中缀转后缀，后缀执行运算



##[自定义输入]表达式
# data modify storage t_algorithm_lib:maths calculator.input set value [['cos('],['sin('],['x'],[')'],[')'],['+'],['x']]
# data modify storage t_algorithm_lib:maths calculator.input set value [['x'],['+'],[3]]
# data modify storage t_algorithm_lib:maths calculator.input set value [[1], ['+'], [10], ['-'], [1], ['+'], ['cos('], ['tan('], ['x'], ['+'], [1],['-'],[1], [')'], ['+'], [5], ['!'], ['-'], [3], ['^'], [3], [')']]
# data modify storage t_algorithm_lib:maths calculator.input set value [['abs('],[-3],[')']]
# data modify storage t_algorithm_lib:maths calculator.input set value [['ab('],[2],[','],[','],[300],[','],[','],['x'],[')']]
##[自定义输入]代数
# data modify storage t_algorithm_lib:maths calculator.args set value [{"id":"x",value:3.0d}]
##[自定义输入]是否提示运算结束
# scoreboard players set #tal.maths.calculator.remind tal.input 1

##若要添加自定义函数，需在calculator\separate\symbol\is_paren.mcfunction , calculator\separate\symbol\check_paren_loop.mcfunction 添加判断


data modify storage t_algorithm_lib:maths calculator.content set from storage t_algorithm_lib:maths calculator.input
function t_algorithm_lib:maths/calculator/transformation/init


data modify storage t_algorithm_lib:maths calculator.transformation.input set from storage t_algorithm_lib:maths calculator.temp.data2
function t_algorithm_lib:maths/calculator/transformation/start

##新建栈
data modify storage t_algorithm_lib:maths calculator.main.stack set value [[[],[],[0]]]


data modify storage t_algorithm_lib:maths calculator.main.stack[-1][0] set from storage t_algorithm_lib:maths calculator.transformation.s1
##[返回结果] 
# data get storage t_algorithm_lib:maths calculator.result
function t_algorithm_lib:maths/calculator/main/start

##[自定义]精度 0为低精度，1为高精度
scoreboard players set #tal.maths.calculator.scale tal.input 0

##初始化
execute unless data storage t_algorithm_lib:maths calculator.input run data modify storage t_algorithm_lib:maths calculator.input set value [['sin('],[-3],[')']]



##[自定义]代数
execute unless data storage t_algorithm_lib:maths calculator.args run data modify storage t_algorithm_lib:maths calculator.args set value [{"id":"x",value:2.0d}]
