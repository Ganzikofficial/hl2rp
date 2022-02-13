
ITEM.name = "Арбуз"
ITEM.model = Model("models/props_junk/watermelon01.mdl")
ITEM.price = 16
ITEM.width = 2
ITEM.height = 2
ITEM.description = "Большой зеленый фрукт."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, client:GetMaxHealth()))

		return true
	end,
}
