###获取当前 告示牌版本（是否改版）
setblock -29999995 7 2022222 minecraft:oak_sign{Text1:'{"text":"获取当前 告示牌版本（是否改版）"}'}
scoreboard players set #tal.sign_version tal.input 1
execute if data block -29999995 7 2022222 front_text.messages run scoreboard players set #tal.sign_version tal.input 2
setblock -29999995 7 2022222 minecraft:air
