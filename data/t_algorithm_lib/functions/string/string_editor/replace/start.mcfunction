###替换
##传入 字符串类型数组参数1 字符串类型数组参数2 字符串类型数组参数3 输出 替换后的字符串
##双循环遍历

#e.g. "abcHibc" , "Hi","Z" , "abcZbc"

##[自定义输入] 输入的参数
# data modify storage t_algorithm_lib:string string_editor.replace.io.input.string1 set value "abcHibc"
# data modify storage t_algorithm_lib:string string_editor.replace.io.input.string2 set value "Hi"
# data modify storage t_algorithm_lib:string string_editor.replace.io.input.string3 set value "Z"
##[返回结果]
data modify storage t_algorithm_lib:string string_editor.replace.return set value []
#
data modify storage t_algorithm_lib:string string_editor.find.io.input.string1 set from storage t_algorithm_lib:string string_editor.replace.io.input.string1
data modify storage t_algorithm_lib:string string_editor.find.io.input.string2 set from storage t_algorithm_lib:string string_editor.replace.io.input.string2
function t_algorithm_lib:string/string_editor/find/start
data modify storage t_algorithm_lib:string string_editor.replace.indexs set from storage t_algorithm_lib:string string_editor.find.return

##获取指针
function t_algorithm_lib:string/string_editor/replace/main/start

##合并
data modify storage t_algorithm_lib:string string_editor.merge.io.input set value [[]]
data modify storage t_algorithm_lib:string string_editor.merge.io.input[0] set from storage t_algorithm_lib:string string_editor.replace.return
data modify storage t_algorithm_lib:string string_editor.merge.io.call_command set value "data modify storage t_algorithm_lib:string string_editor.replace.return set from storage t_algorithm_lib:string string_editor.merge.return[0]"
function t_algorithm_lib:string/string_editor/merge/start


##初始 [自定义输入] 输入的参数
data modify storage t_algorithm_lib:string string_editor.replace.io.input.string1 set value "abcHibc"
data modify storage t_algorithm_lib:string string_editor.replace.io.input.string2 set value "Hi"
data modify storage t_algorithm_lib:string string_editor.replace.io.input.string3 set value "Z"
