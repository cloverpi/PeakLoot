local addonName, addon = ...

-- Create saved global vars
_G.PeakLootDB = _G.PeakLoot or {}

-- Create local vars
local DB -- assigned during ADDON_LOADED
local Main = addon
-- local GUI = addon.GUI
local bisGUI = addon.bisGUI

-- Register for events
local PeakLootEvent = CreateFrame("FRAME")
PeakLootEvent:RegisterEvent("ADDON_LOADED")
PeakLootEvent:RegisterEvent("LOOT_READY")

--will be moved into global db later
local bossNames = {
  -- Black Temple
  -- ["18468"] = 'Banana Man', --!
  ["22887"] = "High Warlord Naj'entus",
  ["22898"] = "Supremus",
  ["22841"] = "Shade of Akama",
  ["22871"] = "Teron Gorefiend",
  ["22948"] = "Gurtogg Bloodboil",
  
  ["23420"] = "Reliquary of Souls",
  ["23419"] = "Reliquary of Souls",
  ["23418"] = "Reliquary of Souls",
  ["22856"] = "Reliquary of Souls", --maybe this?

  ["22947"] = "Mother Shahraz",

  ["22949"] = "Illidari Council",
  ["22950"] = "Illidari Council",
  ["22951"] = "Illidari Council",
  ["22952"] = "Illidari Council",
  ["23426"] = "Illidari Council", --multi-npc encounters are dumb

  ["22917"] = "Illidan Stormrage",

  -- Hyjal
  ["17767"] = "Rage Winterchill",
  ["17808"] = "Anetheron",
  ["17888"] = "Kaz'rogal",
  ["17842"] = "Azgalor",
  ["17968"] = "Archimonde",

  -- SSC
  ["21216"] = "Hydross",
  ["21217"] = "Lurker",
  ["21215"] = "Leotheras",
  ["21214"] = "Karathress",
  ["21213"] = "Morogrim Tidewalker",
  ["21212"] = "Lady Vashj",

  -- TK
  ["19516"] = "Void Reaver",
  ["19514"] = "Al'ar",
  ["18805"] = "Solarian",
  ["19622"] = "Kael'thas Sunstrider",

  -- T4
  ["18831"] = "High King Maulgar",
  ["19044"] = "Gruul",

  ["17257"] = "Magtheridon",
}
local bossAward = {}
-- local autoAward = false
-- local dkpAmount = "10"

function Main:newItemList()
  return {
    {slot = "Head",  --1
    slotIndex = 1,
    item = nil},

    {slot = "Neck", --2
    slotIndex = 2,
    item = nil},

    {slot = "Shoulders", --3
    slotIndex = 3,
    item = nil},
 
    {slot = "Back", --4
    slotIndex = 15,
    item = nil},

    {slot = "Chest", --5
    slotIndex = 5,
    item = nil},

    {slot = "Wrist", --6
    slotIndex = 9,
    item = nil},

    {slot = "Hands", --7
    slotIndex = 10,
    item = nil},

    {slot = "Waist", --8
    slotIndex = 6,
    item = nil},

    {slot = "Legs", --9
    slotIndex = 7,
    item = nil},

    {slot = "Feet", --10
    slotIndex = 8,
    item = nil},

    {slot = "Ring1", --11
    slotIndex = 11,
    item = nil},

    {slot = "Ring2", --12
    slotIndex = 12,
    item = nil},
    
    {slot = "Trinket1", --13
    slotIndex = 13,
    item = nil},

    {slot = "Trinket2", --14
    slotIndex = 14,
    item = nil},

    {slot = "Main Hand", --15
    slotIndex = 16,
    item = nil},

    {slot = "Off Hand",  --16
    slotIndex = 17,
    item = nil},

    {slot = "Ranged",  --17
    slotIndex = 18,
    item = nil}
  }
end

local function tableFindLower(t, str)
  local set = {}
  for i=1,#t do
    set[strlower(t[i])] = i
  end
  return set[strlower(str)] ~= nil and set[strlower(str)] or 0
end

local function addItemToBis(itemList, itemID, itemEquipLoc)
  local itemLocations = {
    ['INVTYPE_HEAD'] = 1,
    ['INVTYPE_NECK'] = 2,
    ['INVTYPE_SHOULDER'] = 3,
    ['INVTYPE_BODY'] = 5,
    ['INVTYPE_CHEST'] = 5,
    ['INVTYPE_WAIST'] = 8,
    ['INVTYPE_LEGS'] = 9,
    ['INVTYPE_FEET'] = 10,
    ['INVTYPE_WRIST'] = 6,
    ['INVTYPE_HAND'] = 7,
    ['INVTYPE_FINGER'] = function() 
                            if (itemList[12].item == nil) then
                              itemList[12].item = itemID
                            else
                              itemList[11].item = itemID
                            end
                        end,
    ['INVTYPE_TRINKET'] = function() 
                            if (itemList[13].item == nil) then
                              itemList[13].item = itemID
                            else
                              itemList[14].item = itemID
                            end
                        end,
    ['INVTYPE_WEAPON'] = function() 
                            if (itemList[16].item == nil) then
                              itemList[16].item = itemID
                            else
                              itemList[15].item = itemID
                            end
                        end,
    ['INVTYPE_SHIELD'] = function() 
                            if (itemList[16].item == nil) then
                              itemList[16].item = itemID
                            else
                              itemList[15].item = itemList[16].item
                              itemList[16].item = itemID
                            end
                        end,
    ['INVTYPE_RANGED'] = 17, 
    ['INVTYPE_CLOAK'] = 4,
    ['INVTYPE_2HWEAPON'] = 15,
    ['INVTYPE_ROBE'] = 5,
    ['INVTYPE_WEAPONMAINHAND'] = 15,
    ['INVTYPE_WEAPONOFFHAND'] = function() 
                                  if (itemList[16].item == nil) then
                                    itemList[16].item = itemID
                                  else
                                    itemList[15].item = itemList[16].item
                                    itemList[16].item = itemID
                                  end
                              end,
    ['INVTYPE_HOLDABLE'] = function() 
                                if (itemList[16].item == nil) then
                                  itemList[16].item = itemID
                                else
                                  itemList[15].item = itemList[16].item
                                  itemList[16].item = itemID
                                end
                            end,
    ['INVTYPE_THROWN'] = 17,
    ['INVTYPE_RANGEDRIGHT'] = 17,
    ['INVTYPE_RELIC'] = 17,
  }

  if (itemEquipLoc ~= nil and itemLocations[itemEquipLoc] ~= nil) then
    local case = itemLocations[itemEquipLoc]
    if (type(case) == 'function' ) then
      case()
    else
      itemList[case].item = itemID
    end
  else
    print('Error adding item: ' .. itemID) 
  end
end

local function removeBisListFromItems(itemID, name)
  local bisItems = ( DB['BisItems'][itemID] ~= nil and DB['BisItems'][itemID] or {} )
  local bisIndex = tableFindLower(bisItems, name)
  if ( #bisItems > 1 ) then
    table.remove(bisItems, bisIndex)
    DB['BisItems'][itemID] = bisItems
  else
    DB['BisItems'][itemID] = nil
  end
end

local function addBisListToItems(itemID, name)
  local bisItems = ( DB['BisItems'][itemID] ~= nil and DB['BisItems'][itemID] or {} )
  if (tableFindLower(bisItems, name) == 0) then
    table.insert(bisItems, name)
    table.sort(bisItems)
    DB['BisItems'][itemID] = bisItems
  end
end

local function removeBisList(name)
  if ( DB['BisLists'][name] ~= nil ) then
    for i=1,#DB['BisLists'][name] do
      removeBisListFromItems(tostring(DB['BisLists'][name][i].item), name)
    end
    DB['BisLists'][name] = nil
    print(name .. ' has been deleted from your bis lists.')
  else
    print('Error deleting bis list, ' .. name .. ' does not exist.')
  end
end


local function addBis(name, items)
  local itemList = Main:newItemList()
  for i=1, #items do
    local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,
            itemEquipLoc, itemTexture, sellPrice, classID, subclassID, bindType, expacID, setID, isCraftingReagent = GetItemInfo(items[i])
    if (itemName == nil) then
      local itemEventTmp = CreateFrame("FRAME")
      itemEventTmp:RegisterEvent("GET_ITEM_INFO_RECEIVED")
      itemEventTmp.itemID = tonumber(items[i])
    
      itemEventTmp:SetScript("OnEvent", function(self, event, itemID, success)
          if (success and itemID == itemEventTmp.itemID) then
            local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,
              itemEquipLoc, itemTexture, sellPrice, classID, subclassID, bindType, expacID, setID, isCraftingReagent = GetItemInfo(itemID)
            addItemToBis(itemList, tonumber(itemID), itemEquipLoc)
            DB['BisLists'][name]=itemList
            addBisListToItems(tostring(itemID), name)
            bisGUI:Update()
          end
        end
      )
    else
      addItemToBis(itemList, tonumber(items[i]), itemEquipLoc)
      DB['BisLists'][name]=itemList
      addBisListToItems(tostring(items[i]), name)
      bisGUI:Update()
    end
  end
end

local function addAlias(itemID, items)
  DB['BisAlias'][tostring(itemID)]=items
end

local function getUnitId(guid)
  if guid == nil then return nil end
  local unitType,_,_,instanceId,zoneUId,Id,spawnId = strsplit("-", guid)

  return Id 
end

-- Main event handler function
local function eventHandler(self, event, arg1, arg2, ...)
  if ((event == "ADDON_LOADED") and (arg1 == addonName)) then
    Main:Init()
    bisGUI:Init()
  elseif (event == "LOOT_READY" and DB.Main.autoAward) then
    local source = GetLootSourceInfo(1)
    local id = getUnitId(source)
    if id ~= nil then
      print(id)
      local bossName = bossNames[id]
      if (bossName ~= nil and bossAward[bossName] == nil) then
        local d = _G["CommDKPCommDKP.ConfigTabMenuTab2"]["content"]; 
        d.reasonDropDown:SetValue("blah");
        d.reasonDropDown:SetValue("Other");
        d.otherReason:SetText("Boss Kill: " .. bossName); 
        d.addDKP:SetText(DB.Main.dkpAmount);
        d.adjustButton:Click();
        
        bossAward[bossName] = true
      end
    end
  end
end

-- Register event handler
PeakLootEvent:SetScript("OnEvent", eventHandler)

-- Slash commands
SLASH_PEAKLOOT1 = "/peak"
-- SLASH_OTBLoot2 = "/dkp"
SlashCmdList["PEAKLOOT"] = function(msg)
  local printHelp = function()
    print('/peak ' .. msg)
    print('Unknown command.')
    Main:PrintUsage()
  end
  local args = {strsplit(" ", msg, 2)}
  local cmd = args[1]:lower()

  if (cmd == 'bis') then
    local bisArgs = {strsplit(" ", args[2] ~= nil and args[2] or "", 3)}
    if (bisArgs[1]:lower() == 'add') then
      if (bisArgs[2] ~= nil and bisArgs[3] ~= nil) then
        print(bisArgs[2])
        addBis(bisArgs[2], {strsplit(" ,", bisArgs[3])})
      else
        printHelp()
      end
    elseif (bisArgs[1]:lower() == 'delete') then
      if (bisArgs[2] ~= nil) then
        removeBisList(bisArgs[2])
        bisGUI:Update()
      else
        printHelp()
      end
    elseif (bisArgs[1]:lower() == 'alias') then
      if (bisArgs[2] ~= nil and bisArgs[3] ~= nil) then
        print(bisArgs[2])
        addAlias(bisArgs[2], {strsplit(" ,", bisArgs[3])})
      else
        printHelp()
      end
    else
        bisGUI:Show()
    end
  elseif (cmd == 'autodkp') then
    DB.Main.autoAward = not DB.Main.autoAward
    print('Auto-awarding DKP: ' .. tostring(DB.Main.autoAward) )
  elseif (cmd == 'dkpamount') then
    local dkpArgs = {strsplit(" ", args[2] ~= nil and args[2] or "", 3)}
    DB.Main.dkpAmount = dkpArgs[1]
    if (DB.Main.dkpAmount == nil or DB.Main.dkpAmount == "") then 
      DB.Main.dkpAmount = "10"
    elseif (tonumber(DB.Main.dkpAmount) == nil) then
      DB.Main.dkpAmount = "10"
    end
    print('Awarding <' .. DB.Main.dkpAmount .. '> per kill.')
  else
      printHelp()
  end
end

-- Init functions

-- function Main:Init()
--   Main:CopyDBDefaults(_G[addonName .. "DB"] or {}, _G[addonName .. "DBDefaults"])
--   DB = _G[addonName .. "DB"]
--   -- DB = _G.BoostWaitlistDB.Main
--   -- Main:FixWaitlistRefs()
--   bisGUI:Init()
--   -- Main:SetInitState()
--   -- Main:PurgeAccountBlances()
-- end



-- function Main:CopyDBDefaults(db, def)
--   for k,v in pairs(def) do
--     if(db[k] == nil) then
--       db[k] = def[k]
--     elseif (type(v) == "table") then
--       Main:CopyDBDefaults(db[k], v)
--     end
--   end
-- end

function Main:PrintUsage()
  print("Printing supported input commands (starting with /otb)")
  print("  autodkp  -- Toggles auto-award DKP from MH/BT")
  print("  dkpamount [amount]  -- amount of DKP to award.")
  print("  bis -- Open the BIS list GUI.  [VIEW ONLY]")
  print("  bis add [name] [comma,seperated,list,of,itemIDs] -- create a bis list.")
  print("  bis delete [name] -- delete a bis list.")
  print("  bis alias [fromItemID] [comma,seperated,list,of,itemIDs]  -- make tier tokens show as bis.")
end