function t_algorithm_lib:num/double_calculation/operation/mul/check_is_cal



data modify storage t_algorithm_lib:num double_calculation.mul_result_ set from storage t_algorithm_lib:num double_calculation.mul_results_[0]
data modify storage t_algorithm_lib:num double_calculation.mul_result2_ set from storage t_algorithm_lib:num double_calculation.mul_results_[1]

data modify storage t_algorithm_lib:num double_calculation.mul_result_ append from storage t_algorithm_lib:num double_calculation.mul_result[]
data modify storage t_algorithm_lib:num double_calculation.mul_result2_ append from storage t_algorithm_lib:num double_calculation.mul_result2[]

data modify storage t_algorithm_lib:num double_calculation.mul_result set from storage t_algorithm_lib:num double_calculation.mul_result_
data modify storage t_algorithm_lib:num double_calculation.mul_result2 set from storage t_algorithm_lib:num double_calculation.mul_result2_