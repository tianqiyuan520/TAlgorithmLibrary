data modify storage t_algorithm_lib:string_parser io.parameter set from storage t_algorithm_lib:string temp.parameter

#获取解析后的式子
data modify storage t_algorithm_lib:string kmp.strB set from storage t_algorithm_lib:string_parser io.output
data modify storage t_algorithm_lib:string kmp.list1 set from storage t_algorithm_lib:string kmp.strA
data modify storage t_algorithm_lib:string kmp.list2 set from storage t_algorithm_lib:string kmp.strB

function t_algorithm_lib:string/kmp/start
