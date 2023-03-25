##计算差量
execute if score #tal.maths.integrate.deep tal.str_parser < #tal.maths.integrate.deep_ tal.str_parser run scoreboard players operation #tal.maths.integrate.deep__ tal.str_parser = #tal.maths.integrate.deep_ tal.str_parser
execute if score #tal.maths.integrate.deep tal.str_parser < #tal.maths.integrate.deep_ tal.str_parser run scoreboard players operation #tal.maths.integrate.deep__ tal.str_parser -= #tal.maths.integrate.deep tal.str_parser
# execute if score #tal.maths.integrate.deep__ tal.str_parser matches ..-1 run scoreboard players operation #tal.maths.integrate.deep__ tal.str_parser *= #tal.maths.integrate.-1 tal.str_parser
execute if score #tal.maths.integrate.deep tal.str_parser > #tal.maths.integrate.deep_ tal.str_parser run scoreboard players operation #tal.maths.integrate.deep__ tal.str_parser = #tal.maths.integrate.deep tal.str_parser
execute if score #tal.maths.integrate.deep tal.str_parser > #tal.maths.integrate.deep_ tal.str_parser run scoreboard players operation #tal.maths.integrate.deep__ tal.str_parser -= #tal.maths.integrate.deep_ tal.str_parser
##
# execute if score #tal.maths.integrate.will_deep tal.str_parser matches ..0 if score #tal.maths.integrate.deep tal.str_parser < #tal.maths.integrate.deep_ tal.str_parser run function t_algorithm_lib:maths/integrate/indefinite_integral/transform/simple
##
execute if score #tal.maths.integrate.deep tal.str_parser < #tal.maths.integrate.deep_ tal.str_parser run function t_algorithm_lib:maths/integrate/indefinite_integral/transform/add_l
execute if score #tal.maths.integrate.deep tal.str_parser > #tal.maths.integrate.deep_ tal.str_parser run function t_algorithm_lib:maths/integrate/indefinite_integral/transform/add_r
##

scoreboard players operation #tal.maths.integrate.deep tal.str_parser = #tal.maths.integrate.deep_ tal.str_parser