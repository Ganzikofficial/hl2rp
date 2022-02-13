FACTION.name = "Гражданская Оборона"
FACTION.description = "Аналог земной полиции, с более строгими законами. Гражданская Оборона была создана Альянсом для поддержания порядка внутри городов."
FACTION.color = Color(50, 100, 150)
FACTION.pay = 50
FACTION.models = {"models/dpfilms/metropolice/playermodels/pm_urban_police.mdl"}
FACTION.weapons = {"ix_stunstick"}
FACTION.isDefault = false
FACTION.isGloballyRecognized = true
FACTION.runSounds = {[0] = "NPC_MetroPolice.RunFootstepLeft", [1] = "NPC_MetroPolice.RunFootstepRight"}

function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()
	inventory:Add("zip_tie", 1)
	inventory:Add("cid", 1)
end

function FACTION:GetDefaultName(client)
	return "D47.MPF-RCT." .. Schema:ZeroNumber(math.random(1, 999), 3), true
end

function FACTION:OnTransfered(client)
	local character = client:GetCharacter()

	character:SetName(self:GetDefaultName())
	character:SetModel(self.models[1])
end

function FACTION:OnNameChanged(client, oldValue, value)
	local character = client:GetCharacter()

	if (!Schema:IsCombineRank(oldValue, "I7") and Schema:IsCombineRank(value, "I7")) then
		character:JoinClass(CLASS_MPR)
	elseif (!Schema:IsCombineRank(oldValue, "GU-04") and Schema:IsCombineRank(value, "I4")) then
		character:SetModel("models/dpfilms/metropolice/playermodels/pm_hl2concept.mdl")
		character:JoinClass(CLASS_MPU)
	elseif (!Schema:IsCombineRank(oldValue, "GU-03") and Schema:IsCombineRank(value, "I3")) then
		character:SetModel("models/dpfilms/metropolice/hdpolice_i3.mdl")
	elseif (!Schema:IsCombineRank(oldValue, "GU-02") and Schema:IsCombineRank(value, "I2")) then
		character:SetModel("models/dpfilms/metropolice/hdpolice_i2.mdl")
	elseif (!Schema:IsCombineRank(oldValue, "GU-01") and Schema:IsCombineRank(value, "I1")) then
		character:SetModel("models/dpfilms/metropolice/hdpolice_i1.mdl")
	elseif (!Schema:IsCombineRank(oldValue, "OfC") and Schema:IsCombineRank(value, "OfC")) then
		character:SetModel("models/dpfilms/metropolice/trenchcoat_ofc.mdl")
	elseif (!Schema:IsCombineRank(oldValue, "EpU") and Schema:IsCombineRank(value, "EpU")) then
		character:JoinClass(CLASS_EMP)
		character:SetModel("models/dpfilms/metropolice/playermodels/pm_elite_police.mdl")
	elseif (!Schema:IsCombineRank(oldValue, "DvL") and Schema:IsCombineRank(value, "DvL")) then
		character:SetModel("models/player/toastlord/pm_metrocop_reimagined.mdl")
	elseif (!Schema:IsCombineRank(oldValue, "SeC") and Schema:IsCombineRank(value, "SeC")) then
		character:SetModel("models/dpfilms/metropolice/playermodels/pm_phoenix_police.mdl")
	elseif (!Schema:IsCombineRank(oldValue, "SCN") and Schema:IsCombineRank(value, "SCN")
	or !Schema:IsCombineRank(oldValue, "SHIELD") and Schema:IsCombineRank(value, "SHIELD")) then
		character:JoinClass(CLASS_MPS)
	end

	if (!Schema:IsCombineRank(oldValue, "GHOST") and Schema:IsCombineRank(value, "GHOST")) then
		character:SetModel("models/dpfilms/metropolice/playermodels/pm_black_police.mdl")
		character:JoinClass(CLASS_MPU)
	elseif(!Schema:IsCombineRank(oldValue, "HELIX") and Schema:IsCombineRank(value, "HELIX")) then
		character:SetModel("models/dpfilms/metropolice/playermodels/pm_civil_medic.mdl")
	elseif(!Schema:IsCombineRank(oldValue, "HUNTER") and Schema:IsCombineRank(value, "HUNTER")) then
		character:SetModel("models/dpfilms/metropolice/hunter_police_subtle_ofc.mdl")
	end
end

FACTION_MPF = FACTION.index
