
data modify storage t_algorithm_lib:item_to_json temp.item_Pattern set from storage t_algorithm_lib:item_to_json temp.item_Patterns.list[0]
execute store result score #tal.o.ITJ.item_Pattern_color tal.input run data get storage t_algorithm_lib:item_to_json temp.item_Patterns.list[0].Color
execute if score #tal.o.ITJ.item_Pattern_color tal.input matches 0.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/banner/color/check_color


data remove storage t_algorithm_lib:item_to_json temp.item_Patterns.list[0]
execute store result score #tal.o.ITJ.list.count tal.input run data get storage t_algorithm_lib:item_to_json temp.item_Patterns.list
execute if score #tal.o.ITJ.list.count tal.input matches 1.. positioned -29999999 3 20228209 run function t_algorithm_lib:others/json_text/item_content_to_json_text/banner/loop