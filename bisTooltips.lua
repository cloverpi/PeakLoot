local addonName, Addon = ...
local SILVER = '|cffc7c7cf%s|r'


local function getItemID(link)
	local _, _, Color, Ltype, Id, Enchant, Gem1, Gem2, Gem3, Gem4,
    Suffix, Unique, LinkLvl, Name = string.find(link,
    "|?c?f?f?(%x*)|?H?([^:]*):?(%d+):?(%d*):?(%d*):?(%d*):?(%d*):?(%d*):?(%-?%d*):?(%-?%d*):?(%d*):?(%d*):?(%-?%d*)|?h?%[?([^%[%]]*)%]?|?h?|?r?")
	return Id
end

local function AddTooltip(tooltip, itemID)
	DB = _G[addonName .. "DB"] -- !
	if (DB['BisItems'][itemID] ~= nil) then
		tooltip:AddDoubleLine("OTBBIS: ", SILVER:format(table.concat(DB['BisItems'][itemID], ', ')))
	elseif (DB['BisAlias'][itemID] ~= nil) then
		local t ={}
		local alias = DB['BisAlias'][itemID]
		for i=1,#alias do
			if (DB['BisItems'][alias[i]] ~= nil) then
				for j=1, #DB['BisItems'][alias[i]] do
					table.insert(t, DB['BisItems'][alias[i]][j])
				end
			end
		end
		if (#t > 0) then
			tooltip:AddDoubleLine("OTBBIS: ", SILVER:format(table.concat(t, ', ')))
		end
	end
	tooltip:Show()
end

local function OnItem(tooltip)
	local _, link = tooltip:GetItem()
	if link ~= nil then
		local id = getItemID(link)
		AddTooltip(tooltip, id)
	end
end

-- All this stuff needs to be in an init script.

local function HookTip(tooltip)
	tooltip:HookScript('OnTooltipSetItem', OnItem)
end

HookTip(GameTooltip)
HookTip(ItemRefTooltip)