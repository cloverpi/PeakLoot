local addonName, addon = ...

-- Create local vars
local DB -- assigned during ADDON_LOADED
local Main = addon
local GUI = {}
local UIBuilder = addon.UIBuilder
-- local TEST = false

addon.bisGUI = GUI


local CustomSort = function(self, rowA, rowB, sortBy)
  local a = self:GetRow(rowA);
	local b = self:GetRow(rowB);
	local column = self.columns[sortBy];
	local idx = column.index;

	local direction = column.sort or 'asc';
  if (idx == 'time') then
    direction = 'dsc'
  end

	if direction:lower() == 'asc' then
    return a[idx] > b[idx];
	else
    return a[idx] < b[idx];
	end
end

local specs = {}

local itemListCols = {
  {
    name = 'Slot',
    width = 100,
    align = 'LEFT',
    format = 'string',
    index = 'slot',
    sortable = false,
    defaultSort = 'dsc',
    color = {r=1,g=1,b=1,a=1},
  },
  {
    name = 'Name',
    width = 300,
    align = 'LEFT',
    format = 'custom',
    index = 'item',
    sortable = false,
    defaultSort = 'dsc',
    color = function (_, _, rowData)
                local r, g, b = GetItemQualityColor(rowData.rarity or 1)
                return {r=r,g=g,b=b,a=1}
            end,
    renderer = function(cellFrame, value, rowData, columnData)
      if (cellFrame.itemLink == nil) then
        cellFrame.itemLink = cellFrame:CreateFontString(nil, "OVERLAY", "GameTooltipText")
        cellFrame.itemLink:SetPoint('LEFT', cellFrame, 'LEFT', 0, 0)
      end

      if (value ~= nil and value > 0) then
        local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,
        itemEquipLoc, itemTexture, sellPrice, classID, subclassID, bindType, expacID, setID, isCraftingReagent = GetItemInfo(value)

        cellFrame:RegisterEvent("GET_ITEM_INFO_RECEIVED")
        cellFrame.itemID = value
      
        cellFrame:SetScript("OnEvent", function(self, event, itemID, success)
            if (success and itemID == cellFrame.itemID) then
              local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,
                itemEquipLoc, itemTexture, sellPrice, classID, subclassID, bindType, expacID, setID, isCraftingReagent = GetItemInfo(itemID)

              cellFrame.itemLink:SetText(itemLink)
            end
          end
        )

        cellFrame.itemLink:SetText(itemLink)
      else
        cellFrame.itemLink:SetText("")
      end
    end,
    events = {
      onEnter = function(table, cellFrame, rowFrame, rowData, columnData, rowIndex)
        local item = rowData[columnData.index]
        if (item ~= nil and item > 0) then
          local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,
            itemEquipLoc, itemTexture, sellPrice, classID, subclassID, bindType, expacID, setID, isCraftingReagent = GetItemInfo(item)
          
          GameTooltip:SetOwner(cellFrame, "ANCHOR_NONE")
          GameTooltip:SetPoint("TOPLEFT", cellFrame, "TOPRIGHT")
          GameTooltip:SetHyperlink(itemLink) 
          GameTooltip:Show() 
        end
      end,
      onLeave = function(table, cellFrame, rowFrame, rowData, columnData, rowIndex)
        GameTooltip:Hide()
      end,
    }
  }
}

local regenerateSpecs = function()
  specs = {}

  local function sortedKeys(t)
    local keys = {}
    for k in pairs(t) do
      table.insert(keys, k)
    end
    table.sort(keys, function(a, b)
      return tostring(a) < tostring(b)
    end)
    return keys
  end

  for _, specName in ipairs(sortedKeys(DB.BisLists)) do
    table.insert(specs, { text = specName, value = specName })
  end
end


-- Init functions
function GUI:Init()
  print(addonName .. "DB Gui")
  DB = _G[addonName .. "DB"]
  
  regenerateSpecs()
  GUI.created = false
  GUI:Create()
end


-- Main GUI creation

function GUI:Create()
  local frame = UIBuilder:Window(UIParent, 452, 540, "BIS Lists")
  frame:SetToplevel(true)
  frame:SetPoint(DB.GUI.points[1], DB.GUI.points[2], DB.GUI.points[3], DB.GUI.points[4], DB.GUI.points[5])
  frame:SetMovable(true)
  frame:EnableMouse(true)
  frame:SetClampedToScreen(true)
  frame:RegisterForDrag("LeftButton")
  frame:SetScript("OnMouseDown", frame.StartMoving)
  frame:SetScript("OnMouseUp", function(self)
    self:StopMovingOrSizing()
    local a,b,c,d,e = self:GetPoint()
    DB.GUI.points = {a, nil, c, d, e}
  end)

  frame.closeButton = UIBuilder:CloseButton(frame)

  frame.itemTable = UIBuilder:Table(frame, itemListCols, 17, 10, -113)

  frame.specDropdown = UIBuilder:Dropdown(frame, 100, 25, specs, nil, 
    function(_, v)
      GUI:Update(true)
    end)
  frame.specDropdown:SetPoint("BOTTOMLEFT", frame.itemTable, "TOPLEFT", 0, 30) 

  frame:Hide()

  --hide on Escape, without exposing the entire frame.
  _G[addonName .. "MainFrame"] = 
    {
      Hide = function() frame:Hide() end,
      IsShown = function() return frame:IsShown() end
    }
  tinsert(UISpecialFrames, addonName .. "MainFrame")

  GUI.mainFrame = frame
  GUI:Update()
end

function GUI:Show()
  GUI:Update(true)
  GUI.mainFrame:Show()
end

function GUI:ShowToggle()
  if (GUI.mainFrame ~= nil) then
    if (GUI.mainFrame:IsShown()) then
      GUI.mainFrame:Hide()
    else
      GUI:Show()
    end
  else
    GUI:Create()
    GUI:Show()
  end
end
    

function GUI:Update(fullUpdate)
  local frame = GUI.mainFrame

  local currentSpec = frame.specDropdown.value
  regenerateSpecs()
  frame.specDropdown:SetOptions(specs)

  if (currentSpec ~= nil) then
    local data = (DB.BisLists[currentSpec] ~= nil ) and DB.BisLists[currentSpec] or {}
    frame.itemTable:SetData(data)
    frame.itemTable:Refresh()
  end

end