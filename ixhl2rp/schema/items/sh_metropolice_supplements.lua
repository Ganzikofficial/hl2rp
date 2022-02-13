ITEM.name = "Офицерские пищевые добавки"
ITEM.model = Model("models/props_lab/jar01b.mdl")
ITEM.description = "Консервированная банка, содержащая значительную часть ваших дневных питательных веществ."
ITEM.factions = {FACTION_MPF, FACTION_OTA}

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(100)
		client:SetHealth(math.Clamp(client:Health() + 30, 0, client:GetMaxHealth()))
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
	end,
	OnCanRun = function(itemTable)
		return itemTable.player:IsCombine()
	end
}
