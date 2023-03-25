##先进行分类 
##5+13*x^(5-x)+(5-3)/2+5
##[5,+,13,*,x,^,(,5,-,x,),+,(5,-,3),/,2,+,5]
##[[5],[+],[13],[*],[x],[^],[[5],[-],[x]],[+],[[5],[-],[3]],[/],[2],[+],[5]]

data modify storage t_algorithm_lib:maths polynomial.separation set value []
data modify storage t_algorithm_lib:maths polynomial.temp.separation set from storage t_algorithm_lib:maths polynomial.input
data modify storage t_algorithm_lib:maths polynomial.temp.list set value []
function t_algorithm_lib:maths/polynomial/simplify/separate/start


##分类后进行读取
function t_algorithm_lib:maths/polynomial/simplify/read/start


