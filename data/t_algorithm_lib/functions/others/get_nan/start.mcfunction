###获取常数NaN
data modify storage t_algorithm_lib:others get_NaN.result set value 0.0
summon area_effect_cloud .0 .0 .0 {Tags:["tal.get_NaN.entity"],NoGravity:1b,Duration:1}
tp @e[tag=tal.get_NaN.entity,limit=1,type=area_effect_cloud] .0 .0 .0 facing .0 -1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000.0 .0
data modify storage t_algorithm_lib:others get_NaN.result set from entity @e[tag=tal.get_NaN.entity,limit=1,type=area_effect_cloud] Rotation[1]
kill @e[tag=tal.get_NaN.entity,limit=1,type=area_effect_cloud]