###判断 参数 能否使用JSON中的interpret
##['{"text":"a"}','b'] ==>渲染 ab

##源数据
## data modify storage t_algorithm_lib:others json_text.check_str_can_interpret.str set value 'b'

##判断输入的参数是否为String类型
data modify storage t_algorithm_lib:array elements_type_check.list set from storage t_algorithm_lib:others json_text.check_str_can_interpret.str
function t_algorithm_lib:array/elements_type_check/start
scoreboard players set #tal.check_str_can_interpret.num tal.input 0
execute if data storage t_algorithm_lib:array temp{return:"TAG_String"} run scoreboard players set #tal.check_str_can_interpret.num tal.input 1

data modify storage t_algorithm_lib:others json_text.check_str_can_interpret.return set value 0b
execute if score #tal.check_str_can_interpret.num tal.input matches 0 run data modify storage t_algorithm_lib:others json_text.check_str_can_interpret.return set value '无效参数类型'
##结果
scoreboard players set #tal.check_str_can_interpret.num2 tal.input 0
execute positioned -29999994 4 2022224 run setblock ~ ~ ~ air
execute positioned -29999994 4 2022224 run setblock ~ ~ ~ oak_sign{Text1:'{"text":"判断该元素能否使用JSON中的interpret"}'}
data modify block -29999994 4 2022224 Text2 set value '[{"nbt":"json_text.check_str_can_interpret.str","storage":"t_algorithm_lib:others","interpret":true}]'
execute if score #tal.sign_version tal.input matches 2 run data modify block -29999994 4 2022224 front_text.messages[1] set value '[{"nbt":"json_text.check_str_can_interpret.str","storage":"t_algorithm_lib:others","interpret":true}]'

execute store result score #tal.check_str_can_interpret.num2 tal.input run data get block -29999994 4 2022224 Text2
execute if score #tal.sign_version tal.input matches 2 run execute store result score #tal.check_str_can_interpret.num2 tal.input run data get block -29999994 4 2022224 front_text.messages[1]

execute if score #tal.check_str_can_interpret.num tal.input matches 1 if score #tal.check_str_can_interpret.num2 tal.input matches 12.. run data modify storage t_algorithm_lib:others json_text.check_str_can_interpret.return set value 1b