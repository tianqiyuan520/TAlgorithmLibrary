execute store result score #tal.maths.integrate.deep2 tal.input run data get storage t_algorithm_lib:maths integrate.transform.deeps[1]
execute store result score #tal.maths.integrate.deep3 tal.input run data get storage t_algorithm_lib:maths integrate.transform.deeps[2]

execute if score #tal.maths.integrate.deep tal.input < #tal.maths.integrate.deep_ tal.input if score #tal.maths.integrate.deep2 tal.input < #tal.maths.integrate.deep_ tal.input run scoreboard players set #tal.maths.integrate.will_deep tal.input 2