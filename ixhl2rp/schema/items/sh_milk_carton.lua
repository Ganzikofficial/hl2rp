
ITEM.name = "Упаковка молока"
ITEM.model = Model("models/props_junk/garbage_milkcarton002a.mdl")
ITEM.price = 18
ITEM.width = 1
ITEM.height = 1
ITEM.description = "Картонная упаковка с молоком."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Drink = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, client:GetMaxHealth()))

		return true
	end,
}
