##判断是否括号
execute store result score #tal.maths.integrate.deep_ tal.str_parser run data get storage t_algorithm_lib:maths integrate.transform.deeps[0]
execute unless score #tal.maths.integrate.deep tal.str_parser = #tal.maths.integrate.deep_ tal.str_parser run function t_algorithm_lib:maths/integrate/indefinite_integral/transform/is_add


# scoreboard players remove #tal.maths.integrate.will_deep tal.str_parser 1
##添加数据
data modify storage t_algorithm_lib:maths integrate.transform.result append from storage t_algorithm_lib:maths integrate.transform.data[0]
data modify block -29999994 4 2022224 Text2 set value '[{"nbt":"integrate.transform.data[0][0]","storage":"t_algorithm_lib:maths"}]'
data modify storage t_algorithm_lib:maths integrate.transform.display append from block -29999994 4 2022224 Text2


data remove storage t_algorithm_lib:maths integrate.transform.deeps[0]
data remove storage t_algorithm_lib:maths integrate.transform.data[0]
execute store result score #tal.maths.integrate.list_count tal.str_parser run data get storage t_algorithm_lib:maths integrate.transform.data

execute if score #tal.maths.integrate.list_count tal.str_parser matches 0 run function t_algorithm_lib:maths/integrate/indefinite_integral/transform/end
execute if score #tal.maths.integrate.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/integrate/indefinite_integral/transform/loop