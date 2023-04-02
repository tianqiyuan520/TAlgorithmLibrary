#运行时，检测玩家是否修改源数据
execute if score #tal.str_p.char.stop tal.input matches 0 run function t_algorithm_lib:string/string_parser/string/dichotomy/check_input/check
# execute if score #tal.get_time_consuming.s tal.input matches 0 run scoreboard players set #tal.get_time_consuming.s tal.input 1

#开始计时
#execute if score #tal.str_p.char.stop tal.input matches 0 if score #tal.str_p.char.timer_on tal.input matches 1 run function t_algorithm_lib:string/string_parser/timer/start
#判断模式是否为 "添加"模式，并且程序已结束
# execute if score #tal.str_p.char.stop tal.input matches 1 if score #tal.str_p.char.mode tal.input matches 1 run function t_algorithm_lib:string/string_parser/string/dichotomy/add_char/add