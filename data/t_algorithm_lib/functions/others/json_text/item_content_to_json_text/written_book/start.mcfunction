#author:"1",title:"12",generation:0
#作者
execute if data storage t_algorithm_lib:item_to_json temp.item.tag.author run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '[{"text":"\\n"},{"translate":"book.byAuthor","with":[{"nbt":"temp.item.tag.author","storage":"t_algorithm_lib:item_to_json"}],"color":"#A8A8A8"}]'

#generation: 可选。决定成书是否为副本。0 = 原作, 1 = 原作的副本, 2 = 副本的副本, 3 = 破烂不堪。若缺省本标签，默认成书为“原作”
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{generation:0} run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '[{"text":"\\n"},{"translate":"book.generation.0","color":"#A8A8A8"}]'
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{generation:1} run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '[{"text":"\\n"},{"translate":"book.generation.1","color":"#A8A8A8"}]'
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{generation:2} run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '[{"text":"\\n"},{"translate":"book.generation.2","color":"#A8A8A8"}]'
execute if data storage t_algorithm_lib:item_to_json temp.item.tag{generation:3} run data modify storage t_algorithm_lib:item_to_json temp.string_list append value '[{"text":"\\n"},{"translate":"book.generation.3","color":"#A8A8A8"}]'
