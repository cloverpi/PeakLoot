local addonName, addon = ...
local Main = addon

_G.PeakLootDBDefaults = {
  Main = {
    version = '0.0.1',
	autoAward = false,
	dkpAmount = "10",
  },
  GUI = {
    points = {"CENTER"},
    minimap = {
      hide = false,
    },
  },
	["BisAlias"] = {
		["31103"] = {
			"30979", -- [1]
			"30980", -- [2]
			"31006", -- [3]
			"31022", -- [4]
			"31023", -- [5]
			"31024", -- [6]
		},
		["31095"] = {
			"30972", -- [1]
			"30974", -- [2]
			"31003", -- [3]
			"31012", -- [4]
			"31014", -- [5]
			"31015", -- [6]
		},
		["32405"] = {
			"30007", -- [1]
			"30015", -- [2]
			"30017", -- [3]
			"30018", -- [4]
		},
		["31100"] = {
			"30977", -- [1]
			"30978", -- [2]
			"31005", -- [3]
			"31019", -- [4]
			"31020", -- [5]
			"31021", -- [6]
		},
		["31091"] = {
			"30975", -- [1]
			"30976", -- [2]
			"31004", -- [3]
			"31016", -- [4]
			"31017", -- [5]
			"31018", -- [6]
		},
		["31096"] = {
			"31027", -- [1]
			"31037", -- [2]
			"31039", -- [3]
			"31040", -- [4]
			"31056", -- [5]
		},
		["31099"] = {
			"31029", -- [1]
			"31044", -- [2]
			"31045", -- [3]
			"31046", -- [4]
			"31058", -- [5]
		},
		["31097"] = {
			"30987", -- [1]
			"30988", -- [2]
			"30989", -- [3]
			"31051", -- [4]
			"31063", -- [5]
			"31064", -- [6]
		},
		["31094"] = {
			"30969", -- [1]
			"30970", -- [2]
			"31001", -- [3]
			"31007", -- [4]
			"31008", -- [5]
			"31011", -- [6]
		},
		["31102"] = {
			"31030", -- [1]
			"31047", -- [2]
			"31048", -- [3]
			"31049", -- [4]
			"31059", -- [5]
		},
		["31089"] = {
			"30990", -- [1]
			"30991", -- [2]
			"30992", -- [3]
			"31052", -- [4]
			"31065", -- [5]
			"31066", -- [6]
		},
		["31090"] = {
			"31028", -- [1]
			"31041", -- [2]
			"31042", -- [3]
			"31043", -- [4]
			"31057", -- [5]
		},
		["31093"] = {
			"31026", -- [1]
			"31032", -- [2]
			"31034", -- [3]
			"31035", -- [4]
			"31055", -- [5]
		},
		["31101"] = {
			"30996", -- [1]
			"30997", -- [2]
			"30998", -- [3]
			"31054", -- [4]
			"31069", -- [5]
			"31070", -- [6]
		},
		["31098"] = {
			"30993", -- [1]
			"30994", -- [2]
			"30995", -- [3]
			"31053", -- [4]
			"31067", -- [5]
			"31068", -- [6]
		},
		["31092"] = {
			"30982", -- [1]
			"30983", -- [2]
			"30985", -- [3]
			"31050", -- [4]
			"31060", -- [5]
			"31061", -- [6]
		},
	},
	["BisLists"] = {
		["ShamResto"] = {
			{
				["slotIndex"] = 1,
				["item"] = 31012,
				["slot"] = "Head",
			}, -- [1]
			{
				["slotIndex"] = 2,
				["item"] = 32370,
				["slot"] = "Neck",
			}, -- [2]
			{
				["slotIndex"] = 3,
				["item"] = 31022,
				["slot"] = "Shoulders",
			}, -- [3]
			{
				["slotIndex"] = 15,
				["item"] = 32524,
				["slot"] = "Back",
			}, -- [4]
			{
				["slotIndex"] = 5,
				["item"] = 31016,
				["slot"] = "Chest",
			}, -- [5]
			{
				["slotIndex"] = 9,
				["item"] = 32577,
				["slot"] = "Wrist",
			}, -- [6]
			{
				["slotIndex"] = 10,
				["item"] = 32328,
				["slot"] = "Hands",
			}, -- [7]
			{
				["slotIndex"] = 6,
				["item"] = 32258,
				["slot"] = "Waist",
			}, -- [8]
			{
				["slotIndex"] = 7,
				["item"] = 31019,
				["slot"] = "Legs",
			}, -- [9]
			{
				["slotIndex"] = 8,
				["item"] = 32609,
				["slot"] = "Feet",
			}, -- [10]
			{
				["slotIndex"] = 11,
				["item"] = 32528,
				["slot"] = "Ring1",
			}, -- [11]
			{
				["slotIndex"] = 12,
				["item"] = 32528,
				["slot"] = "Ring2",
			}, -- [12]
			{
				["slotIndex"] = 13,
				["item"] = 32496,
				["slot"] = "Trinket1",
			}, -- [13]
			{
				["slotIndex"] = 14,
				["item"] = 29376,
				["slot"] = "Trinket2",
			}, -- [14]
			{
				["slotIndex"] = 16,
				["item"] = 32500,
				["slot"] = "Main Hand",
			}, -- [15]
			{
				["slotIndex"] = 17,
				["item"] = 30882,
				["slot"] = "Off Hand",
			}, -- [16]
			{
				["slotIndex"] = 18,
				["item"] = 28523,
				["slot"] = "Ranged",
			}, -- [17]
		},
		["Rogue"] = {
			{
				["slotIndex"] = 1,
				["item"] = 32235,
				["slot"] = "Head",
			}, -- [1]
			{
				["slotIndex"] = 2,
				["item"] = 32260,
				["slot"] = "Neck",
			}, -- [2]
			{
				["slotIndex"] = 3,
				["item"] = 31030,
				["slot"] = "Shoulders",
			}, -- [3]
			{
				["slotIndex"] = 15,
				["item"] = 32323,
				["slot"] = "Back",
			}, -- [4]
			{
				["slotIndex"] = 5,
				["item"] = 31028,
				["slot"] = "Chest",
			}, -- [5]
			{
				["slotIndex"] = 9,
				["item"] = 32580,
				["slot"] = "Wrist",
			}, -- [6]
			{
				["slotIndex"] = 10,
				["item"] = 31026,
				["slot"] = "Hands",
			}, -- [7]
			{
				["slotIndex"] = 6,
				["item"] = 30106,
				["slot"] = "Waist",
			}, -- [8]
			{
				["slotIndex"] = 7,
				["item"] = 31029,
				["slot"] = "Legs",
			}, -- [9]
			{
				["slotIndex"] = 8,
				["item"] = 32366,
				["slot"] = "Feet",
			}, -- [10]
			{
				["slotIndex"] = 11,
				["item"] = 29301,
				["slot"] = "Ring1",
			}, -- [11]
			{
				["slotIndex"] = 12,
				["item"] = 32497,
				["slot"] = "Ring2",
			}, -- [12]
			{
				["slotIndex"] = 13,
				["item"] = 28830,
				["slot"] = "Trinket1",
			}, -- [13]
			{
				["slotIndex"] = 14,
				["item"] = 30450,
				["slot"] = "Trinket2",
			}, -- [14]
			{
				["slotIndex"] = 16,
				["item"] = 32837,
				["slot"] = "Main Hand",
			}, -- [15]
			{
				["slotIndex"] = 17,
				["item"] = 32838,
				["slot"] = "Off Hand",
			}, -- [16]
			{
				["slotIndex"] = 18,
				["item"] = 29949,
				["slot"] = "Ranged",
			}, -- [17]
		},
		["HuntSurv"] = {
			{
				["slotIndex"] = 1,
				["item"] = 31003,
				["slot"] = "Head",
			}, -- [1]
			{
				["slotIndex"] = 2,
				["item"] = 30017,
				["slot"] = "Neck",
			}, -- [2]
			{
				["slotIndex"] = 3,
				["item"] = 31006,
				["slot"] = "Shoulders",
			}, -- [3]
			{
				["slotIndex"] = 15,
				["item"] = 29994,
				["slot"] = "Back",
			}, -- [4]
			{
				["slotIndex"] = 5,
				["item"] = 31004,
				["slot"] = "Chest",
			}, -- [5]
			{
				["slotIndex"] = 9,
				["item"] = 32324,
				["slot"] = "Wrist",
			}, -- [6]
			{
				["slotIndex"] = 10,
				["item"] = 31001,
				["slot"] = "Hands",
			}, -- [7]
			{
				["slotIndex"] = 6,
				["item"] = 30879,
				["slot"] = "Waist",
			}, -- [8]
			{
				["slotIndex"] = 7,
				["item"] = 30900,
				["slot"] = "Legs",
			}, -- [9]
			{
				["slotIndex"] = 8,
				["item"] = 32366,
				["slot"] = "Feet",
			}, -- [10]
			{
				["slotIndex"] = 11,
				["item"] = 28791,
				["slot"] = "Ring1",
			}, -- [11]
			{
				["slotIndex"] = 12,
				["item"] = 29997,
				["slot"] = "Ring2",
			}, -- [12]
			{
				["slotIndex"] = 13,
				["item"] = 32505,
				["slot"] = "Trinket1",
			}, -- [13]
			{
				["slotIndex"] = 14,
				["item"] = 28830,
				["slot"] = "Trinket2",
			}, -- [14]
			{
				["slotIndex"] = 16,
				["item"] = 30881,
				["slot"] = "Main Hand",
			}, -- [15]
			{
				["slotIndex"] = 17,
				["item"] = 30881,
				["slot"] = "Off Hand",
			}, -- [16]
			{
				["slotIndex"] = 18,
				["item"] = 30906,
				["slot"] = "Ranged",
			}, -- [17]
		},
		["Lock"] = {
			{
				["slotIndex"] = 1,
				["item"] = 31051,
				["slot"] = "Head",
			}, -- [1]
			{
				["slotIndex"] = 2,
				["item"] = 32349,
				["slot"] = "Neck",
			}, -- [2]
			{
				["slotIndex"] = 3,
				["item"] = 31054,
				["slot"] = "Shoulders",
			}, -- [3]
			{
				["slotIndex"] = 15,
				["item"] = 32524,
				["slot"] = "Back",
			}, -- [4]
			{
				["slotIndex"] = 5,
				["item"] = 30107,
				["slot"] = "Chest",
			}, -- [5]
			{
				["slotIndex"] = 9,
				["item"] = 32586,
				["slot"] = "Wrist",
			}, -- [6]
			{
				["slotIndex"] = 10,
				["item"] = 31050,
				["slot"] = "Hands",
			}, -- [7]
			{
				["slotIndex"] = 6,
				["item"] = 30888,
				["slot"] = "Waist",
			}, -- [8]
			{
				["slotIndex"] = 7,
				["item"] = 31053,
				["slot"] = "Legs",
			}, -- [9]
			{
				["slotIndex"] = 8,
				["item"] = 32239,
				["slot"] = "Feet",
			}, -- [10]
			{
				["slotIndex"] = 11,
				["item"] = 32527,
				["slot"] = "Ring1",
			}, -- [11]
			{
				["slotIndex"] = 12,
				["item"] = 32527,
				["slot"] = "Ring2",
			}, -- [12]
			{
				["slotIndex"] = 13,
				["item"] = 27683,
				["slot"] = "Trinket1",
			}, -- [13]
			{
				["slotIndex"] = 14,
				["item"] = 32483,
				["slot"] = "Trinket2",
			}, -- [14]
			{
				["slotIndex"] = 16,
				["item"] = 32374,
				["slot"] = "Main Hand",
			}, -- [15]
			{
				["slotIndex"] = 17,
				["slot"] = "Off Hand",
			}, -- [16]
			{
				["slotIndex"] = 18,
				["item"] = 29982,
				["slot"] = "Ranged",
			}, -- [17]
		},
		["Boomkin"] = {
			{
				["slotIndex"] = 1,
				["item"] = 31040,
				["slot"] = "Head",
			}, -- [1]
			{
				["slotIndex"] = 2,
				["item"] = 30015,
				["slot"] = "Neck",
			}, -- [2]
			{
				["slotIndex"] = 3,
				["item"] = 31049,
				["slot"] = "Shoulders",
			}, -- [3]
			{
				["slotIndex"] = 15,
				["item"] = 32524,
				["slot"] = "Back",
			}, -- [4]
			{
				["slotIndex"] = 5,
				["item"] = 31043,
				["slot"] = "Chest",
			}, -- [5]
			{
				["slotIndex"] = 9,
				["item"] = 32586,
				["slot"] = "Wrist",
			}, -- [6]
			{
				["slotIndex"] = 10,
				["item"] = 31035,
				["slot"] = "Hands",
			}, -- [7]
			{
				["slotIndex"] = 6,
				["item"] = 30888,
				["slot"] = "Waist",
			}, -- [8]
			{
				["slotIndex"] = 7,
				["item"] = 30916,
				["slot"] = "Legs",
			}, -- [9]
			{
				["slotIndex"] = 8,
				["item"] = 32239,
				["slot"] = "Feet",
			}, -- [10]
			{
				["slotIndex"] = 11,
				["item"] = 32527,
				["slot"] = "Ring1",
			}, -- [11]
			{
				["slotIndex"] = 12,
				["item"] = 32527,
				["slot"] = "Ring2",
			}, -- [12]
			{
				["slotIndex"] = 13,
				["item"] = 32483,
				["slot"] = "Trinket1",
			}, -- [13]
			{
				["slotIndex"] = 14,
				["item"] = 32486,
				["slot"] = "Trinket2",
			}, -- [14]
			{
				["slotIndex"] = 16,
				["item"] = 32374,
				["slot"] = "Main Hand",
			}, -- [15]
			{
				["slotIndex"] = 17,
				["slot"] = "Off Hand",
			}, -- [16]
			{
				["slotIndex"] = 18,
				["item"] = 32387,
				["slot"] = "Ranged",
			}, -- [17]
		},
		["PalRet"] = {
			{
				["slotIndex"] = 1,
				["item"] = 32235,
				["slot"] = "Head",
			}, -- [1]
			{
				["slotIndex"] = 2,
				["item"] = 30022,
				["slot"] = "Neck",
			}, -- [2]
			{
				["slotIndex"] = 3,
				["item"] = 30055,
				["slot"] = "Shoulders",
			}, -- [3]
			{
				["slotIndex"] = 15,
				["item"] = 33122,
				["slot"] = "Back",
			}, -- [4]
			{
				["slotIndex"] = 5,
				["item"] = 30905,
				["slot"] = "Chest",
			}, -- [5]
			{
				["slotIndex"] = 9,
				["item"] = 32574,
				["slot"] = "Wrist",
			}, -- [6]
			{
				["slotIndex"] = 10,
				["item"] = 29947,
				["slot"] = "Hands",
			}, -- [7]
			{
				["slotIndex"] = 6,
				["item"] = 30106,
				["slot"] = "Waist",
			}, -- [8]
			{
				["slotIndex"] = 7,
				["item"] = 30900,
				["slot"] = "Legs",
			}, -- [9]
			{
				["slotIndex"] = 8,
				["item"] = 32366,
				["slot"] = "Feet",
			}, -- [10]
			{
				["slotIndex"] = 11,
				["item"] = 32526,
				["slot"] = "Ring1",
			}, -- [11]
			{
				["slotIndex"] = 12,
				["item"] = 30834,
				["slot"] = "Ring2",
			}, -- [12]
			{
				["slotIndex"] = 13,
				["item"] = 28830,
				["slot"] = "Trinket1",
			}, -- [13]
			{
				["slotIndex"] = 14,
				["item"] = 29383,
				["slot"] = "Trinket2",
			}, -- [14]
			{
				["slotIndex"] = 16,
				["item"] = 32332,
				["slot"] = "Main Hand",
			}, -- [15]
			{
				["slotIndex"] = 17,
				["slot"] = "Off Hand",
			}, -- [16]
			{
				["slotIndex"] = 18,
				["item"] = 27484,
				["slot"] = "Ranged",
			}, -- [17]
		},
		["ShamEle"] = {
			{
				["slotIndex"] = 1,
				["item"] = 31014,
				["slot"] = "Head",
			}, -- [1]
			{
				["slotIndex"] = 2,
				["item"] = 30015,
				["slot"] = "Neck",
			}, -- [2]
			{
				["slotIndex"] = 3,
				["item"] = 31023,
				["slot"] = "Shoulders",
			}, -- [3]
			{
				["slotIndex"] = 15,
				["item"] = 32331,
				["slot"] = "Back",
			}, -- [4]
			{
				["slotIndex"] = 5,
				["item"] = 31017,
				["slot"] = "Chest",
			}, -- [5]
			{
				["slotIndex"] = 9,
				["item"] = 32586,
				["slot"] = "Wrist",
			}, -- [6]
			{
				["slotIndex"] = 10,
				["item"] = 31008,
				["slot"] = "Hands",
			}, -- [7]
			{
				["slotIndex"] = 6,
				["item"] = 32276,
				["slot"] = "Waist",
			}, -- [8]
			{
				["slotIndex"] = 7,
				["item"] = 30916,
				["slot"] = "Legs",
			}, -- [9]
			{
				["slotIndex"] = 8,
				["item"] = 32239,
				["slot"] = "Feet",
			}, -- [10]
			{
				["slotIndex"] = 11,
				["item"] = 32527,
				["slot"] = "Ring1",
			}, -- [11]
			{
				["slotIndex"] = 12,
				["item"] = 32527,
				["slot"] = "Ring2",
			}, -- [12]
			{
				["slotIndex"] = 13,
				["item"] = 30626,
				["slot"] = "Trinket1",
			}, -- [13]
			{
				["slotIndex"] = 14,
				["item"] = 28785,
				["slot"] = "Trinket2",
			}, -- [14]
			{
				["slotIndex"] = 16,
				["item"] = 32374,
				["slot"] = "Main Hand",
			}, -- [15]
			{
				["slotIndex"] = 17,
				["slot"] = "Off Hand",
			}, -- [16]
			{
				["slotIndex"] = 18,
				["item"] = 32330,
				["slot"] = "Ranged",
			}, -- [17]
		},
		["PalProt"] = {
			{
				["slotIndex"] = 1,
				["item"] = 32521,
				["slot"] = "Head",
			}, -- [1]
			{
				["slotIndex"] = 2,
				["item"] = 33921,
				["slot"] = "Neck",
			}, -- [2]
			{
				["slotIndex"] = 3,
				["item"] = 30998,
				["slot"] = "Shoulders",
			}, -- [3]
			{
				["slotIndex"] = 15,
				["item"] = 29992,
				["slot"] = "Back",
			}, -- [4]
			{
				["slotIndex"] = 5,
				["item"] = 30991,
				["slot"] = "Chest",
			}, -- [5]
			{
				["slotIndex"] = 9,
				["item"] = 32279,
				["slot"] = "Wrist",
			}, -- [6]
			{
				["slotIndex"] = 10,
				["item"] = 30985,
				["slot"] = "Hands",
			}, -- [7]
			{
				["slotIndex"] = 6,
				["item"] = 32342,
				["slot"] = "Waist",
			}, -- [8]
			{
				["slotIndex"] = 7,
				["item"] = 30995,
				["slot"] = "Legs",
			}, -- [9]
			{
				["slotIndex"] = 8,
				["item"] = 32245,
				["slot"] = "Feet",
			}, -- [10]
			{
				["slotIndex"] = 11,
				["item"] = 33054,
				["slot"] = "Ring1",
			}, -- [11]
			{
				["slotIndex"] = 12,
				["item"] = 29305,
				["slot"] = "Ring2",
			}, -- [12]
			{
				["slotIndex"] = 13,
				["item"] = 31858,
				["slot"] = "Trinket1",
			}, -- [13]
			{
				["slotIndex"] = 14,
				["item"] = 28789,
				["slot"] = "Trinket2",
			}, -- [14]
			{
				["slotIndex"] = 16,
				["item"] = 30910,
				["slot"] = "Main Hand",
			}, -- [15]
			{
				["slotIndex"] = 17,
				["item"] = 32375,
				["slot"] = "Off Hand",
			}, -- [16]
			{
				["slotIndex"] = 18,
				["item"] = 27917,
				["slot"] = "Ranged",
			}, -- [17]
		},
		["ShamEnh"] = {
			{
				["slotIndex"] = 1,
				["item"] = 32235,
				["slot"] = "Head",
			}, -- [1]
			{
				["slotIndex"] = 2,
				["item"] = 32260,
				["slot"] = "Neck",
			}, -- [2]
			{
				["slotIndex"] = 3,
				["item"] = 32581,
				["slot"] = "Shoulders",
			}, -- [3]
			{
				["slotIndex"] = 15,
				["item"] = 32323,
				["slot"] = "Back",
			}, -- [4]
			{
				["slotIndex"] = 5,
				["item"] = 30905,
				["slot"] = "Chest",
			}, -- [5]
			{
				["slotIndex"] = 9,
				["item"] = 30863,
				["slot"] = "Wrist",
			}, -- [6]
			{
				["slotIndex"] = 10,
				["item"] = 32234,
				["slot"] = "Hands",
			}, -- [7]
			{
				["slotIndex"] = 6,
				["item"] = 30106,
				["slot"] = "Waist",
			}, -- [8]
			{
				["slotIndex"] = 7,
				["item"] = 30900,
				["slot"] = "Legs",
			}, -- [9]
			{
				["slotIndex"] = 8,
				["item"] = 32366,
				["slot"] = "Feet",
			}, -- [10]
			{
				["slotIndex"] = 11,
				["item"] = 29997,
				["slot"] = "Ring1",
			}, -- [11]
			{
				["slotIndex"] = 12,
				["item"] = 32497,
				["slot"] = "Ring2",
			}, -- [12]
			{
				["slotIndex"] = 13,
				["item"] = 32505,
				["slot"] = "Trinket1",
			}, -- [13]
			{
				["slotIndex"] = 14,
				["item"] = 28830,
				["slot"] = "Trinket2",
			}, -- [14]
			{
				["slotIndex"] = 16,
				["item"] = 32262,
				["slot"] = "Main Hand",
			}, -- [15]
			{
				["slotIndex"] = 17,
				["item"] = 32262,
				["slot"] = "Off Hand",
			}, -- [16]
			{
				["slotIndex"] = 18,
				["item"] = 27815,
				["slot"] = "Ranged",
			}, -- [17]
		},
		["PriestSh"] = {
			{
				["slotIndex"] = 1,
				["item"] = 31064,
				["slot"] = "Head",
			}, -- [1]
			{
				["slotIndex"] = 2,
				["item"] = 32349,
				["slot"] = "Neck",
			}, -- [2]
			{
				["slotIndex"] = 3,
				["item"] = 31070,
				["slot"] = "Shoulders",
			}, -- [3]
			{
				["slotIndex"] = 15,
				["item"] = 32590,
				["slot"] = "Back",
			}, -- [4]
			{
				["slotIndex"] = 5,
				["item"] = 31065,
				["slot"] = "Chest",
			}, -- [5]
			{
				["slotIndex"] = 9,
				["item"] = 32586,
				["slot"] = "Wrist",
			}, -- [6]
			{
				["slotIndex"] = 10,
				["item"] = 31061,
				["slot"] = "Hands",
			}, -- [7]
			{
				["slotIndex"] = 6,
				["item"] = 32256,
				["slot"] = "Waist",
			}, -- [8]
			{
				["slotIndex"] = 7,
				["item"] = 30916,
				["slot"] = "Legs",
			}, -- [9]
			{
				["slotIndex"] = 8,
				["item"] = 21870,
				["slot"] = "Feet",
			}, -- [10]
			{
				["slotIndex"] = 11,
				["item"] = 32527,
				["slot"] = "Ring1",
			}, -- [11]
			{
				["slotIndex"] = 12,
				["item"] = 32527,
				["slot"] = "Ring2",
			}, -- [12]
			{
				["slotIndex"] = 13,
				["item"] = 32483,
				["slot"] = "Trinket1",
			}, -- [13]
			{
				["slotIndex"] = 14,
				["item"] = 38290,
				["slot"] = "Trinket2",
			}, -- [14]
			{
				["slotIndex"] = 16,
				["item"] = 32374,
				["slot"] = "Main Hand",
			}, -- [15]
			{
				["slotIndex"] = 17,
				["slot"] = "Off Hand",
			}, -- [16]
			{
				["slotIndex"] = 18,
				["item"] = 29982,
				["slot"] = "Ranged",
			}, -- [17]
		},
		["DruidBear"] = {
			{
				["slotIndex"] = 1,
				["item"] = 33672,
				["slot"] = "Head",
			}, -- [1]
			{
				["slotIndex"] = 2,
				["item"] = 33923,
				["slot"] = "Neck",
			}, -- [2]
			{
				["slotIndex"] = 3,
				["item"] = 31048,
				["slot"] = "Shoulders",
			}, -- [3]
			{
				["slotIndex"] = 15,
				["item"] = 28660,
				["slot"] = "Back",
			}, -- [4]
			{
				["slotIndex"] = 5,
				["item"] = 31042,
				["slot"] = "Chest",
			}, -- [5]
			{
				["slotIndex"] = 9,
				["item"] = 33881,
				["slot"] = "Wrist",
			}, -- [6]
			{
				["slotIndex"] = 10,
				["item"] = 31034,
				["slot"] = "Hands",
			}, -- [7]
			{
				["slotIndex"] = 6,
				["item"] = 30106,
				["slot"] = "Waist",
			}, -- [8]
			{
				["slotIndex"] = 7,
				["item"] = 31044,
				["slot"] = "Legs",
			}, -- [9]
			{
				["slotIndex"] = 8,
				["item"] = 32593,
				["slot"] = "Feet",
			}, -- [10]
			{
				["slotIndex"] = 11,
				["item"] = 32266,
				["slot"] = "Ring1",
			}, -- [11]
			{
				["slotIndex"] = 12,
				["item"] = 29301,
				["slot"] = "Ring2",
			}, -- [12]
			{
				["slotIndex"] = 13,
				["item"] = 32501,
				["slot"] = "Trinket1",
			}, -- [13]
			{
				["slotIndex"] = 14,
				["item"] = 34576,
				["slot"] = "Trinket2",
			}, -- [14]
			{
				["slotIndex"] = 16,
				["item"] = 30883,
				["slot"] = "Main Hand",
			}, -- [15]
			{
				["slotIndex"] = 17,
				["slot"] = "Off Hand",
			}, -- [16]
			{
				["slotIndex"] = 18,
				["item"] = 32387,
				["slot"] = "Ranged",
			}, -- [17]
		},
		["PalHoly"] = {
			{
				["slotIndex"] = 1,
				["item"] = 30988,
				["slot"] = "Head",
			}, -- [1]
			{
				["slotIndex"] = 2,
				["item"] = 32370,
				["slot"] = "Neck",
			}, -- [2]
			{
				["slotIndex"] = 3,
				["item"] = 30996,
				["slot"] = "Shoulders",
			}, -- [3]
			{
				["slotIndex"] = 15,
				["item"] = 32524,
				["slot"] = "Back",
			}, -- [4]
			{
				["slotIndex"] = 5,
				["item"] = 30992,
				["slot"] = "Chest",
			}, -- [5]
			{
				["slotIndex"] = 9,
				["item"] = 30862,
				["slot"] = "Wrist",
			}, -- [6]
			{
				["slotIndex"] = 10,
				["item"] = 30112,
				["slot"] = "Hands",
			}, -- [7]
			{
				["slotIndex"] = 6,
				["item"] = 30897,
				["slot"] = "Waist",
			}, -- [8]
			{
				["slotIndex"] = 7,
				["item"] = 30994,
				["slot"] = "Legs",
			}, -- [9]
			{
				["slotIndex"] = 8,
				["item"] = 32243,
				["slot"] = "Feet",
			}, -- [10]
			{
				["slotIndex"] = 11,
				["item"] = 32528,
				["slot"] = "Ring1",
			}, -- [11]
			{
				["slotIndex"] = 12,
				["item"] = 32528,
				["slot"] = "Ring2",
			}, -- [12]
			{
				["slotIndex"] = 13,
				["item"] = 29376,
				["slot"] = "Trinket1",
			}, -- [13]
			{
				["slotIndex"] = 14,
				["item"] = 32496,
				["slot"] = "Trinket2",
			}, -- [14]
			{
				["slotIndex"] = 16,
				["item"] = 32500,
				["slot"] = "Main Hand",
			}, -- [15]
			{
				["slotIndex"] = 17,
				["item"] = 32255,
				["slot"] = "Off Hand",
			}, -- [16]
			{
				["slotIndex"] = 18,
				["item"] = 25644,
				["slot"] = "Ranged",
			}, -- [17]
		},
		["DruidCat"] = {
			{
				["slotIndex"] = 1,
				["item"] = 8345,
				["slot"] = "Head",
			}, -- [1]
			{
				["slotIndex"] = 2,
				["item"] = 30017,
				["slot"] = "Neck",
			}, -- [2]
			{
				["slotIndex"] = 3,
				["item"] = 31048,
				["slot"] = "Shoulders",
			}, -- [3]
			{
				["slotIndex"] = 15,
				["item"] = 29994,
				["slot"] = "Back",
			}, -- [4]
			{
				["slotIndex"] = 5,
				["item"] = 31042,
				["slot"] = "Chest",
			}, -- [5]
			{
				["slotIndex"] = 9,
				["item"] = 33881,
				["slot"] = "Wrist",
			}, -- [6]
			{
				["slotIndex"] = 10,
				["item"] = 31034,
				["slot"] = "Hands",
			}, -- [7]
			{
				["slotIndex"] = 6,
				["item"] = 30106,
				["slot"] = "Waist",
			}, -- [8]
			{
				["slotIndex"] = 7,
				["item"] = 31044,
				["slot"] = "Legs",
			}, -- [9]
			{
				["slotIndex"] = 8,
				["item"] = 32366,
				["slot"] = "Feet",
			}, -- [10]
			{
				["slotIndex"] = 11,
				["item"] = 30052,
				["slot"] = "Ring1",
			}, -- [11]
			{
				["slotIndex"] = 12,
				["item"] = 29301,
				["slot"] = "Ring2",
			}, -- [12]
			{
				["slotIndex"] = 13,
				["item"] = 29383,
				["slot"] = "Trinket1",
			}, -- [13]
			{
				["slotIndex"] = 14,
				["item"] = 30627,
				["slot"] = "Trinket2",
			}, -- [14]
			{
				["slotIndex"] = 16,
				["item"] = 33716,
				["slot"] = "Main Hand",
			}, -- [15]
			{
				["slotIndex"] = 17,
				["slot"] = "Off Hand",
			}, -- [16]
			{
				["slotIndex"] = 18,
				["item"] = 29390,
				["slot"] = "Ranged",
			}, -- [17]
		},
		["WarFury"] = {
			{
				["slotIndex"] = 1,
				["item"] = 32235,
				["slot"] = "Head",
			}, -- [1]
			{
				["slotIndex"] = 2,
				["item"] = 32260,
				["slot"] = "Neck",
			}, -- [2]
			{
				["slotIndex"] = 3,
				["item"] = 30979,
				["slot"] = "Shoulders",
			}, -- [3]
			{
				["slotIndex"] = 15,
				["item"] = 32323,
				["slot"] = "Back",
			}, -- [4]
			{
				["slotIndex"] = 5,
				["item"] = 30975,
				["slot"] = "Chest",
			}, -- [5]
			{
				["slotIndex"] = 9,
				["item"] = 30863,
				["slot"] = "Wrist",
			}, -- [6]
			{
				["slotIndex"] = 10,
				["item"] = 32278,
				["slot"] = "Hands",
			}, -- [7]
			{
				["slotIndex"] = 6,
				["item"] = 30106,
				["slot"] = "Waist",
			}, -- [8]
			{
				["slotIndex"] = 7,
				["item"] = 32341,
				["slot"] = "Legs",
			}, -- [9]
			{
				["slotIndex"] = 8,
				["item"] = 32345,
				["slot"] = "Feet",
			}, -- [10]
			{
				["slotIndex"] = 11,
				["item"] = 32335,
				["slot"] = "Ring1",
			}, -- [11]
			{
				["slotIndex"] = 12,
				["item"] = 32497,
				["slot"] = "Ring2",
			}, -- [12]
			{
				["slotIndex"] = 13,
				["item"] = 28830,
				["slot"] = "Trinket1",
			}, -- [13]
			{
				["slotIndex"] = 14,
				["item"] = 32505,
				["slot"] = "Trinket2",
			}, -- [14]
			{
				["slotIndex"] = 16,
				["item"] = 32837,
				["slot"] = "Main Hand",
			}, -- [15]
			{
				["slotIndex"] = 17,
				["item"] = 32838,
				["slot"] = "Off Hand",
			}, -- [16]
			{
				["slotIndex"] = 18,
				["item"] = 30105,
				["slot"] = "Ranged",
			}, -- [17]
		},
		["HuntBM"] = {
			{
				["slotIndex"] = 1,
				["item"] = 32235,
				["slot"] = "Head",
			}, -- [1]
			{
				["slotIndex"] = 2,
				["item"] = 32260,
				["slot"] = "Neck",
			}, -- [2]
			{
				["slotIndex"] = 3,
				["item"] = 31006,
				["slot"] = "Shoulders",
			}, -- [3]
			{
				["slotIndex"] = 15,
				["item"] = 29994,
				["slot"] = "Back",
			}, -- [4]
			{
				["slotIndex"] = 5,
				["item"] = 31004,
				["slot"] = "Chest",
			}, -- [5]
			{
				["slotIndex"] = 9,
				["item"] = 32324,
				["slot"] = "Wrist",
			}, -- [6]
			{
				["slotIndex"] = 10,
				["item"] = 31001,
				["slot"] = "Hands",
			}, -- [7]
			{
				["slotIndex"] = 6,
				["item"] = 30879,
				["slot"] = "Waist",
			}, -- [8]
			{
				["slotIndex"] = 7,
				["item"] = 31005,
				["slot"] = "Legs",
			}, -- [9]
			{
				["slotIndex"] = 8,
				["item"] = 32366,
				["slot"] = "Feet",
			}, -- [10]
			{
				["slotIndex"] = 11,
				["item"] = 29997,
				["slot"] = "Ring1",
			}, -- [11]
			{
				["slotIndex"] = 12,
				["item"] = 32497,
				["slot"] = "Ring2",
			}, -- [12]
			{
				["slotIndex"] = 13,
				["item"] = 32505,
				["slot"] = "Trinket1",
			}, -- [13]
			{
				["slotIndex"] = 14,
				["item"] = 28830,
				["slot"] = "Trinket2",
			}, -- [14]
			{
				["slotIndex"] = 16,
				["item"] = 30901,
				["slot"] = "Main Hand",
			}, -- [15]
			{
				["slotIndex"] = 17,
				["item"] = 30881,
				["slot"] = "Off Hand",
			}, -- [16]
			{
				["slotIndex"] = 18,
				["item"] = 30906,
				["slot"] = "Ranged",
			}, -- [17]
		},
		["WarArms"] = {
			{
				["slotIndex"] = 1,
				["item"] = 32235,
				["slot"] = "Head",
			}, -- [1]
			{
				["slotIndex"] = 2,
				["item"] = 32260,
				["slot"] = "Neck",
			}, -- [2]
			{
				["slotIndex"] = 3,
				["item"] = 30979,
				["slot"] = "Shoulders",
			}, -- [3]
			{
				["slotIndex"] = 15,
				["item"] = 32323,
				["slot"] = "Back",
			}, -- [4]
			{
				["slotIndex"] = 5,
				["item"] = 30975,
				["slot"] = "Chest",
			}, -- [5]
			{
				["slotIndex"] = 9,
				["item"] = 30863,
				["slot"] = "Wrist",
			}, -- [6]
			{
				["slotIndex"] = 10,
				["item"] = 32278,
				["slot"] = "Hands",
			}, -- [7]
			{
				["slotIndex"] = 6,
				["item"] = 30106,
				["slot"] = "Waist",
			}, -- [8]
			{
				["slotIndex"] = 7,
				["item"] = 32341,
				["slot"] = "Legs",
			}, -- [9]
			{
				["slotIndex"] = 8,
				["item"] = 32345,
				["slot"] = "Feet",
			}, -- [10]
			{
				["slotIndex"] = 11,
				["item"] = 32335,
				["slot"] = "Ring1",
			}, -- [11]
			{
				["slotIndex"] = 12,
				["item"] = 32497,
				["slot"] = "Ring2",
			}, -- [12]
			{
				["slotIndex"] = 13,
				["item"] = 28830,
				["slot"] = "Trinket1",
			}, -- [13]
			{
				["slotIndex"] = 14,
				["item"] = 29383,
				["slot"] = "Trinket2",
			}, -- [14]
			{
				["slotIndex"] = 16,
				["item"] = 30902,
				["slot"] = "Main Hand",
			}, -- [15]
			{
				["slotIndex"] = 17,
				["slot"] = "Off Hand",
			}, -- [16]
			{
				["slotIndex"] = 18,
				["item"] = 30105,
				["slot"] = "Ranged",
			}, -- [17]
		},
		["MageA"] = {
			{
				["slotIndex"] = 1,
				["item"] = 30206,
				["slot"] = "Head",
			}, -- [1]
			{
				["slotIndex"] = 2,
				["item"] = 30015,
				["slot"] = "Neck",
			}, -- [2]
			{
				["slotIndex"] = 3,
				["item"] = 30210,
				["slot"] = "Shoulders",
			}, -- [3]
			{
				["slotIndex"] = 15,
				["item"] = 32331,
				["slot"] = "Back",
			}, -- [4]
			{
				["slotIndex"] = 5,
				["item"] = 30196,
				["slot"] = "Chest",
			}, -- [5]
			{
				["slotIndex"] = 9,
				["item"] = 30870,
				["slot"] = "Wrist",
			}, -- [6]
			{
				["slotIndex"] = 10,
				["item"] = 30205,
				["slot"] = "Hands",
			}, -- [7]
			{
				["slotIndex"] = 6,
				["item"] = 30888,
				["slot"] = "Waist",
			}, -- [8]
			{
				["slotIndex"] = 7,
				["item"] = 30916,
				["slot"] = "Legs",
			}, -- [9]
			{
				["slotIndex"] = 8,
				["item"] = 32239,
				["slot"] = "Feet",
			}, -- [10]
			{
				["slotIndex"] = 11,
				["item"] = 29305,
				["slot"] = "Ring1",
			}, -- [11]
			{
				["slotIndex"] = 12,
				["item"] = 32527,
				["slot"] = "Ring2",
			}, -- [12]
			{
				["slotIndex"] = 13,
				["item"] = 38290,
				["slot"] = "Trinket1",
			}, -- [13]
			{
				["slotIndex"] = 14,
				["item"] = 30720,
				["slot"] = "Trinket2",
			}, -- [14]
			{
				["slotIndex"] = 16,
				["item"] = 30910,
				["slot"] = "Main Hand",
			}, -- [15]
			{
				["slotIndex"] = 17,
				["item"] = 30872,
				["slot"] = "Off Hand",
			}, -- [16]
			{
				["slotIndex"] = 18,
				["item"] = 28783,
				["slot"] = "Ranged",
			}, -- [17]
		},
		["PriestHoly"] = {
			{
				["slotIndex"] = 1,
				["item"] = 31063,
				["slot"] = "Head",
			}, -- [1]
			{
				["slotIndex"] = 2,
				["item"] = 32370,
				["slot"] = "Neck",
			}, -- [2]
			{
				["slotIndex"] = 3,
				["item"] = 31069,
				["slot"] = "Shoulders",
			}, -- [3]
			{
				["slotIndex"] = 15,
				["item"] = 32524,
				["slot"] = "Back",
			}, -- [4]
			{
				["slotIndex"] = 5,
				["item"] = 31066,
				["slot"] = "Chest",
			}, -- [5]
			{
				["slotIndex"] = 9,
				["item"] = 32584,
				["slot"] = "Wrist",
			}, -- [6]
			{
				["slotIndex"] = 10,
				["item"] = 31060,
				["slot"] = "Hands",
			}, -- [7]
			{
				["slotIndex"] = 6,
				["item"] = 30895,
				["slot"] = "Waist",
			}, -- [8]
			{
				["slotIndex"] = 7,
				["item"] = 30912,
				["slot"] = "Legs",
			}, -- [9]
			{
				["slotIndex"] = 8,
				["item"] = 32609,
				["slot"] = "Feet",
			}, -- [10]
			{
				["slotIndex"] = 11,
				["item"] = 32528,
				["slot"] = "Ring1",
			}, -- [11]
			{
				["slotIndex"] = 12,
				["item"] = 32528,
				["slot"] = "Ring2",
			}, -- [12]
			{
				["slotIndex"] = 13,
				["item"] = 29376,
				["slot"] = "Trinket1",
			}, -- [13]
			{
				["slotIndex"] = 14,
				["item"] = 28823,
				["slot"] = "Trinket2",
			}, -- [14]
			{
				["slotIndex"] = 16,
				["item"] = 32500,
				["slot"] = "Main Hand",
			}, -- [15]
			{
				["slotIndex"] = 17,
				["item"] = 30911,
				["slot"] = "Off Hand",
			}, -- [16]
			{
				["slotIndex"] = 18,
				["item"] = 30080,
				["slot"] = "Ranged",
			}, -- [17]
		},
		["WarProt"] = {
			{
				["slotIndex"] = 1,
				["item"] = 33730,
				["slot"] = "Head",
			}, -- [1]
			{
				["slotIndex"] = 2,
				["item"] = 33923,
				["slot"] = "Neck",
			}, -- [2]
			{
				["slotIndex"] = 3,
				["item"] = 30979,
				["slot"] = "Shoulders",
			}, -- [3]
			{
				["slotIndex"] = 15,
				["item"] = 33122,
				["slot"] = "Back",
			}, -- [4]
			{
				["slotIndex"] = 5,
				["item"] = 33728,
				["slot"] = "Chest",
			}, -- [5]
			{
				["slotIndex"] = 9,
				["item"] = 33813,
				["slot"] = "Wrist",
			}, -- [6]
			{
				["slotIndex"] = 10,
				["item"] = 32280,
				["slot"] = "Hands",
			}, -- [7]
			{
				["slotIndex"] = 6,
				["item"] = 33811,
				["slot"] = "Waist",
			}, -- [8]
			{
				["slotIndex"] = 7,
				["item"] = 32263,
				["slot"] = "Legs",
			}, -- [9]
			{
				["slotIndex"] = 8,
				["item"] = 32268,
				["slot"] = "Feet",
			}, -- [10]
			{
				["slotIndex"] = 11,
				["item"] = 30834,
				["slot"] = "Ring1",
			}, -- [11]
			{
				["slotIndex"] = 12,
				["item"] = 32497,
				["slot"] = "Ring2",
			}, -- [12]
			{
				["slotIndex"] = 13,
				["item"] = 23836,
				["slot"] = "Trinket1",
			}, -- [13]
			{
				["slotIndex"] = 14,
				["item"] = 23836,
				["slot"] = "Trinket2",
			}, -- [14]
			{
				["slotIndex"] = 16,
				["item"] = 32369,
				["slot"] = "Main Hand",
			}, -- [15]
			{
				["slotIndex"] = 17,
				["item"] = 32375,
				["slot"] = "Off Hand",
			}, -- [16]
			{
				["slotIndex"] = 18,
				["item"] = 33765,
				["slot"] = "Ranged",
			}, -- [17]
		},
		["DruidResto"] = {
			{
				["slotIndex"] = 1,
				["item"] = 31037,
				["slot"] = "Head",
			}, -- [1]
			{
				["slotIndex"] = 2,
				["item"] = 30018,
				["slot"] = "Neck",
			}, -- [2]
			{
				["slotIndex"] = 3,
				["item"] = 32583,
				["slot"] = "Shoulders",
			}, -- [3]
			{
				["slotIndex"] = 15,
				["item"] = 32524,
				["slot"] = "Back",
			}, -- [4]
			{
				["slotIndex"] = 5,
				["item"] = 31041,
				["slot"] = "Chest",
			}, -- [5]
			{
				["slotIndex"] = 9,
				["item"] = 32582,
				["slot"] = "Wrist",
			}, -- [6]
			{
				["slotIndex"] = 10,
				["item"] = 32328,
				["slot"] = "Hands",
			}, -- [7]
			{
				["slotIndex"] = 6,
				["item"] = 32339,
				["slot"] = "Waist",
			}, -- [8]
			{
				["slotIndex"] = 7,
				["item"] = 30912,
				["slot"] = "Legs",
			}, -- [9]
			{
				["slotIndex"] = 8,
				["item"] = 32609,
				["slot"] = "Feet",
			}, -- [10]
			{
				["slotIndex"] = 11,
				["item"] = 32528,
				["slot"] = "Ring1",
			}, -- [11]
			{
				["slotIndex"] = 12,
				["item"] = 32528,
				["slot"] = "Ring2",
			}, -- [12]
			{
				["slotIndex"] = 13,
				["item"] = 29376,
				["slot"] = "Trinket1",
			}, -- [13]
			{
				["slotIndex"] = 14,
				["item"] = 38288,
				["slot"] = "Trinket2",
			}, -- [14]
			{
				["slotIndex"] = 16,
				["item"] = 32500,
				["slot"] = "Main Hand",
			}, -- [15]
			{
				["slotIndex"] = 17,
				["item"] = 30911,
				["slot"] = "Off Hand",
			}, -- [16]
			{
				["slotIndex"] = 18,
				["item"] = 27886,
				["slot"] = "Ranged",
			}, -- [17]
		},
	},
	["BisItems"] = {
		["30912"] = {
			"DruidResto", -- [1]
			"PriestHoly", -- [2]
		},
		["32330"] = {
			"ShamEle", -- [1]
		},
		["31053"] = {
			"Lock", -- [1]
		},
		["30979"] = {
			"WarArms", -- [1]
			"WarFury", -- [2]
			"WarProt", -- [3]
		},
		["30862"] = {
			"PalHoly", -- [1]
		},
		["32524"] = {
			"Boomkin", -- [1]
			"DruidResto", -- [2]
			"Lock", -- [3]
			"PalHoly", -- [4]
			"PriestHoly", -- [5]
			"ShamResto", -- [6]
		},
		["31003"] = {
			"HuntSurv", -- [1]
		},
		["30626"] = {
			"ShamEle", -- [1]
		},
		["31065"] = {
			"PriestSh", -- [1]
		},
		["32497"] = {
			"HuntBM", -- [1]
			"Rogue", -- [2]
			"ShamEnh", -- [3]
			"WarArms", -- [4]
			"WarFury", -- [5]
			"WarProt", -- [6]
		},
		["32387"] = {
			"DruidBear", -- [1]
			"Boomkin", -- [2]
		},
		["33811"] = {
			"WarProt", -- [1]
		},
		["32262"] = {
			"ShamEnh", -- [1]
		},
		["29947"] = {
			"PalRet", -- [1]
		},
		["30015"] = {
			"Boomkin", -- [1]
			"MageA", -- [2]
			"ShamEle", -- [3]
		},
		["31022"] = {
			"ShamResto", -- [1]
		},
		["30902"] = {
			"WarArms", -- [1]
		},
		["30055"] = {
			"PalRet", -- [1]
		},
		["38288"] = {
			"DruidResto", -- [1]
		},
		["31023"] = {
			"ShamEle", -- [1]
		},
		["33730"] = {
			"WarProt", -- [1]
		},
		["32526"] = {
			"PalRet", -- [1]
		},
		["32332"] = {
			"PalRet", -- [1]
		},
		["33728"] = {
			"WarProt", -- [1]
		},
		["31064"] = {
			"PriestSh", -- [1]
		},
		["31029"] = {
			"Rogue", -- [1]
		},
		["32590"] = {
			"PriestSh", -- [1]
		},
		["33923"] = {
			"DruidBear", -- [1]
			"WarProt", -- [2]
		},
		["25644"] = {
			"PalHoly", -- [1]
		},
		["31004"] = {
			"HuntBM", -- [1]
			"HuntSurv", -- [2]
		},
		["30879"] = {
			"HuntBM", -- [1]
			"HuntSurv", -- [2]
		},
		["23836"] = {
			"WarProt", -- [1]
		},
		["32345"] = {
			"WarArms", -- [1]
			"WarFury", -- [2]
		},
		["32583"] = {
			"DruidResto", -- [1]
		},
		["32586"] = {
			"Boomkin", -- [1]
			"Lock", -- [2]
			"PriestSh", -- [3]
			"ShamEle", -- [4]
		},
		["33716"] = {
			"DruidCat", -- [1]
		},
		["29390"] = {
			"DruidCat", -- [1]
		},
		["30205"] = {
			"MageA", -- [1]
		},
		["30883"] = {
			"DruidBear", -- [1]
		},
		["32342"] = {
			"PalProt", -- [1]
		},
		["32483"] = {
			"Boomkin", -- [1]
			"Lock", -- [2]
			"PriestSh", -- [3]
		},
		["30900"] = {
			"HuntSurv", -- [1]
			"PalRet", -- [2]
			"ShamEnh", -- [3]
		},
		["32837"] = {
			"Rogue", -- [1]
			"WarFury", -- [2]
		},
		["32370"] = {
			"PalHoly", -- [1]
			"PriestHoly", -- [2]
			"ShamResto", -- [3]
		},
		["29994"] = {
			"DruidCat", -- [1]
			"HuntBM", -- [2]
			"HuntSurv", -- [3]
		},
		["31034"] = {
			"DruidBear", -- [1]
			"DruidCat", -- [2]
		},
		["31050"] = {
			"Lock", -- [1]
		},
		["31070"] = {
			"PriestSh", -- [1]
		},
		["32255"] = {
			"PalHoly", -- [1]
		},
		["38290"] = {
			"MageA", -- [1]
			"PriestSh", -- [2]
		},
		["32341"] = {
			"WarArms", -- [1]
			"WarFury", -- [2]
		},
		["32280"] = {
			"WarProt", -- [1]
		},
		["28785"] = {
			"ShamEle", -- [1]
		},
		["32268"] = {
			"WarProt", -- [1]
		},
		["33813"] = {
			"WarProt", -- [1]
		},
		["32496"] = {
			"PalHoly", -- [1]
			"ShamResto", -- [2]
		},
		["28791"] = {
			"HuntSurv", -- [1]
		},
		["31041"] = {
			"DruidResto", -- [1]
		},
		["27886"] = {
			"DruidResto", -- [1]
		},
		["30018"] = {
			"DruidResto", -- [1]
		},
		["31019"] = {
			"ShamResto", -- [1]
		},
		["21870"] = {
			"PriestSh", -- [1]
		},
		["30834"] = {
			"PalRet", -- [1]
			"WarProt", -- [2]
		},
		["30998"] = {
			"PalProt", -- [1]
		},
		["33054"] = {
			"PalProt", -- [1]
		},
		["31035"] = {
			"Boomkin", -- [1]
		},
		["30882"] = {
			"ShamResto", -- [1]
		},
		["30052"] = {
			"DruidCat", -- [1]
		},
		["31060"] = {
			"PriestHoly", -- [1]
		},
		["32339"] = {
			"DruidResto", -- [1]
		},
		["30105"] = {
			"WarArms", -- [1]
			"WarFury", -- [2]
		},
		["31030"] = {
			"Rogue", -- [1]
		},
		["32838"] = {
			"Rogue", -- [1]
			"WarFury", -- [2]
		},
		["29383"] = {
			"DruidCat", -- [1]
			"PalRet", -- [2]
			"WarArms", -- [3]
		},
		["32235"] = {
			"HuntBM", -- [1]
			"PalRet", -- [2]
			"Rogue", -- [3]
			"ShamEnh", -- [4]
			"WarArms", -- [5]
			"WarFury", -- [6]
		},
		["33881"] = {
			"DruidBear", -- [1]
			"DruidCat", -- [2]
		},
		["30992"] = {
			"PalHoly", -- [1]
		},
		["31049"] = {
			"Boomkin", -- [1]
		},
		["32276"] = {
			"ShamEle", -- [1]
		},
		["31048"] = {
			"DruidBear", -- [1]
			"DruidCat", -- [2]
		},
		["30022"] = {
			"PalRet", -- [1]
		},
		["31012"] = {
			"ShamResto", -- [1]
		},
		["32366"] = {
			"DruidCat", -- [1]
			"HuntBM", -- [2]
			"HuntSurv", -- [3]
			"PalRet", -- [4]
			"Rogue", -- [5]
			"ShamEnh", -- [6]
		},
		["32375"] = {
			"PalProt", -- [1]
			"WarProt", -- [2]
		},
		["30996"] = {
			"PalHoly", -- [1]
		},
		["30112"] = {
			"PalHoly", -- [1]
		},
		["31005"] = {
			"HuntBM", -- [1]
		},
		["31017"] = {
			"ShamEle", -- [1]
		},
		["28523"] = {
			"ShamResto", -- [1]
		},
		["29376"] = {
			"DruidResto", -- [1]
			"PalHoly", -- [2]
			"PriestHoly", -- [3]
			"ShamResto", -- [4]
		},
		["32278"] = {
			"WarArms", -- [1]
			"WarFury", -- [2]
		},
		["28823"] = {
			"PriestHoly", -- [1]
		},
		["32324"] = {
			"HuntBM", -- [1]
			"HuntSurv", -- [2]
		},
		["32609"] = {
			"DruidResto", -- [1]
			"PriestHoly", -- [2]
			"ShamResto", -- [3]
		},
		["30911"] = {
			"DruidResto", -- [1]
			"PriestHoly", -- [2]
		},
		["29305"] = {
			"MageA", -- [1]
			"PalProt", -- [2]
		},
		["30627"] = {
			"DruidCat", -- [1]
		},
		["32580"] = {
			"Rogue", -- [1]
		},
		["28783"] = {
			"MageA", -- [1]
		},
		["32256"] = {
			"PriestSh", -- [1]
		},
		["27815"] = {
			"ShamEnh", -- [1]
		},
		["31061"] = {
			"PriestSh", -- [1]
		},
		["31006"] = {
			"HuntBM", -- [1]
			"HuntSurv", -- [2]
		},
		["30107"] = {
			"Lock", -- [1]
		},
		["32245"] = {
			"PalProt", -- [1]
		},
		["31042"] = {
			"DruidBear", -- [1]
			"DruidCat", -- [2]
		},
		["31044"] = {
			"DruidBear", -- [1]
			"DruidCat", -- [2]
		},
		["31008"] = {
			"ShamEle", -- [1]
		},
		["29301"] = {
			"DruidBear", -- [1]
			"DruidCat", -- [2]
			"Rogue", -- [3]
		},
		["33765"] = {
			"WarProt", -- [1]
		},
		["32349"] = {
			"Lock", -- [1]
			"PriestSh", -- [2]
		},
		["30991"] = {
			"PalProt", -- [1]
		},
		["32369"] = {
			"WarProt", -- [1]
		},
		["31069"] = {
			"PriestHoly", -- [1]
		},
		["34576"] = {
			"DruidBear", -- [1]
		},
		["33672"] = {
			"DruidBear", -- [1]
		},
		["30916"] = {
			"Boomkin", -- [1]
			"MageA", -- [2]
			"PriestSh", -- [3]
			"ShamEle", -- [4]
		},
		["29949"] = {
			"Rogue", -- [1]
		},
		["30017"] = {
			"DruidCat", -- [1]
			"HuntSurv", -- [2]
		},
		["32505"] = {
			"HuntBM", -- [1]
			"HuntSurv", -- [2]
			"ShamEnh", -- [3]
			"WarFury", -- [4]
		},
		["32258"] = {
			"ShamResto", -- [1]
		},
		["28660"] = {
			"DruidBear", -- [1]
		},
		["30905"] = {
			"PalRet", -- [1]
			"ShamEnh", -- [2]
		},
		["32501"] = {
			"DruidBear", -- [1]
		},
		["30901"] = {
			"HuntBM", -- [1]
		},
		["31063"] = {
			"PriestHoly", -- [1]
		},
		["29997"] = {
			"HuntBM", -- [1]
			"HuntSurv", -- [2]
			"ShamEnh", -- [3]
		},
		["29982"] = {
			"Lock", -- [1]
			"PriestSh", -- [2]
		},
		["27917"] = {
			"PalProt", -- [1]
		},
		["31016"] = {
			"ShamResto", -- [1]
		},
		["30080"] = {
			"PriestHoly", -- [1]
		},
		["30863"] = {
			"ShamEnh", -- [1]
			"WarArms", -- [2]
			"WarFury", -- [3]
		},
		["31051"] = {
			"Lock", -- [1]
		},
		["28789"] = {
			"PalProt", -- [1]
		},
		["32574"] = {
			"PalRet", -- [1]
		},
		["30994"] = {
			"PalHoly", -- [1]
		},
		["30870"] = {
			"MageA", -- [1]
		},
		["32582"] = {
			"DruidResto", -- [1]
		},
		["28830"] = {
			"HuntBM", -- [1]
			"HuntSurv", -- [2]
			"PalRet", -- [3]
			"Rogue", -- [4]
			"ShamEnh", -- [5]
			"WarArms", -- [6]
			"WarFury", -- [7]
		},
		["32328"] = {
			"DruidResto", -- [1]
			"ShamResto", -- [2]
		},
		["30910"] = {
			"MageA", -- [1]
			"PalProt", -- [2]
		},
		["32593"] = {
			"DruidBear", -- [1]
		},
		["30720"] = {
			"MageA", -- [1]
		},
		["32527"] = {
			"Boomkin", -- [1]
			"Lock", -- [2]
			"MageA", -- [3]
			"PriestSh", -- [4]
			"ShamEle", -- [5]
		},
		["32234"] = {
			"ShamEnh", -- [1]
		},
		["32521"] = {
			"PalProt", -- [1]
		},
		["32581"] = {
			"ShamEnh", -- [1]
		},
		["30210"] = {
			"MageA", -- [1]
		},
		["32374"] = {
			"Boomkin", -- [1]
			"Lock", -- [2]
			"PriestSh", -- [3]
			"ShamEle", -- [4]
		},
		["30985"] = {
			"PalProt", -- [1]
		},
		["32266"] = {
			"DruidBear", -- [1]
		},
		["27683"] = {
			"Lock", -- [1]
		},
		["27484"] = {
			"PalRet", -- [1]
		},
		["32263"] = {
			"WarProt", -- [1]
		},
		["30975"] = {
			"WarArms", -- [1]
			"WarFury", -- [2]
		},
		["30872"] = {
			"MageA", -- [1]
		},
		["31026"] = {
			"Rogue", -- [1]
		},
		["30897"] = {
			"PalHoly", -- [1]
		},
		["31028"] = {
			"Rogue", -- [1]
		},
		["30888"] = {
			"Boomkin", -- [1]
			"Lock", -- [2]
			"MageA", -- [3]
		},
		["30196"] = {
			"MageA", -- [1]
		},
		["30450"] = {
			"Rogue", -- [1]
		},
		["32323"] = {
			"Rogue", -- [1]
			"ShamEnh", -- [2]
			"WarArms", -- [3]
			"WarFury", -- [4]
		},
		["29992"] = {
			"PalProt", -- [1]
		},
		["32279"] = {
			"PalProt", -- [1]
		},
		["33122"] = {
			"PalRet", -- [1]
			"WarProt", -- [2]
		},
		["31037"] = {
			"DruidResto", -- [1]
		},
		["31066"] = {
			"PriestHoly", -- [1]
		},
		["31040"] = {
			"Boomkin", -- [1]
		},
		["8345"] = {
			"DruidCat", -- [1]
		},
		["31001"] = {
			"HuntBM", -- [1]
			"HuntSurv", -- [2]
		},
		["30881"] = {
			"HuntBM", -- [1]
			"HuntSurv", -- [2]
		},
		["32331"] = {
			"MageA", -- [1]
			"ShamEle", -- [2]
		},
		["32528"] = {
			"DruidResto", -- [1]
			"PalHoly", -- [2]
			"PriestHoly", -- [3]
			"ShamResto", -- [4]
		},
		["31054"] = {
			"Lock", -- [1]
		},
		["30906"] = {
			"HuntBM", -- [1]
			"HuntSurv", -- [2]
		},
		["30988"] = {
			"PalHoly", -- [1]
		},
		["32584"] = {
			"PriestHoly", -- [1]
		},
		["19032"] = {
			"WarArms", -- [1]
			"WarFury", -- [2]
		},
		["32500"] = {
			"DruidResto", -- [1]
			"PalHoly", -- [2]
			"PriestHoly", -- [3]
			"ShamResto", -- [4]
		},
		["32243"] = {
			"PalHoly", -- [1]
		},
		["32260"] = {
			"HuntBM", -- [1]
			"Rogue", -- [2]
			"ShamEnh", -- [3]
			"WarArms", -- [4]
			"WarFury", -- [5]
		},
		["32486"] = {
			"Boomkin", -- [1]
		},
		["32239"] = {
			"Boomkin", -- [1]
			"Lock", -- [2]
			"MageA", -- [3]
			"ShamEle", -- [4]
		},
		["32335"] = {
			"WarArms", -- [1]
			"WarFury", -- [2]
		},
		["30206"] = {
			"MageA", -- [1]
		},
		["30895"] = {
			"PriestHoly", -- [1]
		},
		["32577"] = {
			"ShamResto", -- [1]
		},
		["33921"] = {
			"PalProt", -- [1]
		},
		["31014"] = {
			"ShamEle", -- [1]
		},
		["30995"] = {
			"PalProt", -- [1]
		},
		["31043"] = {
			"Boomkin", -- [1]
		},
		["30106"] = {
			"DruidBear", -- [1]
			"DruidCat", -- [2]
			"PalRet", -- [3]
			"Rogue", -- [4]
			"ShamEnh", -- [5]
			"WarArms", -- [6]
			"WarFury", -- [7]
		},
		["31858"] = {
			"PalProt", -- [1]
		},
	},
  Options = {
    points = {"CENTER"},
  }
}


function Main:CopyDBDefaults(db, def)
  for k,v in pairs(def) do
    if(db[k] == nil) then
      db[k] = def[k]
    elseif (type(v) == "table") then
      Main:CopyDBDefaults(db[k], v)
    end
  end
end