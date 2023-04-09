

###
data modify storage t_algorithm_lib:maths integrate.main_tree append value [[['('],[],[')'],['*'],['('],[],[')']],[4],[0,0,0,0,0,1,0]]

data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0][1] set from storage t_algorithm_lib:maths auto_derivation.result
data modify storage t_algorithm_lib:maths integrate.main_tree[-1][0][5] set from storage t_algorithm_lib:maths integrate.main_tree[-2][0][6]
##
tellraw @a ["new主树",{"nbt":"integrate.main_tree[-1][0]","storage":"t_algorithm_lib:maths","color":"#B8881E"}]
