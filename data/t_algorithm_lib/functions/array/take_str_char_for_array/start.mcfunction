###将数组里有关英文字母的字符串形式的 英文字母 抽离出来
#["a","b","2"] -> ["a","b"]
##源数据 参数
#data modify storage t_algorithm_lib:array take_char.list set value ["1","2","3"]
#
data modify storage t_algorithm_lib:array take_char.list2 set value []
execute store result score #tal.str.take_char.list_count tal.input run data get storage t_algorithm_lib:array take_char.list
execute if score #tal.str.take_char.list_count tal.input matches 1.. run function t_algorithm_lib:array/take_str_char_for_array/loop
