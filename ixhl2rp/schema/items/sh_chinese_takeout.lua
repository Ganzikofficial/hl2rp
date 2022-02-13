
ITEM.name = "Китайская лапша"
ITEM.model = Model("models/props_junk/garbage_takeoutcarton001a.mdl")
ITEM.price = 8
ITEM.width = 1
ITEM.height = 1
ITEM.description = "Картонка с китайской лапшой."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, 100))

		return true
	end,
}
