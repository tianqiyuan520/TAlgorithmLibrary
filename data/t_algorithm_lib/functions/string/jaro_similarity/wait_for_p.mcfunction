data modify storage t_algorithm_lib:string_parser io.command set value 'function t_algorithm_lib:string/jaro_similarity/wait_for_p2'

#获取解析后的式子
data modify storage t_algorithm_lib:string jaro_similarity.strA set from storage t_algorithm_lib:string_parser io.output

data modify storage t_algorithm_lib:string_parser io.input set from storage t_algorithm_lib:string jaro_similarity.input2

schedule function t_algorithm_lib:string/string_parser/call 1t append
