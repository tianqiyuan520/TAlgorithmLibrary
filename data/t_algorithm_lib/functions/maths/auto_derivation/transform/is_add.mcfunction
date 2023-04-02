##计算差量
execute if score #tal.maths.derivation.deep tal.input < #tal.maths.derivation.deep_ tal.input run scoreboard players operation #tal.maths.derivation.deep__ tal.input = #tal.maths.derivation.deep_ tal.input
execute if score #tal.maths.derivation.deep tal.input < #tal.maths.derivation.deep_ tal.input run scoreboard players operation #tal.maths.derivation.deep__ tal.input -= #tal.maths.derivation.deep tal.input
# execute if score #tal.maths.derivation.deep__ tal.input matches ..-1 run scoreboard players operation #tal.maths.derivation.deep__ tal.input *= #tal.maths.derivation.-1 tal.input
execute if score #tal.maths.derivation.deep tal.input > #tal.maths.derivation.deep_ tal.input run scoreboard players operation #tal.maths.derivation.deep__ tal.input = #tal.maths.derivation.deep tal.input
execute if score #tal.maths.derivation.deep tal.input > #tal.maths.derivation.deep_ tal.input run scoreboard players operation #tal.maths.derivation.deep__ tal.input -= #tal.maths.derivation.deep_ tal.input
##
# execute if score #tal.maths.derivation.will_deep tal.input matches ..0 if score #tal.maths.derivation.deep tal.input < #tal.maths.derivation.deep_ tal.input run function t_algorithm_lib:maths/auto_derivation/transform/simple
##
execute if score #tal.maths.derivation.deep tal.input < #tal.maths.derivation.deep_ tal.input run function t_algorithm_lib:maths/auto_derivation/transform/add_l
execute if score #tal.maths.derivation.deep tal.input > #tal.maths.derivation.deep_ tal.input run function t_algorithm_lib:maths/auto_derivation/transform/add_r
##

scoreboard players operation #tal.maths.derivation.deep tal.input = #tal.maths.derivation.deep_ tal.input