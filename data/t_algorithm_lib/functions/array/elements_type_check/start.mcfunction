###数组元素类型判断
##TAG_Byte TAG_Short TAG_Int TAG_Long TAG_Float TAG_Double TAG_Byte_Array TAG_String TAG_List TAG_Compound TAG_Int_Array TAG_Long_Array
##源数据
execute unless data storage t_algorithm_lib:array elements_type_check.list run data modify storage t_algorithm_lib:array elements_type_check.list set value '123'
#判断
data modify storage t_algorithm_lib:array elements_type_check.list2 set value []

data modify storage t_algorithm_lib:array elements_type_check.list2 set value [1b]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:array elements_type_check.list
execute if score #tal.str.elements_type_check tal.input matches 1 run data modify storage t_algorithm_lib:array temp.return set value 'TAG_Byte'

data modify storage t_algorithm_lib:array elements_type_check.list2 set value [1s]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:array elements_type_check.list
execute if score #tal.str.elements_type_check tal.input matches 1 run data modify storage t_algorithm_lib:array temp.return set value 'TAG_Short'

data modify storage t_algorithm_lib:array elements_type_check.list2 set value [1]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:array elements_type_check.list
execute if score #tal.str.elements_type_check tal.input matches 1 run data modify storage t_algorithm_lib:array temp.return set value 'TAG_Int'

data modify storage t_algorithm_lib:array elements_type_check.list2 set value [1l]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:array elements_type_check.list
execute if score #tal.str.elements_type_check tal.input matches 1 run data modify storage t_algorithm_lib:array temp.return set value 'TAG_Long'

data modify storage t_algorithm_lib:array elements_type_check.list2 set value [1f]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:array elements_type_check.list
execute if score #tal.str.elements_type_check tal.input matches 1 run data modify storage t_algorithm_lib:array temp.return set value 'TAG_Float'

data modify storage t_algorithm_lib:array elements_type_check.list2 set value [1.0d]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:array elements_type_check.list
execute if score #tal.str.elements_type_check tal.input matches 1 run data modify storage t_algorithm_lib:array temp.return set value 'TAG_Double'

data modify storage t_algorithm_lib:array elements_type_check.list2 set value [[B;]]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:array elements_type_check.list
execute if score #tal.str.elements_type_check tal.input matches 1 run data modify storage t_algorithm_lib:array temp.return set value 'TAG_Byte_Array'

data modify storage t_algorithm_lib:array elements_type_check.list2 set value ['']
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:array elements_type_check.list
execute if score #tal.str.elements_type_check tal.input matches 1 run data modify storage t_algorithm_lib:array temp.return set value 'TAG_String'

data modify storage t_algorithm_lib:array elements_type_check.list2 set value [[]]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:array elements_type_check.list
execute if score #tal.str.elements_type_check tal.input matches 1 run data modify storage t_algorithm_lib:array temp.return set value 'TAG_List'

data modify storage t_algorithm_lib:array elements_type_check.list2 set value [{}]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:array elements_type_check.list
execute if score #tal.str.elements_type_check tal.input matches 1 run data modify storage t_algorithm_lib:array temp.return set value 'TAG_Compound'

data modify storage t_algorithm_lib:array elements_type_check.list2 set value [[I;]]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:array elements_type_check.list
execute if score #tal.str.elements_type_check tal.input matches 1 run data modify storage t_algorithm_lib:array temp.return set value 'TAG_Int_Array'

data modify storage t_algorithm_lib:array elements_type_check.list2 set value [[L;]]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:array elements_type_check.list
execute if score #tal.str.elements_type_check tal.input matches 1 run data modify storage t_algorithm_lib:array temp.return set value 'TAG_Long_Array'