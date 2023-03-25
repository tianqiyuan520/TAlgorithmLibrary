function t_algorithm_lib:others/time_consuming/start
# data modify storage t_algorithm_lib:maths calculator.input set value [['abs('],['x'],[')']]
# data modify storage t_algorithm_lib:maths calculator.args set value [{"id":"x",value:-3.0d}]
# function t_algorithm_lib:maths/calculator/start
##1-4ms
say 1
function t_algorithm_lib:others/time_consuming/end