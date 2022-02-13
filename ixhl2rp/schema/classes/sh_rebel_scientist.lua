CLASS.name = "Ученый Сопротивления"
CLASS.faction = FACTION_REBEL
CLASS.isDefault = false
function CLASS:OnSet(client)
	local character = client:GetCharacter()

	if (character) then
		character:SetModel("models/player/labcoats/male_08.mdl")
	end
end
CLASS_RST = CLASS.index