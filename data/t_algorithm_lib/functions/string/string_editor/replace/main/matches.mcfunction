data remove storage t_algorithm_lib:string string_editor.find.return[0]
data modify storage t_algorithm_lib:string string_editor.replace.return append from storage t_algorithm_lib:string string_editor.replace.io.input.string3
execute store result score #tal.str.strEDIT.replace.str3_len tal.input run data get storage t_algorithm_lib:string string_editor.replace.io.input.string2