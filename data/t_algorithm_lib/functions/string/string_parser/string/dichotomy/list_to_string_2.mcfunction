# data modify storage t_algorithm_lib:string_parser temp.isChar set value "\\n"
# execute store success score #tal.str_p.array.IsFail tal.str_parser run data modify storage t_algorithm_lib:string_parser temp.isChar set from storage t_algorithm_lib:string_parser temp.chars[-5]

# execute if score #tal.str_p.list_to_string.count_last tal.str_parser < #tal.str_p.list_to_string.count_ tal.str_parser run data modify block -30000000 4 2022228 Text3 set value '[{"nbt":"temp.result_last2","storage":"t_algorithm_lib:string_parser","interpret":true},{"nbt":"temp.chars[-5]","storage":"t_algorithm_lib:string_parser"}]'
# execute if score #tal.str_p.array.IsFail tal.str_parser matches 0 if score #tal.str_p.list_to_string.count_last tal.str_parser < #tal.str_p.list_to_string.count_ tal.str_parser run data modify block -30000000 4 2022228 Text3 set value '[{"nbt":"temp.result_last2","storage":"t_algorithm_lib:string_parser","interpret":true},{"text":"\\n"}]'

# execute if score #tal.str_p.list_to_string.count_last tal.str_parser < #tal.str_p.list_to_string.count_ tal.str_parser run data modify storage t_algorithm_lib:string_parser temp.result_last2 set from block -30000000 4 2022228 Text3






data modify storage t_algorithm_lib:string_parser temp.isChar set value "\\n"
execute store success score #tal.str_p.array.IsFail tal.str_parser run data modify storage t_algorithm_lib:string_parser temp.isChar set from storage t_algorithm_lib:string_parser temp.chars[-4]

execute if score #tal.str_p.list_to_string.count_last tal.str_parser < #tal.str_p.list_to_string.count_ tal.str_parser run data modify block -30000000 4 2022228 Text3 set value '[{"nbt":"temp.result_last","storage":"t_algorithm_lib:string_parser","interpret":true},{"nbt":"temp.chars[-4]","storage":"t_algorithm_lib:string_parser"}]'
execute if score #tal.str_p.array.IsFail tal.str_parser matches 0 if score #tal.str_p.list_to_string.count_last tal.str_parser < #tal.str_p.list_to_string.count_ tal.str_parser run data modify block -30000000 4 2022228 Text3 set value '[{"nbt":"temp.result_last","storage":"t_algorithm_lib:string_parser","interpret":true},{"text":"\\n"}]'

execute if score #tal.str_p.list_to_string.count_last tal.str_parser < #tal.str_p.list_to_string.count_ tal.str_parser run data modify storage t_algorithm_lib:string_parser temp.result_last set from block -30000000 4 2022228 Text3


data modify storage t_algorithm_lib:string_parser temp.result[0] set from storage t_algorithm_lib:string_parser temp.result_last

data modify storage t_algorithm_lib:string_parser temp.isChar set value "\\n"
execute store success score #tal.str_p.array.IsFail tal.str_parser run data modify storage t_algorithm_lib:string_parser temp.isChar set from storage t_algorithm_lib:string_parser temp.chars[-3]

execute if score #tal.str_p.array.IsFail tal.str_parser matches 1 run data modify block -30000000 4 2022228 Text3 set value '[{"nbt":"temp.result[0]","storage":"t_algorithm_lib:string_parser","interpret":true},{"nbt":"temp.chars[-3]","storage":"t_algorithm_lib:string_parser"}]'
execute if score #tal.str_p.array.IsFail tal.str_parser matches 0 run data modify block -30000000 4 2022228 Text3 set value '[{"nbt":"temp.result[0]","storage":"t_algorithm_lib:string_parser","interpret":true},{"text":"\\n"}]'
data modify storage t_algorithm_lib:string_parser temp.result[0] set from block -30000000 4 2022228 Text3

data modify storage t_algorithm_lib:string_parser temp.isChar set value "\\n"
# execute store result score #tal.str_p.list_to_string.count tal.str_parser run data get storage t_algorithm_lib:string_parser temp.chars[-2]
execute store success score #tal.str_p.array.IsFail tal.str_parser run data modify storage t_algorithm_lib:string_parser temp.isChar set from storage t_algorithm_lib:string_parser temp.chars[-2]

execute if score #tal.str_p.array.IsFail tal.str_parser matches 1 run data modify block -30000000 4 2022228 Text3 set value '[{"nbt":"temp.result[0]","storage":"t_algorithm_lib:string_parser","interpret":true},{"nbt":"temp.chars[-2]","storage":"t_algorithm_lib:string_parser"}]'
execute if score #tal.str_p.array.IsFail tal.str_parser matches 0 run data modify block -30000000 4 2022228 Text3 set value '[{"nbt":"temp.result[0]","storage":"t_algorithm_lib:string_parser","interpret":true},{"text":"\\n"}]'

data modify storage t_algorithm_lib:string_parser temp.result[0] set from block -30000000 4 2022228 Text3


data modify storage t_algorithm_lib:string_parser temp.isChar set value "\\n"
# execute store result score #tal.str_p.list_to_string.count tal.str_parser run data get storage t_algorithm_lib:string_parser temp.chars[-1]
execute store success score #tal.str_p.array.IsFail tal.str_parser run data modify storage t_algorithm_lib:string_parser temp.isChar set from storage t_algorithm_lib:string_parser temp.chars[-1]

execute if score #tal.str_p.array.IsFail tal.str_parser matches 1 run data modify block -30000000 4 2022228 Text3 set value '[{"nbt":"temp.result[0]","storage":"t_algorithm_lib:string_parser","interpret":true},{"nbt":"temp.chars[-1]","storage":"t_algorithm_lib:string_parser"}]'
execute if score #tal.str_p.array.IsFail tal.str_parser matches 0 run data modify block -30000000 4 2022228 Text3 set value '[{"nbt":"temp.result[0]","storage":"t_algorithm_lib:string_parser","interpret":true},{"text":"\\n"}]'

# tellraw @a [{"nbt":"temp.result_last","storage":"t_algorithm_lib:string_parser","interpret":false}]

# tellraw @a [{"nbt":"Text3","block":"-30000000 4 2022228","interpret":true}]
