
#test
# data modify storage t_algorithm_lib:maths polynomial.separation set value [['x'],['-'],['x'],['*'],['x'],['*'],['x'],[+],[b],['^'],[2],[-],[b],[+],[c]] √
# data modify storage t_algorithm_lib:maths polynomial.separation set value [[a],['*'],['x'],['^'],['x'],['-'],[b],['*'],['x'],['^'],['x']] √

# data modify storage t_algorithm_lib:maths polynomial.separation set value [['a'],['*'],['x'],['*'],['x'],['+'],[c],[-],[c]]  √
#
# data modify storage t_algorithm_lib:maths polynomial.separation set value [[3],['*'],['x'],['^'],['x'],['-'],[3],['*'],['x'],['^'],['x']] √

# data modify storage t_algorithm_lib:maths polynomial.separation set value [[3],['*'],['x'],['-'],[3],['*'],['x']] √
# data modify storage t_algorithm_lib:maths polynomial.separation set value [[a],['*'],['x'],['-'],[b],['*'],['x']] √
# data modify storage t_algorithm_lib:maths polynomial.separation set value [[3],['-'],[5]] √
# data modify storage t_algorithm_lib:maths polynomial.separation set value [['cos('],[x],[')'],['^'],[2],[+],['cos('],[x],[')']] √
# data modify storage t_algorithm_lib:maths polynomial.separation set value [['cos('],[x],[')'],['^'],[2],[+],['cos('],[x],[')'],[+],['ln('],[y],[')'],['/'],['ln('],[y],[')'],['+'],[a],['*'],['x'],['^'],['x'],['-'],[b],['*'],['x'],['^'],['x']] √
data modify storage t_algorithm_lib:maths polynomial.temp.list set value []
##链状树结构 [  [[data],[index]] ,[[data2],[index]],[[data3],[index]],[original_index],[is_return],[this_type]...  ]
data modify storage t_algorithm_lib:maths polynomial.main.main_tree set value [[[],[-1],[0],[0],['add']]]
data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0] set from storage t_algorithm_lib:maths polynomial.separation
##[自定义]树主体循环次数
# scoreboard players set #tal.maths.polynomial.main.tree_loop tal.str_parser 200
scoreboard players set #tal.maths.polynomial.main.tree_end tal.str_parser 0

function t_algorithm_lib:maths/polynomial/simplify/main/tree/main

##主体循环
# function t_algorithm_lib:maths/polynomial/simplify/read/loop

data modify storage t_algorithm_lib:maths polynomial.separation set value [[1],['-'],[0]]
scoreboard players set #tal.maths.polynomial.main.tree_loop tal.str_parser 2000

