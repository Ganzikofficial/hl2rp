
ITEM.name = "Аптечка"
ITEM.model = Model("models/haxxer/me2_props/medcrate.mdl")
ITEM.description = "Внутри всё для полевой и быстрой реанимации или лечения."
ITEM.category = "Medical"
ITEM.price = 75

ITEM.functions.Apply = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 50, 100))
	end
}
