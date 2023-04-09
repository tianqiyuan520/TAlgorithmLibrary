##删除 前后的 ()
scoreboard players set #tal.maths.derivation.success tal.input 0 
scoreboard players set #tal.maths.derivation.success2 tal.input 0 
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.data[0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:['(']} run scoreboard players set #tal.maths.derivation.success tal.input 1
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.data[-1]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:[')']} run scoreboard players set #tal.maths.derivation.success2 tal.input 1
scoreboard players set #tal.maths.derivation.fail tal.input 1
execute if score #tal.maths.derivation.success tal.input matches 1 if score #tal.maths.derivation.success2 tal.input matches 1 run scoreboard players set #tal.maths.derivation.fail tal.input 0
execute if score #tal.maths.derivation.fail tal.input matches 0 run data remove storage t_algorithm_lib:maths auto_derivation.temp.data[0]
execute if score #tal.maths.derivation.fail tal.input matches 0 run data remove storage t_algorithm_lib:maths auto_derivation.temp.data[-1]



##次数统计
scoreboard players set #tal.maths.derivation.paren_ tal.input 0
##符号对等判断
execute store result score #tal.maths.derivation.index tal.input run data get storage t_algorithm_lib:maths auto_derivation.temp.data
execute if score #tal.maths.derivation.fail tal.input matches 0 run function t_algorithm_lib:maths/auto_derivation/separate/symbol/check_paren_loop
#不对等
execute if score #tal.maths.derivation.fail tal.input matches 0 unless score #tal.maths.derivation.paren_ tal.input matches 0 run data modify storage t_algorithm_lib:maths auto_derivation.temp.data append value [')']
execute if score #tal.maths.derivation.fail tal.input matches 0 unless score #tal.maths.derivation.paren_ tal.input matches 0 run data modify storage t_algorithm_lib:maths auto_derivation.temp.data prepend value ['(']
execute if score #tal.maths.derivation.fail tal.input matches 0 unless score #tal.maths.derivation.paren_ tal.input matches 0 run scoreboard players set #tal.maths.derivation.fail tal.input 1


scoreboard players remove #tal.maths.derivation.success3 tal.input 1
execute if score #tal.maths.derivation.success3 tal.input matches 1.. if score #tal.maths.derivation.fail tal.input matches 0 run function t_algorithm_lib:maths/auto_derivation/separate/symbol/check_before