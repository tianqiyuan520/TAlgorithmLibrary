###合并
##传入 字符串类型数组参数 输出 字符串
#e.g. [["a","b"],["c","d"]] -> ["ab","cd"]

##[自定义输入] 输入的参数
# data modify storage t_algorithm_lib:string string_editor.merge.io.input set value [["a","b"],["c","d"]]
##[自定义输入] 回调函数
# data modify storage t_algorithm_lib:string string_editor.merge.io.call_command set value ""
##[返回结果]
data modify storage t_algorithm_lib:string string_editor.merge.return set value []
data modify storage t_algorithm_lib:string string_editor.merge.result set value ""
# data modify storage t_algorithm_lib:string string_editor.merge.temp.str set value ""
data modify storage t_algorithm_lib:string string_editor.merge.temp.input set from storage t_algorithm_lib:string string_editor.merge.io.input

execute in overworld run function t_algorithm_lib:string/string_editor/merge/init
execute in overworld run data modify block -30000000 3 2022221 auto set value 1b
