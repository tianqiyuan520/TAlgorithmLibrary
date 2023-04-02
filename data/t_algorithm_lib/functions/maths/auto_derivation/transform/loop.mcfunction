##判断是否括号
execute store result score #tal.maths.derivation.deep_ tal.input run data get storage t_algorithm_lib:maths auto_derivation.transform.deeps[0]
execute unless score #tal.maths.derivation.deep tal.input = #tal.maths.derivation.deep_ tal.input run function t_algorithm_lib:maths/auto_derivation/transform/is_add


# scoreboard players remove #tal.maths.derivation.will_deep tal.input 1
##添加数据
data modify storage t_algorithm_lib:maths auto_derivation.transform.result append from storage t_algorithm_lib:maths auto_derivation.transform.data[0]
data modify block -29999994 4 2022224 Text2 set value '[{"nbt":"auto_derivation.transform.data[0][0]","storage":"t_algorithm_lib:maths"}]'
execute if score #tal.sign_version tal.input matches 2 run data modify block -29999994 4 2022224 front_text.messages[1] set value '[{"nbt":"auto_derivation.transform.data[0][0]","storage":"t_algorithm_lib:maths"}]'
data modify storage t_algorithm_lib:maths auto_derivation.transform.display append from block -29999994 4 2022224 Text2
execute if score #tal.sign_version tal.input matches 2 run data modify storage t_algorithm_lib:maths auto_derivation.transform.display append from block -29999994 4 2022224 front_text.messages[1]

data remove storage t_algorithm_lib:maths auto_derivation.transform.deeps[0]
data remove storage t_algorithm_lib:maths auto_derivation.transform.data[0]
execute store result score #tal.maths.derivation.list_count tal.input run data get storage t_algorithm_lib:maths auto_derivation.transform.data

execute if score #tal.maths.derivation.list_count tal.input matches 0 run function t_algorithm_lib:maths/auto_derivation/transform/end
execute if score #tal.maths.derivation.list_count tal.input matches 1.. run function t_algorithm_lib:maths/auto_derivation/transform/loop