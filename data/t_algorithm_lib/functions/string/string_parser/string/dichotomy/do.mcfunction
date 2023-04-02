#添加到tags中 进行排序 比较
data modify entity 00000000-0000-1d63-0000-000000000000 Tags set value []


data modify block -30000000 4 2022228 Text4 set value '{"nbt":"LastOutput","block":"-30000000 2 2022229","interpret":true,"separator":""}'
execute if score #tal.sign_version tal.input matches 2 run data modify block -30000000 4 2022228 front_text.messages[3] set value '{"nbt":"LastOutput","block":"-30000000 2 2022229","interpret":true,"separator":""}'

data modify entity 00000000-0000-1d63-0000-000000000000 Tags append from block -30000000 4 2022228 Text4
data modify block -30000000 4 2022228 Text4 set value '{"nbt":"LastOutput","block":"-30000000 2 2022230","interpret":true,"separator":""}'
execute if score #tal.sign_version tal.input matches 2 run data modify block -30000000 4 2022228 front_text.messages[3] set value '{"nbt":"LastOutput","block":"-30000000 2 2022230","interpret":true,"separator":""}'

data modify entity 00000000-0000-1d63-0000-000000000000 Tags append from block -30000000 4 2022228 Text4
execute if score #tal.sign_version tal.input matches 2 run data modify entity 00000000-0000-1d63-0000-000000000000 Tags append from block -30000000 4 2022228 front_text.messages[3]


