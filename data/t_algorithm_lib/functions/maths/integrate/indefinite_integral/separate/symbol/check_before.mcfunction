##删除 前后的 ()
scoreboard players set #tal.maths.integrate.success tal.input 0 
scoreboard players set #tal.maths.integrate.success2 tal.input 0 
data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.temp.data[0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:['(']} run scoreboard players set #tal.maths.integrate.success tal.input 1
data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.temp.data[-1]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:[')']} run scoreboard players set #tal.maths.integrate.success2 tal.input 1
scoreboard players set #tal.maths.integrate.fail tal.input 1
execute if score #tal.maths.integrate.success tal.input matches 1 if score #tal.maths.integrate.success2 tal.input matches 1 run scoreboard players set #tal.maths.integrate.fail tal.input 0
execute if score #tal.maths.integrate.fail tal.input matches 0 run data remove storage t_algorithm_lib:maths integrate.temp.data[0]
execute if score #tal.maths.integrate.fail tal.input matches 0 run data remove storage t_algorithm_lib:maths integrate.temp.data[-1]



##次数统计
scoreboard players set #tal.maths.integrate.paren_ tal.input 0
##符号对等判断
execute store result score #tal.maths.integrate.index tal.input run data get storage t_algorithm_lib:maths integrate.temp.data
execute if score #tal.maths.integrate.fail tal.input matches 0 run function t_algorithm_lib:maths/integrate/indefinite_integral/separate/symbol/check_paren_loop
#不对等
execute if score #tal.maths.integrate.fail tal.input matches 0 unless score #tal.maths.integrate.paren_ tal.input matches 0 run data modify storage t_algorithm_lib:maths integrate.temp.data append value [')']
execute if score #tal.maths.integrate.fail tal.input matches 0 unless score #tal.maths.integrate.paren_ tal.input matches 0 run data modify storage t_algorithm_lib:maths integrate.temp.data prepend value ['(']
execute if score #tal.maths.integrate.fail tal.input matches 0 unless score #tal.maths.integrate.paren_ tal.input matches 0 run scoreboard players set #tal.maths.integrate.fail tal.input 1


scoreboard players remove #tal.maths.integrate.success3 tal.input 1
execute if score #tal.maths.integrate.success3 tal.input matches 1.. if score #tal.maths.integrate.fail tal.input matches 0 run function t_algorithm_lib:maths/integrate/indefinite_integral/separate/symbol/check_before