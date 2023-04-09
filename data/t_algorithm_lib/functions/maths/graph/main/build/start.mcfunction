##创建
data modify storage t_algorithm_lib:maths graph.main.input_ set from storage t_algorithm_lib:maths graph.input
data modify storage t_algorithm_lib:maths graph.main.data set value []
scoreboard players set #tal.maths.graph.build.end tal.input 0
##详细处理数据
#e.g. [{type:"function",content:{function:"2*x",variable:[{id:'x',value:{range:[0d,3d],step:0.1}},{id:'a',value:{range:[1]}}]},time:20,style:1}]
#渲染
function t_algorithm_lib:maths/graph/main/tick_display
#运算
function t_algorithm_lib:maths/graph/main/build/loop




