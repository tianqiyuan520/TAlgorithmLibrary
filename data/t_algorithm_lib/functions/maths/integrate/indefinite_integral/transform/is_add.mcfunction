##计算差量
execute if score #tal.maths.integrate.deep tal.input < #tal.maths.integrate.deep_ tal.input run scoreboard players operation #tal.maths.integrate.deep__ tal.input = #tal.maths.integrate.deep_ tal.input
execute if score #tal.maths.integrate.deep tal.input < #tal.maths.integrate.deep_ tal.input run scoreboard players operation #tal.maths.integrate.deep__ tal.input -= #tal.maths.integrate.deep tal.input
# execute if score #tal.maths.integrate.deep__ tal.input matches ..-1 run scoreboard players operation #tal.maths.integrate.deep__ tal.input *= #tal.maths.integrate.-1 tal.input
execute if score #tal.maths.integrate.deep tal.input > #tal.maths.integrate.deep_ tal.input run scoreboard players operation #tal.maths.integrate.deep__ tal.input = #tal.maths.integrate.deep tal.input
execute if score #tal.maths.integrate.deep tal.input > #tal.maths.integrate.deep_ tal.input run scoreboard players operation #tal.maths.integrate.deep__ tal.input -= #tal.maths.integrate.deep_ tal.input
##
# execute if score #tal.maths.integrate.will_deep tal.input matches ..0 if score #tal.maths.integrate.deep tal.input < #tal.maths.integrate.deep_ tal.input run function t_algorithm_lib:maths/integrate/indefinite_integral/transform/simple
##
execute if score #tal.maths.integrate.deep tal.input < #tal.maths.integrate.deep_ tal.input run function t_algorithm_lib:maths/integrate/indefinite_integral/transform/add_l
execute if score #tal.maths.integrate.deep tal.input > #tal.maths.integrate.deep_ tal.input run function t_algorithm_lib:maths/integrate/indefinite_integral/transform/add_r
##

scoreboard players operation #tal.maths.integrate.deep tal.input = #tal.maths.integrate.deep_ tal.input