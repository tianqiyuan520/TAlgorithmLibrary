
execute at 00000000-0000-1d63-0000-000800000002 facing entity 00000000-0000-1d63-0000-000800000001 feet positioned -29999997.0 0.0 2022235.0 as 00000000-0000-1d63-0000-000800000002 run tp ~ ~ ~

##判断角度 +down -up
execute store result score #tal.num.double_compare.num tal.input run data get entity 00000000-0000-1d63-0000-000800000002 Rotation[1] 1000
execute if score #tal.num.double_compare.num tal.input matches ..-1 run data modify storage t_algorithm_lib:num double_compare.result set value 1
execute if score #tal.num.double_compare.num tal.input matches 1.. run data modify storage t_algorithm_lib:num double_compare.result set value -1