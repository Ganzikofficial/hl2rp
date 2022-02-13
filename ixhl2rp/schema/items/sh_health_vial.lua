
ITEM.name = "Пузырек биохимического геля"
ITEM.model = Model("models/bloocobalt/l4d/items/w_eq_bile_flask.mdl")
ITEM.description = "Пузырек с зеленой жидкостью внутри, с клапаном для инъекции."
ITEM.category = "Medical"
ITEM.price = 40

ITEM.functions.Apply = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 35, client:GetMaxHealth()))
	end
}
