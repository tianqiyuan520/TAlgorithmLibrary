##矩阵加法
##源数据
data modify storage t_algorithm_lib:maths matrix.list1 set value []
data modify storage t_algorithm_lib:maths matrix.list2 set value []
data modify storage t_algorithm_lib:maths matrix.add.result set value []
##判断维度相不相同
scoreboard players set #tal.maths.matrix.list1.dimension tal.str_parser 0
scoreboard players set #tal.maths.matrix.list2.dimension tal.str_parser 0
scoreboard players set #tal.maths.matrix.list1.count tal.str_parser 0
scoreboard players set #tal.maths.matrix.list2.count tal.str_parser 0
##运算判断是否成功执行 (方便在遍历中判断到不同维度时，立刻退出遍历)
scoreboard players set #tal.maths.matrix.add.fail tal.str_parser 0
##判断一维/二维
data modify storage t_algorithm_lib:array elements_type_check.list set from storage t_algorithm_lib:maths matrix.list1[0]
function t_algorithm_lib:array/elements_type_check/start
##如果为数字
execute if data storage t_algorithm_lib:array temp{return:'TAG_List'} run scoreboard players set #tal.maths.matrix.list1.dimension tal.str_parser 2
execute if data storage t_algorithm_lib:array temp{return:'TAG_Double'} run scoreboard players set #tal.maths.matrix.list1.dimension tal.str_parser 1

##判断一维/二维
data modify storage t_algorithm_lib:array elements_type_check.list set from storage t_algorithm_lib:maths matrix.list2[0]
function t_algorithm_lib:array/elements_type_check/start
##如果为数字
execute if data storage t_algorithm_lib:array temp{return:'TAG_List'} run scoreboard players set #tal.maths.matrix.list2.dimension tal.str_parser 2
execute if data storage t_algorithm_lib:array temp{return:'TAG_Double'} run scoreboard players set #tal.maths.matrix.list2.dimension tal.str_parser 1

##元素个数
execute store result score #tal.maths.matrix.list1.count tal.str_parser run data get storage t_algorithm_lib:maths matrix.list1
execute store result score #tal.maths.matrix.list2.count tal.str_parser run data get storage t_algorithm_lib:maths matrix.list2

##
execute if score #tal.maths.matrix.list1.dimension tal.str_parser matches 1 if score #tal.maths.matrix.list1.dimension tal.str_parser = #tal.maths.matrix.list2.dimension tal.str_parser if score #tal.maths.matrix.list1.count tal.str_parser = #tal.maths.matrix.list2.count tal.str_parser run function t_algorithm_lib:maths/matrix/add/1/start
##
execute if score #tal.maths.matrix.list1.dimension tal.str_parser matches 2 if score #tal.maths.matrix.list1.dimension tal.str_parser = #tal.maths.matrix.list2.dimension tal.str_parser if score #tal.maths.matrix.list1.count tal.str_parser = #tal.maths.matrix.list2.count tal.str_parser run function t_algorithm_lib:maths/matrix/add/2/start
