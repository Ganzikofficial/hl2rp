CLASS.name = "Ветеран Сопротивления"
CLASS.faction = FACTION_REBEL
CLASS.isDefault = false
function CLASS:OnSet(client)
	local character = client:GetCharacter()

	if (character) then
		character:SetModel("models/tactical_rebel_coat.mdl")
	end
end
CLASS_RVN = CLASS.index