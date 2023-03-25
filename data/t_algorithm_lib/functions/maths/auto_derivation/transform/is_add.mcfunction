##计算差量
execute if score #tal.maths.derivation.deep tal.str_parser < #tal.maths.derivation.deep_ tal.str_parser run scoreboard players operation #tal.maths.derivation.deep__ tal.str_parser = #tal.maths.derivation.deep_ tal.str_parser
execute if score #tal.maths.derivation.deep tal.str_parser < #tal.maths.derivation.deep_ tal.str_parser run scoreboard players operation #tal.maths.derivation.deep__ tal.str_parser -= #tal.maths.derivation.deep tal.str_parser
# execute if score #tal.maths.derivation.deep__ tal.str_parser matches ..-1 run scoreboard players operation #tal.maths.derivation.deep__ tal.str_parser *= #tal.maths.derivation.-1 tal.str_parser
execute if score #tal.maths.derivation.deep tal.str_parser > #tal.maths.derivation.deep_ tal.str_parser run scoreboard players operation #tal.maths.derivation.deep__ tal.str_parser = #tal.maths.derivation.deep tal.str_parser
execute if score #tal.maths.derivation.deep tal.str_parser > #tal.maths.derivation.deep_ tal.str_parser run scoreboard players operation #tal.maths.derivation.deep__ tal.str_parser -= #tal.maths.derivation.deep_ tal.str_parser
##
# execute if score #tal.maths.derivation.will_deep tal.str_parser matches ..0 if score #tal.maths.derivation.deep tal.str_parser < #tal.maths.derivation.deep_ tal.str_parser run function t_algorithm_lib:maths/auto_derivation/transform/simple
##
execute if score #tal.maths.derivation.deep tal.str_parser < #tal.maths.derivation.deep_ tal.str_parser run function t_algorithm_lib:maths/auto_derivation/transform/add_l
execute if score #tal.maths.derivation.deep tal.str_parser > #tal.maths.derivation.deep_ tal.str_parser run function t_algorithm_lib:maths/auto_derivation/transform/add_r
##

scoreboard players operation #tal.maths.derivation.deep tal.str_parser = #tal.maths.derivation.deep_ tal.str_parser