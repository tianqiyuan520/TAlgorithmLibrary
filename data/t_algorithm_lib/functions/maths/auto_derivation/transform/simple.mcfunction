execute store result score #tal.maths.derivation.deep2 tal.input run data get storage t_algorithm_lib:maths auto_derivation.transform.deeps[1]
execute store result score #tal.maths.derivation.deep3 tal.input run data get storage t_algorithm_lib:maths auto_derivation.transform.deeps[2]

execute if score #tal.maths.derivation.deep tal.input < #tal.maths.derivation.deep_ tal.input if score #tal.maths.derivation.deep2 tal.input < #tal.maths.derivation.deep_ tal.input run scoreboard players set #tal.maths.derivation.will_deep tal.input 2