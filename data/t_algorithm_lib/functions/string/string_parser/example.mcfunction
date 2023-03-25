#初识化
function t_algorithm_lib:string/string_parser/init
##
# data modify storage t_algorithm_lib:string_parser io.input set value '"你好","hello"'
data modify storage t_algorithm_lib:string_parser io.input set value 'This is an example string!'
#data modify storage t_algorithm_lib:string_parser io.input set value "a"
function t_algorithm_lib:string/string_parser/start

#/scoreboard players get #tal.str_p.char.limlit tal.str_parser