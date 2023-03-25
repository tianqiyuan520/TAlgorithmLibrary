


#获取 二分法到的字符串数组
#构造假输出   格式： XXX:拥有2个标签(该句子是 翻译句子 因人而异):(二分法), (玩家输入值)
#data modify block -30000000 4 2022228 Text2 set value '[{"nbt":"LastOutput","block":"-29999998 2 2022228","interpret":true},{"text":"","extra":[{"translate":"commands.tag.list.single.success","with":["",{"text":"2"}]}]},{"text":"{\\"text\\":\\""},{"nbt":"char.check","storage":"t_algorithm_lib:string_parser","interpret":true},{"text":"\\"}"},{"text":", "},{"text":"{\\"text\\":\\""},{"nbt":"io.input","storage":"t_algorithm_lib:string_parser"},{"text":"\\"}"}]'
data modify block -30000000 4 2022228 Text2 set value '[{"nbt":"LastOutput","block":"-29999999 2 2022227","interpret":true,"separator":""},{"text":"","extra":[{"translate":"commands.tag.list.single.success","with":["",{"text":"2"}]}]},{"nbt":"LastOutput","block":"-30000000 2 2022229"},{"text":", "},{"nbt":"LastOutput","block":"-30000000 2 2022230"}]'


data modify entity 00000000-0000-1d63-0000-000000000001 CustomName set from block -30000000 4 2022228 Text2


