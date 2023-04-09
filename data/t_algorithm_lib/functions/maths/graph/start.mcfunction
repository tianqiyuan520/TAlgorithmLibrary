###Graph 坐标系
##运算+渲染

data modify storage t_algorithm_lib:maths graph.main set value {}
# data modify storage t_algorithm_lib:maths graph.input set value [{type:"function",content:{function:"2*x+5",variable:[{id:'x',value:{range:[-3d,3d],step:0.1}}]},time:20,style:2},{type:"function",content:{function:"x-4",variable:[{id:'x',value:{range:[-10d,10d],step:0.1}}]},time:20,style:2},{type:"function",content:{function:"cos(x)",variable:[{id:'3*sin(-x)',value:{range:[-10d,10d],step:0.1}}]},time:20,style:2}]

#data modify storage t_algorithm_lib:maths graph.input set value [{type:"function",content:{function:"1/((2.7182818)^(0-x)+1)",variable:[{id:'x',value:{range:[-2d,2d],step:0.1}}]},time:20,style:2}]

## Graph.list:[{type:"",content:{},time:20},{...}]
##通用：type类型 content内容 [TODO]time持续时间(tick) style渲染粒子样式

##渲染函数
##e.g. {type:"function",content:{function:"x+a",variable:[{id:'x',value:{range:[0,3],step:0.1}},{id:'a',value:{range:[1]}}],style:1},time:20}  range为自变量范围,step为步长. 运算结果为 一系列函数值坐标系

##[TODO]渲染JSON文本
##e.g. {type:"text",content:{text:"",pos:[]},time:20} text:JSON文本,pos:位置

##[TODO]storage变量 variable:"a"即t_algorithm_lib:maths graph.main.variable[{id:a}]

##e.g. {type:"variable",content:{variable:"a",type:"score",value:3},time:20} 固定值
##e.g. {type:"variable",content:{variable:"a",type:"score",value:{type:"function",function:"x+a",variable:[{x:[range:[0,3],step:0.1]},{a:[range:[1]]}],time:1}},time:20}   变量 value.time为n秒改变一次. value.type:"function"即变量为f(x)


##main 绘制坐标系
function t_algorithm_lib:maths/graph/main/start
##处理input（build）
function t_algorithm_lib:maths/graph/main/build/start
execute unless data storage t_algorithm_lib:maths graph.input run data modify storage t_algorithm_lib:maths graph.input set value [{type:"function",content:{function:"2*x+5",variable:[{id:'x',value:{range:[-3d,3d],step:0.1}}]},time:20,style:2}]