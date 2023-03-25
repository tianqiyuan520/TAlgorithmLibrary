##将数据存储到 main中
data modify storage t_algorithm_lib:maths graph.main.data[-1].data.pos1 set from storage t_algorithm_lib:maths graph.operation.function.result
data modify storage t_algorithm_lib:maths graph.main.data[-1].data.pos2 set from storage t_algorithm_lib:maths graph.operation.function.transform.result

function t_algorithm_lib:maths/graph/main/build/loop

