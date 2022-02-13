ATTRIBUTE.name = "Бег"
ATTRIBUTE.description = "Влияет на скорость бега."

function ATTRIBUTE:OnSetup(client, value)
	client:SetRunSpeed(ix.config.Get("runSpeed") + value)
end
