
ITEM.name = "Особая вода Брина"
ITEM.model = Model("models/props_junk/popcan01a.mdl")
ITEM.price = 6
ITEM.skin = 2
ITEM.description = "Желтая алюминиевая банка с водой, которая кажется немного более вязкой, чем обычно."
ITEM.category = "Consumables"

ITEM.functions.Drink = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(75)
		client:SetHealth(math.Clamp(client:Health() + 10, 0, client:GetMaxHealth()))
		client:EmitSound("npc/barnacle/barnacle_gulp2.wav", 75, 90, 0.35)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}
