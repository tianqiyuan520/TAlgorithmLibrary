###获取电脑时间
data modify storage t_algorithm_lib:string temp.preparation_chars set from storage t_algorithm_lib:string_parser preparation_chars
data modify storage t_algorithm_lib:string temp.parameter set from storage t_algorithm_lib:string_parser io.parameter
data modify storage t_algorithm_lib:string_parser preparation_chars set value ["0","1","2","3","4","5","6","7","8","9",":","[","\"","]",'{"extra":[{"color":"red","extra":[{"color":"gray","clickEvent":{"action":"suggest_command","value":"*"},"extra":[{"text":""},{"underlined":true,"color":"red","text":"*"},{"italic":true,"color":"red","translate":"command.context.here"}],"text":""}],"text":""}],"text":"[',"}"]
data modify storage t_algorithm_lib:string_parser io.parameter set value {limitTime:100,len:100,timer:0b,printable:0b,statement:["limitTime:设置循环拆解字符次数,防止死循环","len为限制 拆解的字符个数,","timer:是否计时拆解时间","printable:是否启动 拆解结果告知"]}

data modify storage t_algorithm_lib:string_parser io.command set value 'function t_algorithm_lib:string/get_computer_time/end'
setblock -30000000 1 2022235 command_block[facing=up]{Command:"*",auto:true} destroy
setblock -30000000 2 2022235 chain_command_block[facing=up]{Command:"/data modify storage t_algorithm_lib:string_parser io.input set from block -30000000 1 2022235 LastOutput",auto:true} destroy
schedule function t_algorithm_lib:string/string_parser/call 2t append