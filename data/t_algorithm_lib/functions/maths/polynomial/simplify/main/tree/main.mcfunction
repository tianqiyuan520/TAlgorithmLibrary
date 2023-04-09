##树结构 主程序处理
#loop
#[首次]1.分离+-
#[首次]2.各项分离通用化
#[首次]3.处理+-
#4.乘法分离之后指数处理 循环loop 形成链状树结构
#4.1加减 
#5.处理结果返回( 条件：无法继续形成链状树结构 )
#6.*处理 (指数为0)
#7.继续循环loop
#8.加减处理(index = len(该式子),终止)

##获取指针
execute store result score #tal.maths.polynomial.main.index tal.input run data get storage t_algorithm_lib:maths polynomial.main.main_tree[-1][1][0]
execute store result score #tal.maths.polynomial.main.is_return tal.input run data get storage t_algorithm_lib:maths polynomial.main.main_tree[-1][3][0]
##是否回溯
execute if score #tal.maths.polynomial.main.is_return tal.input matches 1 run function t_algorithm_lib:maths/polynomial/simplify/main/tree/return
##判断是否为初次
execute if score #tal.maths.polynomial.main.is_return tal.input matches 0 if score #tal.maths.polynomial.main.index tal.input matches -1 run function t_algorithm_lib:maths/polynomial/simplify/main/tree/before
##指针增加
execute if score #tal.maths.polynomial.main.is_return tal.input matches 0 run function t_algorithm_lib:maths/polynomial/simplify/main/tree/index_add
##主体
execute if score #tal.maths.polynomial.main.is_return tal.input matches 0 if score #tal.maths.polynomial.main.index tal.input matches 0.. run function t_algorithm_lib:maths/polynomial/simplify/main/tree/main/start


scoreboard players remove #tal.maths.polynomial.main.tree_loop tal.input 1
execute if score #tal.maths.polynomial.main.tree_loop tal.input matches 1.. if score #tal.maths.polynomial.main.tree_end tal.input matches 0 run function t_algorithm_lib:maths/polynomial/simplify/main/tree/main