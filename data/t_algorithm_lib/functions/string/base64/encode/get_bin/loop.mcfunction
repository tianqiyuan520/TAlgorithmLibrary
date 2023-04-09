##循环 ASCII转bin
##判断字符
data modify storage t_algorithm_lib:string base64.encode.list_check set from storage t_algorithm_lib:string base64.encode.list1[0]

execute if data storage t_algorithm_lib:string base64.encode{list_check:" "} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_32
execute if data storage t_algorithm_lib:string base64.encode{list_check:"!"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_33
execute if data storage t_algorithm_lib:string base64.encode{list_check:"\""} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_34
execute if data storage t_algorithm_lib:string base64.encode{list_check:"#"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_35
execute if data storage t_algorithm_lib:string base64.encode{list_check:"$"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_36
execute if data storage t_algorithm_lib:string base64.encode{list_check:"%"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_37
execute if data storage t_algorithm_lib:string base64.encode{list_check:"&"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_38
execute if data storage t_algorithm_lib:string base64.encode{list_check:"'"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_39
execute if data storage t_algorithm_lib:string base64.encode{list_check:"("} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_40
execute if data storage t_algorithm_lib:string base64.encode{list_check:")"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_41
execute if data storage t_algorithm_lib:string base64.encode{list_check:"*"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_42
execute if data storage t_algorithm_lib:string base64.encode{list_check:"+"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_43
execute if data storage t_algorithm_lib:string base64.encode{list_check:","} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_44
execute if data storage t_algorithm_lib:string base64.encode{list_check:"-"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_45
execute if data storage t_algorithm_lib:string base64.encode{list_check:"."} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_46
execute if data storage t_algorithm_lib:string base64.encode{list_check:"/"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_47
execute if data storage t_algorithm_lib:string base64.encode{list_check:"0"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_48
execute if data storage t_algorithm_lib:string base64.encode{list_check:"1"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_49
execute if data storage t_algorithm_lib:string base64.encode{list_check:"2"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_50
execute if data storage t_algorithm_lib:string base64.encode{list_check:"3"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_51
execute if data storage t_algorithm_lib:string base64.encode{list_check:"4"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_52
execute if data storage t_algorithm_lib:string base64.encode{list_check:"5"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_53
execute if data storage t_algorithm_lib:string base64.encode{list_check:"6"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_54
execute if data storage t_algorithm_lib:string base64.encode{list_check:"7"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_55
execute if data storage t_algorithm_lib:string base64.encode{list_check:"8"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_56
execute if data storage t_algorithm_lib:string base64.encode{list_check:"9"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_57
execute if data storage t_algorithm_lib:string base64.encode{list_check:":"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_58
execute if data storage t_algorithm_lib:string base64.encode{list_check:";"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_59
execute if data storage t_algorithm_lib:string base64.encode{list_check:"<"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_60
execute if data storage t_algorithm_lib:string base64.encode{list_check:"="} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_61
execute if data storage t_algorithm_lib:string base64.encode{list_check:">"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_62
execute if data storage t_algorithm_lib:string base64.encode{list_check:"?"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_63
execute if data storage t_algorithm_lib:string base64.encode{list_check:"@"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_64
execute if data storage t_algorithm_lib:string base64.encode{list_check:"A"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_65
execute if data storage t_algorithm_lib:string base64.encode{list_check:"B"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_66
execute if data storage t_algorithm_lib:string base64.encode{list_check:"C"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_67
execute if data storage t_algorithm_lib:string base64.encode{list_check:"D"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_68
execute if data storage t_algorithm_lib:string base64.encode{list_check:"E"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_69
execute if data storage t_algorithm_lib:string base64.encode{list_check:"F"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_70
execute if data storage t_algorithm_lib:string base64.encode{list_check:"G"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_71
execute if data storage t_algorithm_lib:string base64.encode{list_check:"H"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_72
execute if data storage t_algorithm_lib:string base64.encode{list_check:"I"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_73
execute if data storage t_algorithm_lib:string base64.encode{list_check:"J"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_74
execute if data storage t_algorithm_lib:string base64.encode{list_check:"K"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_75
execute if data storage t_algorithm_lib:string base64.encode{list_check:"L"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_76
execute if data storage t_algorithm_lib:string base64.encode{list_check:"M"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_77
execute if data storage t_algorithm_lib:string base64.encode{list_check:"N"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_78
execute if data storage t_algorithm_lib:string base64.encode{list_check:"O"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_79
execute if data storage t_algorithm_lib:string base64.encode{list_check:"P"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_80
execute if data storage t_algorithm_lib:string base64.encode{list_check:"Q"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_81
execute if data storage t_algorithm_lib:string base64.encode{list_check:"R"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_82
execute if data storage t_algorithm_lib:string base64.encode{list_check:"S"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_83
execute if data storage t_algorithm_lib:string base64.encode{list_check:"T"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_84
execute if data storage t_algorithm_lib:string base64.encode{list_check:"U"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_85
execute if data storage t_algorithm_lib:string base64.encode{list_check:"V"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_86
execute if data storage t_algorithm_lib:string base64.encode{list_check:"W"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_87
execute if data storage t_algorithm_lib:string base64.encode{list_check:"X"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_88
execute if data storage t_algorithm_lib:string base64.encode{list_check:"Y"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_89
execute if data storage t_algorithm_lib:string base64.encode{list_check:"Z"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_90
execute if data storage t_algorithm_lib:string base64.encode{list_check:"["} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_91
execute if data storage t_algorithm_lib:string base64.encode{list_check:"\\"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_92
execute if data storage t_algorithm_lib:string base64.encode{list_check:"]"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_93
execute if data storage t_algorithm_lib:string base64.encode{list_check:"^"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_94
execute if data storage t_algorithm_lib:string base64.encode{list_check:"_"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_95
execute if data storage t_algorithm_lib:string base64.encode{list_check:"`"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_96
execute if data storage t_algorithm_lib:string base64.encode{list_check:"a"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_97
execute if data storage t_algorithm_lib:string base64.encode{list_check:"b"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_98
execute if data storage t_algorithm_lib:string base64.encode{list_check:"c"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_99
execute if data storage t_algorithm_lib:string base64.encode{list_check:"d"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_100
execute if data storage t_algorithm_lib:string base64.encode{list_check:"e"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_101
execute if data storage t_algorithm_lib:string base64.encode{list_check:"f"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_102
execute if data storage t_algorithm_lib:string base64.encode{list_check:"g"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_103
execute if data storage t_algorithm_lib:string base64.encode{list_check:"h"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_104
execute if data storage t_algorithm_lib:string base64.encode{list_check:"i"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_105
execute if data storage t_algorithm_lib:string base64.encode{list_check:"j"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_106
execute if data storage t_algorithm_lib:string base64.encode{list_check:"k"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_107
execute if data storage t_algorithm_lib:string base64.encode{list_check:"l"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_108
execute if data storage t_algorithm_lib:string base64.encode{list_check:"m"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_109
execute if data storage t_algorithm_lib:string base64.encode{list_check:"n"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_110
execute if data storage t_algorithm_lib:string base64.encode{list_check:"o"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_111
execute if data storage t_algorithm_lib:string base64.encode{list_check:"p"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_112
execute if data storage t_algorithm_lib:string base64.encode{list_check:"q"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_113
execute if data storage t_algorithm_lib:string base64.encode{list_check:"r"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_114
execute if data storage t_algorithm_lib:string base64.encode{list_check:"s"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_115
execute if data storage t_algorithm_lib:string base64.encode{list_check:"t"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_116
execute if data storage t_algorithm_lib:string base64.encode{list_check:"u"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_117
execute if data storage t_algorithm_lib:string base64.encode{list_check:"v"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_118
execute if data storage t_algorithm_lib:string base64.encode{list_check:"w"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_119
execute if data storage t_algorithm_lib:string base64.encode{list_check:"x"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_120
execute if data storage t_algorithm_lib:string base64.encode{list_check:"y"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_121
execute if data storage t_algorithm_lib:string base64.encode{list_check:"z"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_122
execute if data storage t_algorithm_lib:string base64.encode{list_check:"{"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_123
execute if data storage t_algorithm_lib:string base64.encode{list_check:"|"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_124
execute if data storage t_algorithm_lib:string base64.encode{list_check:"}"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_125
execute if data storage t_algorithm_lib:string base64.encode{list_check:"~"} run function t_algorithm_lib:string/base64/encode/get_bin/chars/char_126


data remove storage t_algorithm_lib:string base64.encode.list1[0]
execute store result score #tal.str.base64.encode.list_count tal.input run data get storage t_algorithm_lib:string base64.encode.list1
execute if score #tal.str.base64.encode.list_count tal.input matches 1.. run function t_algorithm_lib:string/base64/encode/get_bin/loop