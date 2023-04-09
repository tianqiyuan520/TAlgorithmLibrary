
tellraw @a [{"text":"[TDictionary] ","color": "#a8a8a8"},{"text":"Tdictionary重载完成","color": "gold"}]


# 2022.2.28 法一
# interpret
# data modify block ~ ~ ~ Text1 set value {"nbt":"I","storage":"mytest","interpret":true}


#设置数字
# data modify storage minecraft:mytest I set value ["a"]
#获取 玩家输入文本 与 二分法的结果
# data modify block 1 4 175 Text1 set value '{"nbt":"I","storage":"mytest","interpret":true}'
# data modify entity 5853e5c2-feee-4e0c-a470-2c26d22085c0 CustomName set from block 1 4 175 Text1
# data modify entity 8b89fdc4-bdc2-4afe-ae81-7eb075d19ecf CustomName set from block 1 4 175 Text2
#进行 附魔压扁
# enchant 5853e5c2-feee-4e0c-a470-2c26d22085c0 minecraft:aqua_affinity
# enchant 8b89fdc4-bdc2-4afe-ae81-7eb075d19ecf minecraft:aqua_affinity
#添加 压扁结果进 Tags
# data modify entity f3ddfd38-b900-4f4e-9762-31f246a1cfd6 Tags append from block 5 4 179 LastOutput
# data modify entity f3ddfd38-b900-4f4e-9762-31f246a1cfd6 Tags append from block 6 4 179 LastOutput
#获取 Tags的排序
# data get entity f3ddfd38-b900-4f4e-9762-31f246a1cfd6 Tags


#! 2022.3.2 法二构造假输出
#tellraw @s [{"text":"","extra":[{"translate":"commands.tag.list.single.success","with":["",{"text":"2"}]}]}]
#讲将help me 的结果作为名字 然后假输出
#data modify block -29999976 4 2022229 Text2 set value '[{"nbt":"LastOutput","block":"-29999972 4 2022228","interpret":true},{"text":"","extra":[{"translate":"commands.tag.list.single.success","with":["",{"text":"2"}]}]},{"nbt":"char.check","storage":"t_algorithm_lib:string_parser","interpret":true}]'

#过程

#伪造名字
#/data modify entity 96024f65-a083-43de-9607-f691eb777265 CustomName set value '"/me <action>"'
#获取真实值
#/tag 96024f65-a083-43de-9607-f691eb777265 list
#/help me
#获取 tag list的返回的句子 将进行压扁处理
#/data modify entity 1517468e-5a86-406d-ac1d-572a15367f86 CustomName set from block -29999972 4 2022229 LastOutput

#伪输出   -29999972 4 2022228的命令方块为 /help me
#data modify block -29999976 4 2022229 Text2 set value '[{"nbt":"LastOutput","block":"-29999972 4 2022228","interpret":true},{"text":"","extra":[{"translate":"commands.tag.list.single.success","with":["",{"text":"2"}]}]},{"nbt":"char.check","storage":"t_algorithm_lib:string_parser","interpret":true},{"text":", "},{"text":"ab"}]'
#/data modify entity be0662e3-3ca6-426c-aad8-830bbbd066bf CustomName set from block -29999976 4 2022229 Text2

#/enchant 1517468e-5a86-406d-ac1d-572a15367f86 minecraft:aqua_affinity
#/enchant be0662e3-3ca6-426c-aad8-830bbbd066bf minecraft:aqua_affinity