
data modify storage t_algorithm_lib:string_parser preparation_chars set from storage t_algorithm_lib:string temp.preparation_chars

data modify storage t_algorithm_lib:string_parser io.parameter set from storage t_algorithm_lib:string temp.parameter

data modify storage t_algorithm_lib:string temp.return set value {"hour":[],"min":[],"second":[]}
data modify storage t_algorithm_lib:string temp.return."hour" append from storage t_algorithm_lib:string_parser io.output[1]
data modify storage t_algorithm_lib:string temp.return."hour" append from storage t_algorithm_lib:string_parser io.output[2]
data modify storage t_algorithm_lib:string temp.return."min" append from storage t_algorithm_lib:string_parser io.output[4]
data modify storage t_algorithm_lib:string temp.return."min" append from storage t_algorithm_lib:string_parser io.output[5]
data modify storage t_algorithm_lib:string temp.return."second" append from storage t_algorithm_lib:string_parser io.output[7]
data modify storage t_algorithm_lib:string temp.return."second" append from storage t_algorithm_lib:string_parser io.output[8]

playsound entity.player.levelup voice @a ~ ~ ~ 1 2

##显示
# tellraw @a [{"nbt":"temp.return.\"hour\"","storage": "t_algorithm_lib:string","interpret": true},{"text": ":"},{"nbt":"temp.return.\"min\"","storage": "t_algorithm_lib:string","interpret": true},{"text": ":"},{"nbt":"temp.return.\"second\"","storage": "t_algorithm_lib:string","interpret": true}]
