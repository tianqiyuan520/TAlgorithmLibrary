# execute if score #tal.str.strEDIT.merge.str_len_ tal.input
execute if score #tal.str.strEDIT.merge.str_len_ tal.input matches 89..99 run data modify block -29999999 3 2022220 Command set string block -29999999 3 2022218 LastOutput 89 196
execute if score #tal.str.strEDIT.merge.str_len_ tal.input matches 100..999 run data modify block -29999999 3 2022220 Command set string block -29999999 3 2022218 LastOutput 89 197
execute if score #tal.str.strEDIT.merge.str_len_ tal.input matches 1000..9999 run data modify block -29999999 3 2022220 Command set string block -29999999 3 2022218 LastOutput 89 198
execute if score #tal.str.strEDIT.merge.str_len_ tal.input matches 10000..65536 run data modify block -29999999 3 2022220 Command set string block -29999999 3 2022218 LastOutput 89 199


