###查找
##传入 字符串类型数组参数1 字符串类型数组参数2 输出 符合条件的指针
##双循环遍历

#e.g. "abcHibc" , "bc" , [1,5]

##[自定义输入] 输入的参数
# data modify storage t_algorithm_lib:string string_editor.find.io.input.string1 set value "abcHibc"
# data modify storage t_algorithm_lib:string string_editor.find.io.input.string2 set value "bc"
##返回结果 指针数组
data modify storage t_algorithm_lib:string string_editor.find.return set value []


data modify storage t_algorithm_lib:string string_editor.find.string1 set from storage t_algorithm_lib:string string_editor.find.io.input.string1
data modify storage t_algorithm_lib:string string_editor.find.string2 set from storage t_algorithm_lib:string string_editor.find.io.input.string2
function t_algorithm_lib:string/string_editor/find/main/start





##初始 [自定义输入] 输入的参数
data modify storage t_algorithm_lib:string string_editor.find.io.input.string1 set value "abcHibc"
data modify storage t_algorithm_lib:string string_editor.find.io.input.string2 set value "bc"