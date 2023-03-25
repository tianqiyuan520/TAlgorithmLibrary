#{AttributeName:"generic.attack_damage",Name:"X",Amount:20,Operation:0,UUID:[I;13,12,2,12],Slot:"offhand"}
##迭代判断属性
data modify storage t_algorithm_lib:item_to_json temp.AttributeModifiers_check set from storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.list[0]
execute store result score #tal.o.ITJ.item.Attribute.Amount tal.str_parser run data get storage t_algorithm_lib:item_to_json temp.AttributeModifiers_check.Amount 10000
execute store result score #tal.o.ITJ.item.Attribute.Amount_ tal.str_parser run data get storage t_algorithm_lib:item_to_json temp.AttributeModifiers_check.Amount 10000
scoreboard players set #10000 tal.str_parser 10000
scoreboard players set #100 tal.str_parser 100
scoreboard players set #10 tal.str_parser 10
execute store result score #tal.o.ITJ.item.Attribute.Operation tal.str_parser run data get storage t_algorithm_lib:item_to_json temp.AttributeModifiers_check.Operation
##判断+或-或100%
##判断小数
#是否需要%百分号
execute if score #tal.o.ITJ.item.Attribute.Operation tal.str_parser matches 1.. run scoreboard players operation #tal.o.ITJ.item.Attribute.Amount tal.str_parser /= #100 tal.str_parser
execute if score #tal.o.ITJ.item.Attribute.Operation tal.str_parser matches 1.. run scoreboard players operation #tal.o.ITJ.item.Attribute.Amount_ tal.str_parser %= #100 tal.str_parser
execute if score #tal.o.ITJ.item.Attribute.Operation tal.str_parser matches 0 run scoreboard players operation #tal.o.ITJ.item.Attribute.Amount tal.str_parser /= #10000 tal.str_parser
execute if score #tal.o.ITJ.item.Attribute.Operation tal.str_parser matches 0 run scoreboard players operation #tal.o.ITJ.item.Attribute.Amount_ tal.str_parser /= #100 tal.str_parser
execute if score #tal.o.ITJ.item.Attribute.Operation tal.str_parser matches 0 run scoreboard players operation #tal.o.ITJ.item.Attribute.Amount_ tal.str_parser %= #100 tal.str_parser
#是否省略 1.20 -> 1.2
scoreboard players operation #tal.o.ITJ.item.Attribute.Amount__ tal.str_parser = #tal.o.ITJ.item.Attribute.Amount_ tal.str_parser
scoreboard players operation #tal.o.ITJ.item.Attribute.Amount__ tal.str_parser %= #10 tal.str_parser
execute if score #tal.o.ITJ.item.Attribute.Amount__ tal.str_parser matches 0 run scoreboard players operation #tal.o.ITJ.item.Attribute.Amount_ tal.str_parser /= #10 tal.str_parser
data modify storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.amount set value ""
data modify block -29999999 3 20228222 Text4 set value '[{"score":{"name": "#tal.o.ITJ.item.Attribute.Amount","objective": "tal.str_parser"}}]'
execute unless score #tal.o.ITJ.item.Attribute.Amount_ tal.str_parser matches 0 run data modify block -29999999 3 20228222 Text4 set value '[{"score":{"name": "#tal.o.ITJ.item.Attribute.Amount","objective": "tal.str_parser"}},{"text":"."},{"score":{"name": "#tal.o.ITJ.item.Attribute.Amount_","objective": "tal.str_parser"}}]'
data modify storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.amount set from block -29999999 3 20228222 Text4

#方便判断
execute unless score #tal.o.ITJ.item.Attribute.Amount_ tal.str_parser matches 0 run scoreboard players set #tal.o.ITJ.item.Attribute.Amount tal.str_parser 1

#+
execute if score #tal.o.ITJ.item.Attribute.Amount tal.str_parser matches 0.. unless score #tal.o.ITJ.item.Attribute.Amount tal.str_parser matches 0 if score #tal.o.ITJ.item.Attribute.Operation tal.str_parser matches 0 run function t_algorithm_lib:others/json_text/item_content_to_json_text/attribute_modifiers/check_attribute_name1
#-
execute if score #tal.o.ITJ.item.Attribute.Amount tal.str_parser matches ..0 unless score #tal.o.ITJ.item.Attribute.Amount tal.str_parser matches 0 if score #tal.o.ITJ.item.Attribute.Operation tal.str_parser matches 0 run function t_algorithm_lib:others/json_text/item_content_to_json_text/attribute_modifiers/check_attribute_name2
#+100%
execute if score #tal.o.ITJ.item.Attribute.Amount tal.str_parser matches 0.. unless score #tal.o.ITJ.item.Attribute.Amount tal.str_parser matches 0 if score #tal.o.ITJ.item.Attribute.Operation tal.str_parser matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/attribute_modifiers/check_attribute_name3
#-100%
execute if score #tal.o.ITJ.item.Attribute.Amount tal.str_parser matches ..0 unless score #tal.o.ITJ.item.Attribute.Amount tal.str_parser matches 0 if score #tal.o.ITJ.item.Attribute.Operation tal.str_parser matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/attribute_modifiers/check_attribute_name4
execute unless score #tal.o.ITJ.item.Attribute.Amount tal.str_parser matches 0 if score #tal.o.ITJ.equal tal.str_parser matches 1 run function t_algorithm_lib:others/json_text/item_content_to_json_text/attribute_modifiers/check_attribute_name5
#
data modify block -29999999 3 20228222 Text4 set value '[{"nbt":"temp.AttributeModifiers.text","storage": "t_algorithm_lib:item_to_json","interpret": true}]'
# execute if score #tal.o.ITJ.item.Attribute.Amount tal.str_parser matches 0 run data modify block -29999999 3 20228222 Text4 set value ''

data modify storage t_algorithm_lib:item_to_json temp.AttributeModifiers.text set from block -29999999 3 20228222 Text4

execute unless score #tal.o.ITJ.item.Attribute.Amount tal.str_parser matches 0 run function t_algorithm_lib:others/json_text/item_content_to_json_text/attribute_modifiers/check_slot



data remove storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.list[0]
data modify storage t_algorithm_lib:item_to_json temp.AttributeModifiers_check set value {}
data modify storage t_algorithm_lib:item_to_json temp.AttributeModifiers.text set value ''
##获取列表个数:
execute store result score #tal.o.ITJ.list.count tal.str_parser run data get storage t_algorithm_lib:item_to_json temp.item_AttributeModifiers.list
execute if score #tal.o.ITJ.list.count tal.str_parser matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/attribute_modifiers/check_loop