##判断给定的二维数组是否为行列式
##原理：面积法：将数组所有元素提取到一个数组中，判断数组开根值是否为整数。二维数组所有值都为 相同 类型
##行列式[
##      [1d,3d,5d,...,2d]
##      [1d,2.5d,5d,...,2d]
##      ...
##]

##[自定义输入]二维数组
# data modify storage t_algorithm_lib:maths determinant.check.input set value [[]]
##判断
data modify storage t_algorithm_lib:maths determinant.check.list set value []
##[返回结果] bool类型
data modify storage t_algorithm_lib:maths determinant.check.result set value 0b
scoreboard players set #tal.maths.determinant.check tal.input 0
##
data modify storage t_algorithm_lib:maths determinant.check.list append from storage t_algorithm_lib:maths determinant.check.input[][]

##调用平方
execute store result score #tal.maths.determinant.num tal.input store result score #tal.num.simple_sprt.input tal.input run data get storage t_algorithm_lib:maths determinant.check.list
function t_algorithm_lib:num/simple_sprt/_3start
scoreboard players operation #tal.num.simple_sprt.input_ tal.input /= #1000 tal.input
scoreboard players operation #tal.num.determinant.t tal.input = #tal.num.simple_sprt.input_ tal.input
scoreboard players operation #tal.num.simple_sprt.input_ tal.input *= #tal.num.simple_sprt.input_ tal.input
execute if score #tal.maths.determinant.num tal.input = #tal.num.simple_sprt.input_ tal.input run data modify storage t_algorithm_lib:maths determinant.check.result set value 1b
execute if score #tal.maths.determinant.num tal.input = #tal.num.simple_sprt.input_ tal.input run scoreboard players set #tal.maths.determinant.check tal.input 1
