# data modify storage t_algorithm_lib:maths integrate.temp.list set from storage t_algorithm_lib:maths integrate.content
data modify storage t_algorithm_lib:maths integrate.temp.list2 set value []
function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/to_remove_p/re
data modify storage t_algorithm_lib:maths integrate.temp.list set from storage t_algorithm_lib:maths integrate.temp.list2