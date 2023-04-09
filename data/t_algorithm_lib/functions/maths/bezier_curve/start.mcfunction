###n阶贝塞尔曲线

##[自定义输入] 开始点
# data modify storage t_algorithm_lib:maths bezier_curve.input.pos1 set value [0d,3d,0d]
##[自定义输入] 结束点
# data modify storage t_algorithm_lib:maths bezier_curve.input.pos2 set value [1d,3d,2d]
##[自定义输入] 控制点 数组
# data modify storage t_algorithm_lib:maths bezier_curve.input.pos3 set value [[10d,5d,1d],[-10d,-5d,3d],[-5d,-3d,-10d]]
##[自定义输入] 迭代次数
# scoreboard players set #tal.maths.bezier_curve.time tal.input 3000
##[自定义输入] 是否一直渲染
# scoreboard players set #tal.maths.bezier_curve.always tal.input 0
execute unless score #tal.maths.bezier_curve.time tal.input matches -2147483648..2147483647 run scoreboard players set #tal.maths.bezier_curve.time tal.input 300
data modify storage t_algorithm_lib:maths bezier_curve.result set value []
##生成两个实体
function t_algorithm_lib:maths/bezier_curve/init
##倒序遍历 Pos
data modify storage t_algorithm_lib:maths bezier_curve.Pos_list set from storage t_algorithm_lib:maths bezier_curve.input.pos3
data modify storage t_algorithm_lib:maths bezier_curve.Pos_list prepend from storage t_algorithm_lib:maths bezier_curve.input.pos1
data modify storage t_algorithm_lib:maths bezier_curve.Pos_list append from storage t_algorithm_lib:maths bezier_curve.input.pos2

scoreboard players set #tal.maths.bezier_curve.end tal.input 0
scoreboard players set #tal.maths.bezier_curve.loop tal.input 0

data modify entity 00000000-0000-1d63-0000-000900000001 Pos set from storage t_algorithm_lib:maths bezier_curve.Pos_list[-1]
data modify entity 00000000-0000-1d63-0000-000900000002 Pos set from storage t_algorithm_lib:maths bezier_curve.Pos_list[-2]

execute if data storage t_algorithm_lib:maths bezier_curve.Pos_list[] run function t_algorithm_lib:maths/bezier_curve/main/main
tp @e[tag=tal.maths.bezier_curve] -29999997.0 0.0 2022235.0


##[返回结果] 坐标集
# data get storage t_algorithm_lib:maths bezier_curve.result
execute if score #tal.maths.bezier_curve.always tal.input matches 1 run schedule function t_algorithm_lib:maths/bezier_curve/display 2s replace