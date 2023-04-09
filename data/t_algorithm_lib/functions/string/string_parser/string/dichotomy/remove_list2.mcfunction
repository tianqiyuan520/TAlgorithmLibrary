
##判断是否换行
data modify storage t_algorithm_lib:string_parser temp.isChar set value "\\n"
# execute store result score #tal.str_p.list_to_string.count_ tal.input run data get storage t_algorithm_lib:string_parser temp.chars
# scoreboard players operation #tal.str_p.list_to_string.count_ tal.input -= #tal.str_p.char.re_read_check tal.input

# execute if score #tal.str_p.list_to_string.count_ tal.input matches 1 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-1]

# execute if score #tal.str_p.list_to_string.count_ tal.input matches 2 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-2]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 2 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-1]

# execute if score #tal.str_p.list_to_string.count_ tal.input matches 3 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-3]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 3 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-2]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 3 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-1]

# execute if score #tal.str_p.list_to_string.count_ tal.input matches 4 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-4]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 4 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-3]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 4 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-2]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 4 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-1]

# execute if score #tal.str_p.list_to_string.count_ tal.input matches 5 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-5]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 5 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-4]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 5 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-3]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 5 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-2]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 5 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-1]

# execute if score #tal.str_p.list_to_string.count_ tal.input matches 6 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-6]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 6 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-5]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 6 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-4]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 6 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-3]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 6 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-2]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 6 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-1]


# execute if score #tal.str_p.list_to_string.count_ tal.input matches 7 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-7]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 7 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-6]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 7 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-5]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 7 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-4]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 7 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-3]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 7 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-2]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 7 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-1]


# execute if score #tal.str_p.list_to_string.count_ tal.input matches 8 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-8]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 8 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-7]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 8 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-6]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 8 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-5]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 8 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-4]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 8 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-3]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 8 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-2]
# execute if score #tal.str_p.list_to_string.count_ tal.input matches 8 run data modify storage t_algorithm_lib:string_parser temp.chars2 append from storage t_algorithm_lib:string_parser temp.chars[-1]
# tellraw @a [{"nbt":"char.check","storage":"t_algorithm_lib:string_parser","interpret":false,"color": "yellow"}]
# tellraw @a [{"nbt":"temp.chars","storage":"t_algorithm_lib:string_parser","interpret":false,"color": "blue"}]
# tellraw @a [{"nbt":"temp.result_last2","storage":"t_algorithm_lib:string_parser","interpret":false,"color": "red"}]

execute store result score #tal.str_p.list_to_string.count tal.input run data get storage t_algorithm_lib:string_parser temp.chars
data modify storage t_algorithm_lib:string_parser temp.chars2 prepend from storage t_algorithm_lib:string_parser temp.chars[-1]
data remove storage t_algorithm_lib:string_parser temp.chars[-1]
execute store result score #tal.str_p.list_to_string.count tal.input run data get storage t_algorithm_lib:string_parser temp.chars
execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run data modify storage t_algorithm_lib:string_parser temp.chars2 prepend from storage t_algorithm_lib:string_parser temp.chars[-1]
execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run data remove storage t_algorithm_lib:string_parser temp.chars[-1]

execute store result score #tal.str_p.list_to_string.count tal.input run data get storage t_algorithm_lib:string_parser temp.chars
execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run data modify storage t_algorithm_lib:string_parser temp.chars2 prepend from storage t_algorithm_lib:string_parser temp.chars[-1]
execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run data remove storage t_algorithm_lib:string_parser temp.chars[-1]

execute store result score #tal.str_p.list_to_string.count tal.input run data get storage t_algorithm_lib:string_parser temp.chars
execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run data modify storage t_algorithm_lib:string_parser temp.chars2 prepend from storage t_algorithm_lib:string_parser temp.chars[-1]
execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run data remove storage t_algorithm_lib:string_parser temp.chars[-1]

execute store result score #tal.str_p.list_to_string.count tal.input run data get storage t_algorithm_lib:string_parser temp.chars
execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run data modify storage t_algorithm_lib:string_parser temp.chars2 prepend from storage t_algorithm_lib:string_parser temp.chars[-1]
execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run data remove storage t_algorithm_lib:string_parser temp.chars[-1]

execute store result score #tal.str_p.list_to_string.count tal.input run data get storage t_algorithm_lib:string_parser temp.chars
execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run data modify storage t_algorithm_lib:string_parser temp.chars2 prepend from storage t_algorithm_lib:string_parser temp.chars[-1]
execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run data remove storage t_algorithm_lib:string_parser temp.chars[-1]

execute store result score #tal.str_p.list_to_string.count tal.input run data get storage t_algorithm_lib:string_parser temp.chars
execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run data modify storage t_algorithm_lib:string_parser temp.chars2 prepend from storage t_algorithm_lib:string_parser temp.chars[-1]
execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run data remove storage t_algorithm_lib:string_parser temp.chars[-1]

execute store result score #tal.str_p.list_to_string.count tal.input run data get storage t_algorithm_lib:string_parser temp.chars
execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run data modify storage t_algorithm_lib:string_parser temp.chars2 prepend from storage t_algorithm_lib:string_parser temp.chars[-1]
execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run data remove storage t_algorithm_lib:string_parser temp.chars[-1]

execute store result score #tal.str_p.list_to_string.count tal.input run data get storage t_algorithm_lib:string_parser temp.chars
execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run data modify storage t_algorithm_lib:string_parser temp.chars2 prepend from storage t_algorithm_lib:string_parser temp.chars[-1]
execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run data remove storage t_algorithm_lib:string_parser temp.chars[-1]

execute store result score #tal.str_p.list_to_string.count tal.input run data get storage t_algorithm_lib:string_parser temp.chars
execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run data modify storage t_algorithm_lib:string_parser temp.chars2 prepend from storage t_algorithm_lib:string_parser temp.chars[-1]
execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run data remove storage t_algorithm_lib:string_parser temp.chars[-1]

execute store result score #tal.str_p.list_to_string.count tal.input run data get storage t_algorithm_lib:string_parser temp.chars
execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run data modify storage t_algorithm_lib:string_parser temp.chars2 prepend from storage t_algorithm_lib:string_parser temp.chars[-1]
execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run data remove storage t_algorithm_lib:string_parser temp.chars[-1]

execute store result score #tal.str_p.list_to_string.count tal.input run data get storage t_algorithm_lib:string_parser temp.chars
execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run data modify storage t_algorithm_lib:string_parser temp.chars2 prepend from storage t_algorithm_lib:string_parser temp.chars[-1]
execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run data remove storage t_algorithm_lib:string_parser temp.chars[-1]
# tellraw @a [{"score":{"name": "#tal.str_p.list_to_string.count","objective": "tal.input"},"color": "red"},{"score":{"name": "#tal.str_p.char.re_read_check","objective": "tal.input"},"color": "blue"}]



execute store result score #tal.str_p.list_to_string.count tal.input run data get storage t_algorithm_lib:string_parser temp.chars

# execute if score #tal.str_p.list_to_string.count tal.input > #tal.str_p.char.re_read_check tal.input run function t_algorithm_lib:string/string_parser/string/dichotomy/remove_list2