
FACTION.name = "Гражданин"
FACTION.description = "Обычный гражданин,подчинающийся режиму Альянса."
FACTION.color = Color(150, 125, 100, 255)
FACTION.isDefault = true
FACTION.models = {
	"models/player/fall_winter/female_01.mdl",
	"models/player/fall_winter/female_02.mdl",
	"models/player/fall_winter/male_01.mdl",
	"models/player/fall_winter/male_02.mdl",
	"models/player/fall_winter/male_03.mdl",
	"models/player/fall_winter/male_04.mdl",
	"models/player/fall_winter/male_05.mdl",
	"models/player/fall_winter/male_06.mdl",
	"models/player/fall_winter/male_07.mdl",
	"models/player/fall_winter/male_08.mdl",
	"models/player/fall_winter/male_09.mdl",
	"models/player/fall_winter/male_10.mdl",
	"models/player/fall_winter/male_11.mdl",
}
function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
	local inventory = character:GetInventory()

	character:SetData("cid", id)

	inventory:Add("suitcase", 1)
	inventory:Add("cid", 1, {
		name = character:GetName(),
		id = id
	})
end

FACTION_CITIZEN = FACTION.index
