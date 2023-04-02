##行列式展开
##代数余子式
##行列式[
##      [1d,3d,5d,...,2d]
##      [1d,2.5d,5d,...,2d]
##      ...
##]
##采用递归方式

##[自定义输入]二维数组
# data modify storage t_algorithm_lib:maths determinant.expansion.input set value [[]]
#data modify storage t_algorithm_lib:maths determinant.expansion.input set value [[2d,3d,5d],[1d,2d,2d],[1d,0d,0d]]
#data modify storage t_algorithm_lib:maths determinant.expansion.input set value [[2d,3d],[5d,2d]]
#data modify storage t_algorithm_lib:maths determinant.expansion.input set value [[3d,3d,1d],[5d,2d,3d],[2d,5d,2d]]
#data modify storage t_algorithm_lib:maths determinant.expansion.input set value [[3d,3d,1d,6d,9.2d],[5d,2d,3d,7d,2.2d],[2d,5d,2d,3d,1d],[3d,5d,2d,1d,1.1d],[2.5d,5d,2d,3.1d,1d]]
##[自定义输入]递归次数
# scoreboard players set #tal.maths.determinant.time tal.input 100
##[自定义输入]是否提醒运算结束
# scoreboard players set #tal.maths.determinant.remind tal.input 1
##返回结果
# data get storage t_algorithm_lib:maths determinant.expansion.result
scoreboard players operation #tal.maths.determinant.loop tal.input = #tal.maths.determinant.time tal.input
##判断是否为行列式
data modify storage t_algorithm_lib:maths determinant.check.input set from storage t_algorithm_lib:maths determinant.expansion.input
function t_algorithm_lib:maths/determinant/check/start
execute if score #tal.maths.determinant.check tal.input matches 0 if score #tal.debug tal.input matches 1 run tellraw @a ["",{"text":"[TAlgorithmLibrary] ","color": "#a8a8a8","hoverEvent": {"action": "show_text","contents": [{"text": "Datapack Version: "},{"score":{"name": "#tal.version","objective": "tal.input"}},{"text":"\nleft click ","color":"green"},{"text":"for more info","color":"#a8a8a8"}]},"clickEvent":{"action": "suggest_command","value":"/function t_algorithm_lib:introduction"}},{"text": "展开失败","color":"#A7A7A7"},{"text":"\n原因:输入值为非行列式","color":"#FB5454"}]
execute if score #tal.maths.determinant.check tal.input matches 1 run function t_algorithm_lib:maths/determinant/expansion/is
