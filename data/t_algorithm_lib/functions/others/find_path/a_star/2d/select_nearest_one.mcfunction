

execute positioned -29999998 -10 2022241 run kill @e[type=armor_stand,dy=100000000,tag=tal.a_star.a]

execute as @e[tag=tal.a_star.new] run function t_algorithm_lib:others/find_path/a_star/2d/select_nearest_one_loop
execute positioned -29999998 0 2022241 store result score #tal.a_star.smallest tal.a_star.temp run data get entity @e[type=armor_stand,limit=1,sort=nearest,tag=tal.a_star.a] Pos[1]
execute positioned -29999998 0 2022241 run kill @e[type=armor_stand,dy=10000000000000000,tag=tal.a_star.a]

# execute positioned -29999998 0 2022241 store result score #tal.a_star.smallest tal.a_star.temp run data get entity @e[type=armor_stand,limit=1,sort=nearest] Pos[1]
# execute positioned -29999998 0 2022241 run kill @e[type=armor_stand,distance=..200,tag=tal.a_star.a]
