#计算 该点离终点的距离 曼哈顿距离
#x
scoreboard players operation #tal.a_star.point2.x tal.a_star.temp -= #tal.a_star.point1.x tal.a_star.temp
scoreboard players set #-1 tal.a_star.temp -1
scoreboard players set #100 tal.a_star.temp 100
execute if score #tal.a_star.point2.x tal.a_star.temp matches ..0 run scoreboard players operation #tal.a_star.point2.x tal.a_star.temp *= #-1 tal.a_star.temp
#z
scoreboard players operation #tal.a_star.point2.z tal.a_star.temp -= #tal.a_star.point1.z tal.a_star.temp
scoreboard players set #-1 tal.a_star.temp -1
#取正
execute if score #tal.a_star.point2.z tal.a_star.temp matches ..0 run scoreboard players operation #tal.a_star.point2.z tal.a_star.temp *= #-1 tal.a_star.temp


#最终欧距离
scoreboard players operation #tal.a_star.point2.x tal.a_star.temp *= #tal.a_star.point2.x tal.a_star.temp
scoreboard players operation #tal.a_star.distance tal.a_star.temp = #tal.a_star.point2.x tal.a_star.temp

scoreboard players operation #tal.a_star.point2.z tal.a_star.temp *= #tal.a_star.point2.z tal.a_star.temp
scoreboard players operation #tal.a_star.distance tal.a_star.temp += #tal.a_star.point2.z tal.a_star.temp


