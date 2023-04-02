###牛顿插值法
##[自定义输入] 二维坐标样本数组
# data modify storage t_algorithm_lib:maths newton_interpolation.input set value [[1d,-2d],[2d,-1d],[5d,3d],[3d,2d]]
##[自定义输入] 差商次数
scoreboard players set #tal.maths.newton_interpolation.time tal.input 5

##获取差商
function t_algorithm_lib:maths/newton_interpolation/difference_quotient/start
##x的循环
scoreboard players set #tal.maths.newton_interpolation.xloop tal.input 0
##构造多项式
function t_algorithm_lib:maths/newton_interpolation/main


##返回结果 数学表达式
data modify storage t_algorithm_lib:maths newton_interpolation.result set from storage t_algorithm_lib:maths newton_interpolation.func
