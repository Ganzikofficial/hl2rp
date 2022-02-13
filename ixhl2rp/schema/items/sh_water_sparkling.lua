
ITEM.name = "Газированная вода Брина"
ITEM.model = Model("models/props_junk/popcan01a.mdl")
ITEM.price = 3
ITEM.skin = 1
ITEM.description = "Красная алюминиевая банка газированной воды."
ITEM.category = "Consumables"

ITEM.functions.Drink = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(50)
		client:SetHealth(math.Clamp(client:Health() + 8, 0, client:GetMaxHealth()))
		client:EmitSound("npc/barnacle/barnacle_gulp2.wav", 75, 90, 0.35)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}
