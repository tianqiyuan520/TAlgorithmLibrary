##基础
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:night_vision"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:16,Amplifier:0,Duration:900}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:invisibility"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:14,Amplifier:0,Duration:900}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:leaping"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:8,Amplifier:0,Duration:900}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:fire_resistance"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:12,Amplifier:0,Duration:900}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:swiftness"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:1,Amplifier:0,Duration:900}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:slowness"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:2,Amplifier:0,Duration:450}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:water_breathing"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:13,Amplifier:0,Duration:900}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:healing"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:6,Amplifier:0,Duration:900}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:harming"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:7,Amplifier:0,Duration:900}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:poison"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:19,Amplifier:0,Duration:225}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:regeneration"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:10,Amplifier:0,Duration:225}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:strength"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:5,Amplifier:0,Duration:900}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:weakness"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:18,Amplifier:0,Duration:450}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:luck"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:26,Amplifier:0,Duration:1500}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:slow_falling"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:28,Amplifier:0,Duration:450}

execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:turtle_master"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:11,Amplifier:2,Duration:100}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:turtle_master"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:2,Amplifier:3,Duration:100}

##升级 时长一半
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:strong_leaping"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:8,Amplifier:1,Duration:450}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:strong_swiftness"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:1,Amplifier:1,Duration:450}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:strong_slowness"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:2,Amplifier:1,Duration:225}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:strong_healing"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:6,Amplifier:1,Duration:225}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:strong_harming"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:7,Amplifier:1,Duration:225}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:strong_poison"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:19,Amplifier:1,Duration:105}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:strong_regeneration"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:10,Amplifier:1,Duration:110}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:strong_strength"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:5,Amplifier:1,Duration:450}

execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:strong_turtle_master"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:11,Amplifier:3,Duration:100}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:strong_turtle_master"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:2,Amplifier:5,Duration:100}

##延长版
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:long_night_vision"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:16,Amplifier:0,Duration:2400}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:long_invisibility"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:14,Amplifier:0,Duration:2400}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:long_leaping"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:8,Amplifier:0,Duration:2400}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:long_fire_resistance"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:12,Amplifier:0,Duration:2400}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:long_swiftness"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:1,Amplifier:0,Duration:2400}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:long_slowness"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:2,Amplifier:0,Duration:1200}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:long_water_breathing"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:13,Amplifier:0,Duration:2400}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:long_poison"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:19,Amplifier:0,Duration:450}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:long_regeneration"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:10,Amplifier:0,Duration:450}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:long_strength"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:5,Amplifier:0,Duration:2400}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:long_weakness"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:18,Amplifier:0,Duration:1200}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:long_slow_falling"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:28,Amplifier:0,Duration:1200}

execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:long_turtle_master"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:11,Amplifier:2,Duration:200}
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{Potion:"minecraft:long_turtle_master"} run data modify storage t_algorithm_lib:item_to_json temp.item_CustomPotionEffects.list prepend value {Id:2,Amplifier:3,Duration:200}
