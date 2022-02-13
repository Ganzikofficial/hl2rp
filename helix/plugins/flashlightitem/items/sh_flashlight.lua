ITEM.name = "Фонарик"
ITEM.model = Model("models/raviool/flashlight.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "Стандартный фонарик."
ITEM.category = "Tools"

ITEM:Hook("drop", function(item)
	item.player:Flashlight(false)
end)
