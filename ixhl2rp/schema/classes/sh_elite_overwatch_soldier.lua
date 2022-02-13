CLASS.name = "Элитный Солдат Патруля"
CLASS.faction = FACTION_OTA
CLASS.isDefault = false

function CLASS:OnSet(client)
	local character = client:GetCharacter()

	if (character) then
		character:SetModel("models/combine_super_soldier.mdl")
	end
end

CLASS_EOW = CLASS.index
