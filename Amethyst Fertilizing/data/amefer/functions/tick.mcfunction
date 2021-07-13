# 手持ち骨粉透明化
execute as @e[tag=AmeferFertilizer,nbt={HandItems:[{id:"minecraft:bone_meal"},{}]}] run data modify entity @s HandItems[0].id set value "minecraft:air"

# 骨粉持ってないとき　或いは　視線外したら進捗解除
execute as @a[predicate=!amefer:has_bone_meal] run advancement revoke @s only amefer:has_bone_meals
execute as @e[tag=AmeferFertilizer] at @s unless entity @p[distance=..5.1,predicate=amefer:has_bone_meal] run kill @s 
execute as @e[tag=AmeferFertilizer] at @s facing entity @p feet unless entity @p[distance=..5.1,predicate=amefer:looking_stand] run kill @s 