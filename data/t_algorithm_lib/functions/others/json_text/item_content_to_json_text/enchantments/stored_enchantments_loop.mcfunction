#    "effect.none": "无效果",
    # "enchantment.level.1": "I",
    # "enchantment.level.10": "X",
    # "enchantment.level.2": "II",
    # "enchantment.level.3": "III",
    # "enchantment.level.4": "IV",
    # "enchantment.level.5": "V",
    # "enchantment.level.6": "VI",
    # "enchantment.level.7": "VII",
    # "enchantment.level.8": "VIII",
    # "enchantment.level.9": "IX",
    # "enchantment.minecraft.aqua_affinity": "水下速掘",
    # "enchantment.minecraft.bane_of_arthropods": "节肢杀手",
    # "enchantment.minecraft.binding_curse": "绑定诅咒",
    # "enchantment.minecraft.blast_protection": "爆炸保护",
    # "enchantment.minecraft.channeling": "引雷",
    # "enchantment.minecraft.depth_strider": "深海探索者",
    # "enchantment.minecraft.efficiency": "效率",
    # "enchantment.minecraft.feather_falling": "摔落保护",
    # "enchantment.minecraft.fire_aspect": "火焰附加",
    # "enchantment.minecraft.fire_protection": "火焰保护",
    # "enchantment.minecraft.flame": "火矢",
    # "enchantment.minecraft.fortune": "时运",
    # "enchantment.minecraft.frost_walker": "冰霜行者",
    # "enchantment.minecraft.impaling": "穿刺",
    # "enchantment.minecraft.infinity": "无限",
    # "enchantment.minecraft.knockback": "击退",
    # "enchantment.minecraft.looting": "抢夺",
    # "enchantment.minecraft.loyalty": "忠诚",
    # "enchantment.minecraft.luck_of_the_sea": "海之眷顾",
    # "enchantment.minecraft.lure": "饵钓",
    # "enchantment.minecraft.mending": "经验修补",
    # "enchantment.minecraft.multishot": "多重射击",
    # "enchantment.minecraft.piercing": "穿透",
    # "enchantment.minecraft.power": "力量",
    # "enchantment.minecraft.projectile_protection": "弹射物保护",
    # "enchantment.minecraft.protection": "保护",
    # "enchantment.minecraft.punch": "冲击",
    # "enchantment.minecraft.quick_charge": "快速装填",
    # "enchantment.minecraft.respiration": "水下呼吸",
    # "enchantment.minecraft.riptide": "激流",
    # "enchantment.minecraft.sharpness": "锋利",
    # "enchantment.minecraft.silk_touch": "精准采集",
    # "enchantment.minecraft.smite": "亡灵杀手",
    # "enchantment.minecraft.soul_speed": "灵魂疾行",
    # "enchantment.minecraft.sweeping": "横扫之刃",
    # "enchantment.minecraft.thorns": "荆棘",
    # "enchantment.minecraft.unbreaking": "耐久",
    # "enchantment.minecraft.vanishing_curse": "消失诅咒",
    # "enchantment.unknown": "未知的魔咒：%s",

##获取列表个数:
##判断附魔
data modify storage t_algorithm_lib:item_to_json temp.Enchantments_check set from storage t_algorithm_lib:item_to_json temp.item_StoredEnchantments[0]

execute unless data storage t_algorithm_lib:item_to_json temp.Enchantments_check{id:""} unless data storage t_algorithm_lib:item_to_json temp.Enchantments_check{id:" "} run data modify storage t_algorithm_lib:item_to_json temp.string_list append value "\\n"

function t_algorithm_lib:others/json_text/item_content_to_json_text/enchantments/check_id_and_lvl

# data modify storage t_algorithm_lib:item_to_json temp.string_list append from storage t_algorithm_lib:item_to_json temp.item_StoredEnchantments[0]
data remove storage t_algorithm_lib:item_to_json temp.item_StoredEnchantments[0]
data modify storage t_algorithm_lib:item_to_json temp.Enchantments_check set value {}
execute store result score #tal.o.ITJ.list.count tal.input run data get storage t_algorithm_lib:item_to_json temp.item_StoredEnchantments

execute if score #tal.o.ITJ.list.count tal.input matches 1.. run function t_algorithm_lib:others/json_text/item_content_to_json_text/enchantments/stored_enchantments_loop