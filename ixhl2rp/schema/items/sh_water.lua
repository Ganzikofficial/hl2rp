
ITEM.name = "Вода Брина"
ITEM.model = Model("models/props_junk/popcan01a.mdl")
ITEM.description = "Синяя алюминивая банка с настоящей водой."
ITEM.price = 2
ITEM.category = "Consumables"

ITEM.functions.Drink = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(25)
		client:SetHealth(math.Clamp(client:Health() + 6, 0, client:GetMaxHealth()))
		client:EmitSound("npc/barnacle/barnacle_gulp2.wav", 75, 90, 0.35)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}
