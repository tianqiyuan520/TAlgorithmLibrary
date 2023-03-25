execute store result score #tal.maths.derivation.deep2 tal.str_parser run data get storage t_algorithm_lib:maths auto_derivation.transform.deeps[1]
execute store result score #tal.maths.derivation.deep3 tal.str_parser run data get storage t_algorithm_lib:maths auto_derivation.transform.deeps[2]

execute if score #tal.maths.derivation.deep tal.str_parser < #tal.maths.derivation.deep_ tal.str_parser if score #tal.maths.derivation.deep2 tal.str_parser < #tal.maths.derivation.deep_ tal.str_parser run scoreboard players set #tal.maths.derivation.will_deep tal.str_parser 2