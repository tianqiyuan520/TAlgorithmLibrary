execute store result score #tal.maths.integrate.deep2 tal.str_parser run data get storage t_algorithm_lib:maths integrate.transform.deeps[1]
execute store result score #tal.maths.integrate.deep3 tal.str_parser run data get storage t_algorithm_lib:maths integrate.transform.deeps[2]

execute if score #tal.maths.integrate.deep tal.str_parser < #tal.maths.integrate.deep_ tal.str_parser if score #tal.maths.integrate.deep2 tal.str_parser < #tal.maths.integrate.deep_ tal.str_parser run scoreboard players set #tal.maths.integrate.will_deep tal.str_parser 2