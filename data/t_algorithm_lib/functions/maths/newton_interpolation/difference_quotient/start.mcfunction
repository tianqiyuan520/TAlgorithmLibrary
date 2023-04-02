##获取差商


data modify storage t_algorithm_lib:maths newton_interpolation.DQ.list set from storage t_algorithm_lib:maths newton_interpolation.input
##格式为 [[[ [坐标1.x,0] ,[坐标1.y] ],[ [坐标2.x,0] ,[坐标2.y] ]... ],[一阶差商：[ [坐标1.x,坐标2.x] ,[坐标1.y-坐标2.y] ] ...  ]       ...       ]
data modify storage t_algorithm_lib:maths newton_interpolation.DQ.main_list set value [[]]

execute store result score #tal.maths.newton_interpolation.count tal.input run data get storage t_algorithm_lib:maths newton_interpolation.DQ.list
#初始化
execute if score #tal.maths.newton_interpolation.count tal.input matches 1.. run function t_algorithm_lib:maths/newton_interpolation/difference_quotient/init_loop
##格式为 [一阶差商,二阶差商,三阶差商...n阶差商]
data modify storage t_algorithm_lib:maths newton_interpolation.DQ.result set value []
scoreboard players set #tal.maths.newton_interpolation.end tal.input 0

scoreboard players set #tal.maths.newton_interpolation.time_ tal.input 0
function t_algorithm_lib:maths/newton_interpolation/difference_quotient/main


##提取差商
data modify storage t_algorithm_lib:maths newton_interpolation.DQ.result append from storage t_algorithm_lib:maths newton_interpolation.DQ.main_list[][0][1][0]

