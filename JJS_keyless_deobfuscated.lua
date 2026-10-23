if not getgenv().SCRIPT_KEY then
	if not SCRIPT_KEY then
		r = "No script key provided, please pass a SCRIPT_KEY!"
		loadstring(game:HttpGet("https://jnkie.com/sdk/love.lua"))()
		return
	end

	local v = SCRIPT_KEY
	getgenv().SCRIPT_KEY = v
end

if getgenv().EXECUTING == "true" then
	warn("There is already an execution in progress. Please wait before executing another script.")
	return
end

getgenv().EXECUTING = "true"

spawn(function()
	task.wait(5)
	getgenv().EXECUTING = "false"
end)

if Faces.new(Enum.NormalId.Front, Enum.NormalId.Left, 1, 2).Back ~= false then
	LPH_CRASH()
end

if pcall(setmetatable, game, {}) or pcall(setfenv, 1, {}) then
	LPH_CRASH()
end

if pcall(function()
	game:GetService("RunsServices")
end) then
	LPH_CRASH()
end

if Faces.new(Enum.NormalId.Front, Enum.NormalId.Left, 1, 2).Front ~= true then
	LPH_CRASH()
end

do
	local ok, result = pcall(function()
		return pcall()
	end)

	if ok or result and not tostring(result):match("missing argument") then
		LPH_CRASH()
	end
end

if typeof(game:GetService("RunService").Heartbeat:Wait()) ~= "number" or game:GetService("RunService").Heartbeat:Wait() <= 0 then
	LPH_CRASH()
end

do
	local ok, result = pcall(function()
		return debug and debug.info and debug.info(2, "f")
	end)

	if not (ok and result) then
		LPH_CRASH()
	end
end

if debug.setmemorycategory("X") == debug.setmemorycategory("X") then
	LPH_CRASH()
end

if not utf8.graphemes then
	LPH_CRASH()
end

do
	local ok, result = pcall(function()
		return game:GetService("HttpService"):GetSecret("JUNKIE-DEVELOPMENT")
	end)

	if not result:match("Can't find secret with given key") then
		LPH_CRASH()
	end
end

if not SharedTable.new() then
	LPH_CRASH()
end

if #(function(arg)
	local v = Random.new(tick() * math.random() * math.random())
	local str = ""

	for i = 1, v:NextNumber(20, 30) do
		str ..= utf8.char(v:NextNumber(97, 8000))
	end

	return ("\0"):rep(25) .. str .. arg .. ("\0"):rep(25) .. str
end)("hi") < 150 then
	LPH_CRASH()
end

local flag = not setmetatable

if not flag then
	flag = not pcall

	if not flag then
		flag = not debug

		if not flag then
			flag = not rawget

			if not flag then
				flag = not rawset

				if not flag then
					flag = not pcall(rawset, {}, " ", " ")

					if not flag then
						flag = not select

						if not flag then
							flag = not select(2, pcall(rawget, debug, "info"))

							if not flag then
								local v = print
								flag = not select(2, pcall(rawget, debug, "info"))(v, "s") == "[C]"

								if not flag then
									local v2 = require
									flag = not select(2, pcall(rawget, debug, "info"))(v2, "s") == "[C]"
								end
							end
						end
					end
				end
			end
		end
	end
end

if flag then
	LPH_CRASH()
end

local fn

fn = function(arg, arg2)
	r = arg2 and arg2 .. "\n\nError code: " .. arg or arg
	loadstring(game:HttpGet("https://jnkie.com/sdk/love.lua"))()
	task.wait(3)
end

local v
v = debug.info(1, "l")
local v2 = debug.info(1, "l")

if isfunctionhooked then
	local flag2 = false

	pcall(function()
		flag2 = isfunctionhooked(request) or isfunctionhooked(game.HttpGet) or isfunctionhooked(loadstring) or isfunctionhooked(math.randomseed) or isfunctionhooked(os.time)
	end)

	pcall(function()
		if hookfunction and type(hookfunction) == "function" then
			local function fn2()
			end

			hookfunction(fn2, function()
				print("hellow")
			end)

			if not isfunctionhooked(fn2) then
				while true do
				end
			end
		end
	end)

	if flag2 then
		LPH_CRASH()
	end
end

if isreadonly then
	if not isreadonly(string) and not identifyexecutor():match("^Velocity") then
		LPH_CRASH()
	end

	if not isreadonly(math) then
		LPH_CRASH()
	end

	if not isreadonly(os) then
		LPH_CRASH()
	end

	if not isreadonly(table) then
		LPH_CRASH()
	end
end

if getrenv then
	if os.time ~= getrenv().os.time then
		LPH_CRASH()
	end

	if tostring ~= getrenv().tostring then
		LPH_CRASH()
	end

	if os.clock ~= getrenv().os.clock then
		LPH_CRASH()
	end

	if tonumber ~= getrenv().tonumber then
		LPH_CRASH()
	end

	if math.randomseed ~= getrenv().math.randomseed then
		LPH_CRASH()
	end

	if math.random ~= getrenv().math.random then
		LPH_CRASH()
	end
end

if os.time() < 1789913557 then
	fn("J2_116")
	LPH_CRASH()
end

if debug.info(1, "l") ~= v2 or debug.info(1, "l") ~= v then
	LPH_CRASH()
end

local tbl, n, heartbeat, flag2, tbl2, tbl3, fn2, fn3, v3, v4
local v5, fn4, fn5, fn6, fn7, fn8, fn9

do
	local v6 = debug.info(1, "l")

	local function fn10(arg)
		for i = 1, 197 do
			local ok, result = pcall(function()
				return coroutine.wrap(arg)
			end)

			if not ok then
				fn("J2_205")
				LPH_CRASH()
			end

			if type(result) == "function" then
				arg = result
			end
		end

		local ok, result = pcall(arg)
		if tostring(result or ""):find("C stack overflow") then
			return true
		end
		return false
	end

	if fn10(math.floor) then
		fn("J2_093")
		LPH_CRASH()
	end

	if fn10(math.random) then
		fn("J2_065")
		LPH_CRASH()
	end

	if fn10(math.abs) then
		fn("J2_151")
		LPH_CRASH()
	end

	if fn10(os.time) then
		fn("J2_022")
		LPH_CRASH()
	end

	if fn10(math.max) then
		fn("J2_173")
		LPH_CRASH()
	end

	if fn10(math.min) then
		fn("J2_003")
		LPH_CRASH()
	end

	if fn10(os.clock) then
		fn("J2_216")
		LPH_CRASH()
	end

	if fn10(task.spawn) then
		fn("J2_022")
		LPH_CRASH()
	end

	if fn10(request) and not identifyexecutor():match("^Hydrogen") and not identifyexecutor():match("^Xeno") and not identifyexecutor():match("^Solara") then
		fn("J2_260", "Executor compatibility error (" .. tostring(identifyexecutor()) .. ")")
		LPH_CRASH()
	end

	if pcall(function()
		return getfenv()["pr" .. nil .. "nt"]
	end) then
		fn("J2_113")
		LPH_CRASH()
	end

	local flag3 = false

	local tbl4 = {
		__tostring = function()
			flag3 = true
			return ""
		end,
		__eq = function()
			flag3 = true
			return false
		end,
		__index = function()
			flag3 = true

			return function()
				return ""
			end
		end,
		__concat = function()
			flag3 = true
			return ""
		end,
		__len = function()
			flag3 = true
			return 0
		end,
	}

	local tbl5 = {
		Url = setmetatable({}, tbl4),
		Method = "GET",
		Headers = { Accept = "*/*", ["User-Agent"] = "Roblox/WinInet" },
	}

	setmetatable(tbl5, setmetatable({}, { __index = function()
		flag3 = true
		return nil
	end }))

	tbl5.Headers[setmetatable({}, tbl4)] = "1"
	pcall(request, tbl5)

	if flag3 then
		fn("J2_260", "Executor compatibility error (" .. tostring(identifyexecutor()) .. ")")
		LPH_CRASH()
	end

	local n2 = 0

	tbl = {
		_d640118d62de = 1659246793,
		_cb81bf43a480 = 112114,
		_58f4cebb0a77 = 57035,
		["ວभ\u{CFD}၃ຏဈ៳"] = game:GetService("TeleportService"),
		_2f6ce86f48cb = "KCFh50RMC0ryQ",
		_57ba0f5e430c = game:GetService("HapticService"),
		_f3db828da66c = "76rI9iwskVm",
		_f5b8c77ec0c2 = "GehSYK",
		_fed102e9ea4d = 79376,
		_8d505a802eef = 3657875513,
		_4585803808b8 = "drzLi5K",
		_145d5d7a8e95 = false,
		_59d939d5b29c = 65124,
		_a483db5e4322 = false,
		_6f16b657c996 = 1717496229,
		_725959e0f3cc = 92741,
		_3bad2d1e370d = true,
		_85b8d85b47f6 = 26748,
		_089f3d78372e = true,
		_0a87baea9b33 = 118375,
		_bb4243e4f325 = 899553811,
		_9269e561fbe1 = game:GetService("MemStorageService"),
		_21a136671e07 = 392880736,
		_83a5d22ffe5e = "h8HjSch4ibi",
		_d48fe32d532a = "" .. math.random(800, 999),
		_ac527a7bf3a7 = 3604519398,
		_8d88a0f5f62d = "wR9nUL7tZcy",
		_f92b8ff2fb92 = 3979047717,
	}

	tbl._bc4751ef3bbc = "_037cb4a1b112" .. tostring(tbl)
	tbl._5a8623aaefdd = {}
	getfenv()[7034135] = 0
	n = 1115
	tbl["ວभ\u{CFD}၃ຏဈ៳"]:SetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}", "")
	tbl["ວभ\u{CFD}၃ຏဈ៳"]:SetTeleportSetting("ෑॾീ\u{E63}ॻ\u{BE0}़ಶ", getgenv().SCRIPT_KEY)

	if tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("ෑॾീ\u{E63}ॻ\u{BE0}़ಶ") ~= getgenv().SCRIPT_KEY then
		LPH_CRASH()
	end

	heartbeat = game:GetService("RunService").Heartbeat
	flag2 = true
	tbl2 = {}
	tbl3 = {}

	fn2 = function(arg, arg2, arg3, arg4)
		if arg4 ~= nil and arg4 == tbl2 then
			return tbl3
		end
		local flag4 = type(arg3) ~= "number"

		if not flag4 then
			local v7 = tostring
			flag4 = tostring(arg3) ~= v7(889216)
		end

		if flag4 then
			LPH_CRASH()
		end

		if not ({ [arg3] = true })[889216] then
			LPH_CRASH()
		end

		if arg3 ~= 889216 then
			LPH_CRASH()
		end

		if arg3 - 889216 ~= 0 then
			LPH_CRASH()
		end

		if not rawequal(arg3, 889216) then
			LPH_CRASH()
		end

		if not (not arg ~= arg2 == true) or not (arg ~= arg2 == false) then
			return false
		end
		local flag5 = type(arg) == typeof(arg2) and typeof(arg) == type(arg2) and #tostring(arg) == #tostring(arg2) and rawequal(arg, arg2) and rawequal(arg2, arg) and not (tostring(arg) < tostring(arg2)) and not (tostring(arg) > tostring(arg2))

		if flag5 then
			local v7 = tostring
			flag5 = rawequal(tostring(arg), v7(arg2))
		end

		if not flag5 then
			return false
		end

		if arg == nil or arg2 == nil then
			if arg ~= arg2 then
				return false
			end
		end

		local tbl6 = { [arg] = true }
		if rawget(tbl6, arg2) ~= true then
			return false
		end
		rawset(tbl6, arg, nil)
		local flag6 = type(arg) == type(arg2) and (type(arg) == "number" or type(arg) == "string")

		if flag6 then
			flag6 = {}
			local flag7 = arg == arg2
			local flag8 = arg2 == arg
			local v7 = rawequal(arg, arg2)
			local v8 = rawequal(arg2, arg)
			local flag9 = not (arg ~= arg2)
			local flag10 = arg2 >= arg and arg2 <= arg
			local flag11 = arg2 == arg
			local flag12 = arg <= arg2
			local flag13 = arg2 >= arg
			local flag14 = not (arg ~= arg2)
			local flag15 = arg >= arg2 and arg <= arg2
			local flag16 = arg2 >= arg and arg2 <= arg
			local v9 = table.pack(rawequal(arg, arg2))
			flag6[1] = flag7
			flag6[2] = flag8
			flag6[3] = v7
			flag6[4] = v8
			flag6[5] = flag9
			flag6[6] = flag10
			flag6[7] = flag11
			flag6[8] = flag12
			flag6[9] = flag13
			flag6[10] = flag14
			flag6[11] = flag15
			flag6[12] = flag16

			do
				local values = table.pack(table.unpack(v9, 1, v9.n))
				table.move(values, 1, values.n, 13, flag6)
			end
		end

		if not flag6 then
			flag6 = {}
			local v7 = rawequal(arg, arg2)
			local v8 = rawequal(arg2, arg)
			local v9 = rawequal
			flag6[1] = arg == arg2
			flag6[2] = arg2 == arg
			flag6[3] = v7
			flag6[4] = v8
			flag6[5] = not (arg ~= arg2)
			flag6[6] = true
			flag6[7] = arg2 == arg
			flag6[8] = true
			flag6[9] = true
			flag6[10] = not (arg ~= arg2)
			flag6[11] = true
			flag6[12] = true

			do
				local values = table.pack(v9(arg, arg2))
				table.move(values, 1, values.n, 13, flag6)
			end
		end

		local flag7 = false

		setmetatable(flag6, {
			__newindex = function()
				flag7 = true
			end,
			__metatable = {},
		})

		local n3 = 0

		while true do
			n3 += 1

			if flag6[n3] ~= true then
				return false
			elseif n3 == 13 then
				break
			end
		end

		flag6.ab5Yu4iKd736Uxr8 = true
		if not flag7 then
			return false
		end

		if arg ~= nil and arg2 ~= nil then
			local tbl7 = { [arg2] = arg }
			if not rawequal(({ [arg] = arg2 })[arg2], arg2) or not rawequal(tbl7[arg], arg) then
				return false
			end
		end

		if tostring(arg == arg2) ~= "true" then
			return false
		end

		if tostring(arg ~= arg2) ~= "false" then
			return false
		end

		if type(arg) == type(arg2) and ({ number = true, string = true })[type(arg)] == true then
			if not (arg >= arg2 and arg <= arg2 and arg2 >= arg and arg2 <= arg) then
				return false
			end
		end

		return true
	end

	fn3 = function(arg, arg2, arg3, arg4)
		if arg4 ~= nil and arg4 == tbl2 then
			return tbl3
		end
		local flag4 = type(arg3) ~= "number"

		if not flag4 then
			local v7 = tostring
			flag4 = tostring(arg3) ~= v7(300254)
		end

		if flag4 then
			LPH_CRASH()
		end

		if arg3 - (1 - 2 * 0) * (1 + ((3602539392 + 4274699556 + 722451804) % 4294967296 * 67108864 + (1420902148 + 2874065148 + 0) % 4294967296) / 4503599627370496) * 2 ^ ((7074649046 + 3152691200 + 2657562683) % 4294967296 - 1023) ~= 0 then
			LPH_CRASH()
		end

		if not ({ [arg3] = true })[300254] == true then
			LPH_CRASH()
		end

		if not rawequal(arg3, 300254) then
			LPH_CRASH()
		end

		if arg3 ~= 300254 == true then
			LPH_CRASH()
		end

		n += 26

		if flag2 then
			tbl["ວभ\u{CFD}၃ຏဈ៳"]:SetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}", tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}") .. "lsi97W9b391akCAjpXpjloXtskLOPOOML")
		end

		local kind = type(arg)
		local kind2 = type(arg2)
		if kind ~= typeof(arg2) or typeof(arg) ~= kind2 then
			return false
		end
		local str = tostring(arg)
		local str2 = tostring(arg2)
		if #str ~= #str2 or str < str2 or str > str2 then
			return false
		end

		if not (rawequal(arg, arg2) and rawequal(arg2, arg) and rawequal(str, str2)) then
			return false
		end
		local flag5 = type(arg) == type(arg2) and (type(arg) == "number" or type(arg) == "string")

		if flag5 then
			flag5 = {}
			local flag6 = arg == arg2
			local flag7 = arg2 == arg
			local v7 = rawequal(arg, arg2)
			local v8 = rawequal(arg2, arg)
			local flag8 = not (arg ~= arg2)
			local flag9 = arg2 >= arg and arg2 <= arg
			local flag10 = arg2 == arg
			local flag11 = arg <= arg2
			local flag12 = arg2 >= arg
			local flag13 = not (arg ~= arg2)
			local flag14 = arg >= arg2 and arg <= arg2
			flag5[1] = flag6
			flag5[2] = flag7
			flag5[3] = v7
			flag5[4] = v8
			flag5[5] = flag8
			flag5[6] = flag9
			flag5[7] = flag10
			flag5[8] = flag11
			flag5[9] = flag12
			flag5[10] = flag13
			flag5[11] = flag14
		end

		if not flag5 then
			flag5 = {}
			local v7 = rawequal(arg, arg2)
			local v8 = rawequal(arg2, arg)
			flag5[1] = arg == arg2
			flag5[2] = arg2 == arg
			flag5[3] = v7
			flag5[4] = v8
			flag5[5] = not (arg ~= arg2)
			flag5[6] = true
			flag5[7] = arg2 == arg
			flag5[8] = true
			flag5[9] = true
			flag5[10] = not (arg ~= arg2)
			flag5[11] = true
		end

		local flag6 = false

		setmetatable(flag5, {
			__newindex = function()
				flag6 = true
			end,
			__metatable = {},
		})

		local n3 = 1

		while n3 <= #flag5 do
			if flag5[n3] ~= true then
				return false
			end
			n3 += 1
		end

		flag5.nzpTHwQHRwpDIj2m = true
		if not flag6 or n3 - 1 ~= 11 then
			return false
		end

		if arg == nil or arg2 == nil then
			if arg ~= arg2 then
				return false
			end
		end

		local tbl6 = { [arg] = true }
		if rawget(tbl6, arg2) ~= true then
			return false
		end
		rawset(tbl6, arg, nil)
		if arg == arg2 ~= true or arg ~= arg2 ~= false then
			return false
		end

		if arg ~= nil and arg2 ~= nil then
			local tbl7 = { [arg2] = arg }
			if not rawequal(({ [arg] = arg2 })[arg2], arg2) or not rawequal(tbl7[arg], arg) then
				return false
			end
		end

		if not (not arg ~= arg2 == true) then
			return false
		end

		if not (arg ~= arg2 == false) then
			return false
		end

		if type(arg) == type(arg2) and ({ number = true, string = true })[type(arg)] == true then
			if not (arg >= arg2 and arg <= arg2 and arg2 >= arg and arg2 <= arg) then
				return false
			end
		end

		return true
	end

	spawn(function()
		local now = os.clock()
		local now2 = os.clock()
		task.wait(0.1)
		local flag4 = now == now2 and now2 == os.clock()

		if flag4 then
			local v7 = fn2
			local v8 = table.pack(16383)
			flag4 = v7(now, now2, (1 - 2 * (3980302816 + 314664480 + 0) % 4294967296) * (1 + ((4203144485 + 3532135084 + bit32.band(65535 * v8[1] + bit32.lshift(bit32.band(4248175305 + 32767 * v8[1], 65535), 16), 4294967295) % 4294967296 + 3002138670) % 4294967296 * 67108864 + (6660764068 + 494493143 + 1434677381) % 4294967296) / 4503599627370496) * 2 ^ ((6960541180 + 1330250626 + 299143828) % 4294967296 - 1023))
		end

		if flag4 then
			LPH_CRASH()
		end

		local now3 = tick()
		local now4 = tick()
		task.wait(0.1)

		if now3 == now4 and now4 == tick() and fn2(now3, now4, 889216) then
			LPH_CRASH()
		end
	end)

	if debug.info(1, "l") ~= v6 or debug.info(1, "l") ~= v then
		LPH_CRASH()
	end

	local v7 = debug.info(1, "l")

	local function fn11()
		local byte = string.byte
		local char = string.char
		local sub = string.sub
		local concat = table.concat
		local huge = math.huge

		local function fn12()
			error("J", 0)
		end

		local function fn13(arg)
			if arg >= 48 and arg <= 57 then
				return arg - 48
			end

			if arg >= 65 and arg <= 70 then
				return arg - 55
			end

			if arg >= 97 and arg <= 102 then
				return arg - 87
			end
			fn12()
		end

		local function fn14(arg, arg2, arg3)
			if arg2 + 3 > arg3 then
				fn12()
			end

			return fn13(byte(arg, arg2)) * 4096 + fn13(byte(arg, arg2 + 1)) * 256 + fn13(byte(arg, arg2 + 2)) * 16 + fn13(byte(arg, arg2 + 3)), arg2 + 4
		end

		local function fn15(arg)
			if arg < 128 then
				return char(arg)
			end

			if arg < 2048 then
				return char(192 + arg // 64, 128 + arg % 64)
			end

			if arg < 65536 then
				return char(224 + arg // 4096, 128 + arg // 64 % 64, 128 + arg % 64)
			end
			return char(240 + arg // 262144, 128 + arg // 4096 % 64, 128 + arg // 64 % 64, 128 + arg % 64)
		end

		local tbl6 = {
			[34] = "\"",
			[47] = "/",
			[92] = "\\",
			[98] = "\8",
			[102] = "\12",
			[110] = "\n",
			[114] = "\r",
			[116] = "\t",
		}

		local function fn16(arg, arg2, arg3)
			local tbl7 = {}
			local n3 = arg2 + 1
			local n4 = 0
			local v8 = n3

			while n3 <= arg3 do
				local v9 = byte(arg, n3)

				if v9 == 34 then
					local v10

					if v8 < n3 then
						local n5 = n4 + 1
						tbl7[n5] = sub(arg, v8, n3 - 1)
						v10 = n5
					else
						v10 = n4
					end

					if v10 == 0 then
						return "", n3 + 1
					end

					if v10 == 1 then
						return tbl7[1], n3 + 1
					end
					return concat(tbl7), n3 + 1
				end

				if v9 == 92 then
					if v8 < n3 then
						n4 += 1
						tbl7[n4] = sub(arg, v8, n3 - 1)
					end

					n3 += 1

					if n3 > arg3 then
						fn12()
					end

					local v10 = byte(arg, n3)
					local v11 = tbl6[v10]

					if v11 then
						n3 += 1
					elseif v10 == 117 then
						local n5
						n5, n3 = fn14(arg, n3 + 1, arg3)

						if n5 >= 55296 and n5 <= 56319 and n3 + 5 <= arg3 and byte(arg, n3) == 92 and byte(arg, n3 + 1) == 117 then
							local v12, v13 = fn14(arg, n3 + 2, arg3)

							if v12 >= 56320 and v12 <= 57343 then
								n5 = 65536 + (n5 - 55296) * 1024 + v12 - 56320
								n3 = v13
							end
						end

						v11 = fn15(n5)
					else
						fn12()
					end

					n4 += 1
					tbl7[n4] = v11
					v8 = n3
				else
					if v9 < 32 then
						fn12()
					end

					n3 += 1
				end
			end

			fn12()
		end

		local function fn17(arg, arg2, arg3)
			local n3

			if byte(arg, arg2) ~= 45 then
				n3 = arg2
			else
				n3 = arg2 + 1
			end

			if arg3 < n3 then
				fn12()
			end

			local v8 = byte(arg, n3)

			if v8 == 48 then
				n3 += 1
				local v9 = byte(arg, n3)

				if v9 and v9 >= 48 and v9 <= 57 then
					fn12()
				end
			elseif v8 >= 49 and v8 <= 57 then
				while true do
					n3 += 1
					local v9 = byte(arg, n3)
					if not (not v9 or v9 < 48 or v9 > 57) then
						continue
					end
					break
				end
			else
				fn12()
			end

			local num = tonumber(sub(arg, arg2, n3 - 1))

			if not num or num ~= num or num <= -huge or num >= huge then
				fn12()
			end

			return num, n3
		end

		local fn18 = nil

		local function fn19(arg, arg2, arg3, arg4)
			local tbl7 = {}
			local n3 = arg2 + 1
			local n4 = 0
			if byte(arg, n3) == 93 then
				return tbl7, n3 + 1
			end
			local v8

			while true do
				local v9
				v9, v8 = fn18(arg, n3, arg3, arg4)
				n4 += 1
				tbl7[n4] = v9
				local v10 = byte(arg, v8)

				if v10 == 93 then
					break
				else
					if v10 ~= 44 then
						fn12()
					end

					n3 = v8 + 1
				end
			end

			return tbl7, v8 + 1
		end

		local function fn20(arg, arg2, arg3, arg4)
			local tbl7 = {}
			local n3 = arg2 + 1
			if byte(arg, n3) == 125 then
				return tbl7, n3 + 1
			end
			local v8

			while true do
				if byte(arg, n3) ~= 34 then
					fn12()
				end

				local v9, v10 = fn16(arg, n3, arg3)

				if byte(arg, v10) ~= 58 then
					fn12()
				end

				local v11
				v11, v8 = fn18(arg, v10 + 1, arg3, arg4)
				tbl7[v9] = v11
				local v12 = byte(arg, v8)

				if v12 ~= 125 then
					if v12 ~= 44 then
						fn12()
					end

					n3 = v8 + 1
					continue
				end

				break
			end

			return tbl7, v8 + 1
		end

		fn18 = function(arg, arg2, arg3, arg4)
			if arg4 > 8 or arg2 > arg3 then
				fn12()
			end

			local v8 = byte(arg, arg2)
			if v8 == 34 then
				return fn16(arg, arg2, arg3)
			end

			if v8 == 123 then
				return fn20(arg, arg2, arg3, arg4 + 1)
			end

			if v8 == 91 then
				return fn19(arg, arg2, arg3, arg4 + 1)
			end

			if v8 == 45 or v8 >= 48 and v8 <= 57 then
				return fn17(arg, arg2, arg3)
			end

			if v8 == 116 and sub(arg, arg2, arg2 + 3) == "true" then
				return true, arg2 + 4
			end

			if v8 == 102 and sub(arg, arg2, arg2 + 4) == "false" then
				return false, arg2 + 5
			end

			if v8 == 110 and sub(arg, arg2, arg2 + 3) == "null" then
				return nil, arg2 + 4
			end
			fn12()
		end

		local function fn21(arg)
			if type(arg) ~= "string" or #arg == 0 or #arg > 262144 then
				fn12()
			end

			local n3 = #arg
			local v8, v9 = fn18(arg, 1, n3, 0)

			if v9 <= n3 then
				fn12()
			end

			return v8
		end

		local tbl7 = { [8] = "\\b", [9] = "\\t", [10] = "\\n", [12] = "\\f", [13] = "\\r", [34] = "\\\"", [92] = "\\\\" }

		return fn21, function(arg)
			if type(arg) ~= "string" then
				fn12()
			end

			local tbl8 = { "\"" }
			local n3 = 1
			local n4 = 1

			for i = 1, #arg do
				local v8 = byte(arg, i)
				local v9 = tbl7[v8]

				if v9 or v8 < 32 then
					if n3 < i then
						n4 += 1
						tbl8[n4] = sub(arg, n3, i - 1)
					end

					n4 += 1
					tbl8[n4] = v9 or "\\u00" .. sub("0123456789ABCDEF", v8 // 16 + 1, v8 // 16 + 1) .. sub("0123456789ABCDEF", v8 % 16 + 1, v8 % 16 + 1)
					n3 = i + 1
				end
			end

			if n3 <= #arg then
				n4 += 1
				tbl8[n4] = sub(arg, n3)
			end

			tbl8[n4 + 1] = "\""
			return concat(tbl8)
		end
	end

	v3, v4 = fn11()
	n += 54

	if table.concat({ "ihynMV9MD", "0f6cl", "jq", "WEe9ukI6pkIMNFBCDe134l" }) ~= "ihynMV9MD0f6cljqWEe9ukI6pkIMNFBCDe134l" or table.concat({ "ihynMV9MD", "0f6cl", "jq", "WEe9ukI6pkIMNFBCDe134l" }) ~= "ihynMV9MD0f6cljqWEe9ukI6pkIMNFBCDe134l" then
		LPH_CRASH()
	end

	local str = "g\230\tj\133\174g\187r\243n<:\245O\165\127R\14Q\140h\5\155\171ك\31\25\205\224["
	n += 30

	local function fn12(arg, arg2)
		return function(arg3, arg4)
			local n3 = 0
			local n4 = 1

			while arg3 ~= 0 and arg4 ~= 0 do
				local n5 = arg3 % arg2
				local n6 = arg4 % arg2
				n3 += arg[n5][n6] * n4
				arg3 = (arg3 - n5) / arg2
				arg4 = (arg4 - n6) / arg2
				n4 *= arg2
			end

			return n3 + (arg3 + arg4) * n4
		end
	end

	local function fn13(arg)
		local v8 = fn12(arg, 2)

		return fn12(setmetatable({}, { __index = function(arg2, arg3)
			local obj = setmetatable({}, { __index = function(arg4, arg5)
				local v9 = v8(arg3, arg5)
				arg4[arg5] = v9
				return v9
			end })

			arg2[arg3] = obj
			return obj
		end }), 2 ^ (arg.n or 1))
	end

	v5 = fn13({ [0] = { [0] = 0, 1 }, { [0] = 1, 0 }, n = 4 })
	fn4 = nil

	fn4 = function(arg, arg2, arg3, ...)
		if arg2 then
			local v8 = v5(arg % 4294967296, arg2 % 4294967296)
			local v9

			if arg3 then
				v9 = fn4(v8, arg3, ...)
			else
				v9 = v8
			end

			return v9
		end

		if arg then
			return arg % 4294967296
		end
		return 0
	end

	fn5 = function(arg, arg2)
		if arg2 then
			local n3 = arg % 4294967296
			local n4 = arg2 % 4294967296
			return (n3 + n4 - v5(n3, n4)) / 2
		end

		if arg then
			return arg % 4294967296
		end
		return 4294967295
	end

	local function fn14(arg, arg2)
		local v8, v9, v10, v11 = string.byte(arg, arg2 + 1, arg2 + 4)
		return (v8 or 0) + (v9 or 0) * 256 + (v10 or 0) * 65536 + (v11 or 0) * 16777216
	end

	local function fn15(arg)
		local rshift = bit32.rshift
		return string.char(arg % 256, rshift(arg, 8) % 256, rshift(arg, 16) % 256, rshift(arg, 24) % 256)
	end

	local function fn16(arg, arg2, arg3)
		local lrotate = bit32.lrotate
		local v8 = arg[1]
		local v9 = arg[2]
		local v10 = arg[3]
		local v11 = arg[4]
		local n3 = arg[5]
		local n4 = arg[6]
		local n5 = arg[7]
		local n6 = arg[8]
		local n7 = arg2 % 4294967296
		local v12 = arg3[1]
		local v13 = arg3[2]
		local v14 = arg3[3]
		local n8 = 1634760805
		local n9 = 857760878
		local n10 = 2036477234
		local n11 = 1797285236

		for i = 1, 10 do
			local n12 = (n8 + v8) % 4294967296
			local v15 = lrotate(v5(n7, n12), 16)
			local n13 = (n3 + v15) % 4294967296
			local v16 = lrotate(v5(v8, n13), 12)
			local n14 = (n12 + v16) % 4294967296
			local v17 = lrotate(v5(v15, n14), 8)
			local n15 = (n13 + v17) % 4294967296
			local v18 = lrotate(v5(v16, n15), 7)
			local n16 = (n9 + v9) % 4294967296
			local v19 = lrotate(v5(v12, n16), 16)
			local n17 = (n4 + v19) % 4294967296
			local v20 = lrotate(v5(v9, n17), 12)
			local n18 = (n16 + v20) % 4294967296
			local v21 = lrotate(v5(v19, n18), 8)
			local n19 = (n17 + v21) % 4294967296
			local v22 = lrotate(v5(v20, n19), 7)
			local n20 = (n10 + v10) % 4294967296
			local v23 = lrotate(v5(v13, n20), 16)
			local n21 = (n5 + v23) % 4294967296
			local v24 = lrotate(v5(v10, n21), 12)
			local n22 = (n20 + v24) % 4294967296
			local v25 = lrotate(v5(v23, n22), 8)
			local n23 = (n21 + v25) % 4294967296
			local v26 = lrotate(v5(v24, n23), 7)
			local n24 = (n11 + v11) % 4294967296
			local v27 = lrotate(v5(v14, n24), 16)
			local n25 = (n6 + v27) % 4294967296
			local v28 = lrotate(v5(v11, n25), 12)
			local n26 = (n24 + v28) % 4294967296
			local v29 = lrotate(v5(v27, n26), 8)
			local n27 = (n25 + v29) % 4294967296
			local v30 = lrotate(v5(v28, n27), 7)
			local n28 = (n14 + v22) % 4294967296
			local v31 = lrotate(v5(v29, n28), 16)
			local n29 = (n23 + v31) % 4294967296
			local v32 = lrotate(v5(v22, n29), 12)
			n8 = (n28 + v32) % 4294967296
			v14 = lrotate(v5(v31, n8), 8)
			n5 = (n29 + v14) % 4294967296
			v9 = lrotate(v5(v32, n5), 7)
			local n30 = (n18 + v26) % 4294967296
			local v33 = lrotate(v5(v17, n30), 16)
			local n31 = (n27 + v33) % 4294967296
			local v34 = lrotate(v5(v26, n31), 12)
			n9 = (n30 + v34) % 4294967296
			n7 = lrotate(v5(v33, n9), 8)
			n6 = (n31 + n7) % 4294967296
			v10 = lrotate(v5(v34, n6), 7)
			local n32 = (n22 + v30) % 4294967296
			local v35 = lrotate(v5(v21, n32), 16)
			local n33 = (n15 + v35) % 4294967296
			local v36 = lrotate(v5(v30, n33), 12)
			n10 = (n32 + v36) % 4294967296
			v12 = lrotate(v5(v35, n10), 8)
			n3 = (n33 + v12) % 4294967296
			v11 = lrotate(v5(v36, n3), 7)
			local n34 = (n26 + v18) % 4294967296
			local v37 = lrotate(v5(v25, n34), 16)
			local n35 = (n19 + v37) % 4294967296
			local v38 = lrotate(v5(v18, n35), 12)
			n11 = (n34 + v38) % 4294967296
			v13 = lrotate(v5(v37, n11), 8)
			n4 = (n35 + v13) % 4294967296
			v8 = lrotate(v5(v38, n4), 7)
		end

		local n12 = (v8 + arg[1]) % 4294967296
		local n13 = (v9 + arg[2]) % 4294967296
		local n14 = (v10 + arg[3]) % 4294967296
		local n15 = (v11 + arg[4]) % 4294967296
		local n16 = (n3 + arg[5]) % 4294967296
		local n17 = (n4 + arg[6]) % 4294967296
		local n18 = (n5 + arg[7]) % 4294967296
		local n19 = (n6 + arg[8]) % 4294967296
		local n20 = (n7 + arg2) % 4294967296
		local n21 = (v12 + arg3[1]) % 4294967296
		local n22 = (v13 + arg3[2]) % 4294967296
		local n23 = (v14 + arg3[3]) % 4294967296
		return fn15((n8 + 1634760805) % 4294967296) .. fn15((n9 + 857760878) % 4294967296) .. fn15((n10 + 2036477234) % 4294967296) .. fn15((n11 + 1797285236) % 4294967296) .. fn15(n12) .. fn15(n13) .. fn15(n14) .. fn15(n15) .. fn15(n16) .. fn15(n17) .. fn15(n18) .. fn15(n19) .. fn15(n20) .. fn15(n21) .. fn15(n22) .. fn15(n23)
	end

	fn6 = function(arg, arg2, arg3, arg4)
		if #arg2 ~= 32 then
			error("Invalid key length")
		end

		if #arg3 ~= 12 then
			error("Invalid nonce length")
		end

		local tbl6 = {}
		local v8 = fn14(arg2, 0)
		local v9 = fn14(arg2, 4)
		local v10 = fn14(arg2, 8)
		local v11 = fn14(arg2, 12)
		local v12 = fn14(arg2, 16)
		local v13 = fn14(arg2, 20)
		local v14 = fn14(arg2, 24)
		tbl6[1] = v8
		tbl6[2] = v9
		tbl6[3] = v10
		tbl6[4] = v11
		tbl6[5] = v12
		tbl6[6] = v13
		tbl6[7] = v14

		do
			local values = table.pack(fn14(arg2, 28))
			table.move(values, 1, values.n, 8, tbl6)
		end

		local tbl7 = {}
		local v15 = fn14(arg3, 0)
		local v16 = fn14(arg3, 4)
		tbl7[1] = v15
		tbl7[2] = v16

		do
			local values = table.pack(fn14(arg3, 8))
			table.move(values, 1, values.n, 3, tbl7)
		end

		local tbl8 = {}
		local n3 = #arg
		arg4 = arg4 or 1
		local n4 = 0

		for i = 1, n3, 64 do
			local v17 = fn16(tbl6, arg4, tbl7)
			local n5 = i + 63

			if n5 > n3 then
				n5 = n3
			end

			local n6 = 1

			while i + 3 <= n5 do
				local v18, v19, v20, v21 = string.byte(arg, i, i + 3)
				local v22, v23, v24, v25 = string.byte(v17, n6, n6 + 3)
				n4 += 1
				tbl8[n4] = string.char(v5(v18, v22), v5(v19, v23), v5(v20, v24), v5(v21, v25))
				i += 4
				n6 += 4
			end

			if i <= n5 then
				local v18, v19, v20 = string.byte(arg, i, n5)
				local v21, v22, v23 = string.byte(v17, n6, n6 + n5 - i)
				local n7 = n5 - i + 1
				n4 += 1
				tbl8[n4] = string.sub(string.char(v5(v18, v21), v19 and v5(v19, v22) or 0, v20 and v5(v20, v23) or 0, 0), 1, n7)
			end

			arg4 += 1
		end

		return table.concat(tbl8)
	end

	fn7 = function()return{};end

	local function fn17(arg, arg2, arg3, arg4, arg5)
		local lrotate = bit32.lrotate
		local n3, n4, n5, n6, n7, n8, n9, n10

		if arg == str then
			n3 = 1013904242
			n4 = 1359893119
			n5 = 2600822924
			n6 = 1541459225
			n7 = 3144134277
			n8 = 1779033703
			n9 = 528734635
			n10 = 2773480762
		else
			n8 = fn14(arg, 0)
			n7 = fn14(arg, 4)
			n3 = fn14(arg, 8)
			n10 = fn14(arg, 12)
			n4 = fn14(arg, 16)
			n5 = fn14(arg, 20)
			n9 = fn14(arg, 24)
			n6 = fn14(arg, 28)
		end

		local n11 = arg3 % 4294967296
		local n12 = (arg3 - n11) * 2.3283064365386963e-10
		local v8 = fn14(arg2, 0)
		local v9 = fn14(arg2, 4)
		local v10 = fn14(arg2, 8)
		local v11 = fn14(arg2, 12)
		local v12 = fn14(arg2, 16)
		local v13 = fn14(arg2, 20)
		local v14 = fn14(arg2, 24)
		local v15 = fn14(arg2, 28)
		local v16 = fn14(arg2, 32)
		local v17 = fn14(arg2, 36)
		local v18 = fn14(arg2, 40)
		local v19 = fn14(arg2, 44)
		local v20 = fn14(arg2, 48)
		local v21 = fn14(arg2, 52)
		local v22 = fn14(arg2, 56)
		local v23 = fn14(arg2, 60)
		local n13 = 1779033703
		local n14 = 3144134277
		local n15 = 1013904242
		local n16 = 2773480762

		for i = 1, 7 do
			local n17 = (n8 + n4 + v8) % 4294967296
			local v24 = lrotate(v5(n11, n17), 16)
			local n18 = (n13 + v24) % 4294967296
			local v25 = lrotate(v5(n4, n18), 20)
			local n19 = (n17 + v25 + v9) % 4294967296
			local v26 = lrotate(v5(v24, n19), 24)
			local n20 = (n18 + v26) % 4294967296
			local v27 = lrotate(v5(v25, n20), 25)
			local n21 = (n7 + n5 + v10) % 4294967296
			local v28 = lrotate(v5(n12, n21), 16)
			local n22 = (n14 + v28) % 4294967296
			local v29 = lrotate(v5(n5, n22), 20)
			local n23 = (n21 + v29 + v11) % 4294967296
			local v30 = lrotate(v5(v28, n23), 24)
			local n24 = (n22 + v30) % 4294967296
			local v31 = lrotate(v5(v29, n24), 25)
			local n25 = (n3 + n9 + v12) % 4294967296
			local v32 = lrotate(v5(arg4, n25), 16)
			local n26 = (n15 + v32) % 4294967296
			local v33 = lrotate(v5(n9, n26), 20)
			local n27 = (n25 + v33 + v13) % 4294967296
			local v34 = lrotate(v5(v32, n27), 24)
			local n28 = (n26 + v34) % 4294967296
			local v35 = lrotate(v5(v33, n28), 25)
			local n29 = (n10 + n6 + v14) % 4294967296
			local v36 = lrotate(v5(arg5, n29), 16)
			local n30 = (n16 + v36) % 4294967296
			local v37 = lrotate(v5(n6, n30), 20)
			local n31 = (n29 + v37 + v15) % 4294967296
			local v38 = lrotate(v5(v36, n31), 24)
			local n32 = (n30 + v38) % 4294967296
			local v39 = lrotate(v5(v37, n32), 25)
			local n33 = (n19 + v31 + v16) % 4294967296
			local v40 = lrotate(v5(v38, n33), 16)
			local n34 = (n28 + v40) % 4294967296
			local v41 = lrotate(v5(v31, n34), 20)
			n8 = (n33 + v41 + v17) % 4294967296
			arg5 = lrotate(v5(v40, n8), 24)
			n15 = (n34 + arg5) % 4294967296
			n5 = lrotate(v5(v41, n15), 25)
			local n35 = (n23 + v35 + v18) % 4294967296
			local v42 = lrotate(v5(v26, n35), 16)
			local n36 = (n32 + v42) % 4294967296
			local v43 = lrotate(v5(v35, n36), 20)
			n7 = (n35 + v43 + v19) % 4294967296
			n11 = lrotate(v5(v42, n7), 24)
			n16 = (n36 + n11) % 4294967296
			n9 = lrotate(v5(v43, n16), 25)
			local n37 = (n27 + v39 + v20) % 4294967296
			local v44 = lrotate(v5(v30, n37), 16)
			local n38 = (n20 + v44) % 4294967296
			local v45 = lrotate(v5(v39, n38), 20)
			n3 = (n37 + v45 + v21) % 4294967296
			n12 = lrotate(v5(v44, n3), 24)
			n13 = (n38 + n12) % 4294967296
			n6 = lrotate(v5(v45, n13), 25)
			local n39 = (n31 + v27 + v22) % 4294967296
			local v46 = lrotate(v5(v34, n39), 16)
			local n40 = (n24 + v46) % 4294967296
			local v47 = lrotate(v5(v27, n40), 20)
			n10 = (n39 + v47 + v23) % 4294967296
			arg4 = lrotate(v5(v46, n10), 24)
			n14 = (n40 + arg4) % 4294967296
			n4 = lrotate(v5(v47, n14), 25)

			if i ~= 7 then
				local v48 = v8
				v8 = v10
				v10 = v11
				v11 = v18
				v18 = v20
				v20 = v17
				v17 = v19
				v19 = v13
				v13 = v48
				local v49 = v9
				v9 = v14
				v14 = v12
				v12 = v15
				v15 = v21
				v21 = v22
				v22 = v23
				v23 = v16
				v16 = v49
			end
		end

		return fn15(v5(n8, n13)) .. fn15(v5(n7, n14)) .. fn15(v5(n3, n15)) .. fn15(v5(n10, n16)) .. fn15(v5(n4, n11)) .. fn15(v5(n5, n12)) .. fn15(v5(n9, arg4)) .. fn15(v5(n6, arg5))
	end

	fn8 = function(arg)
		local n3 = #arg
		if n3 <= 64 then
			return fn17("g\230\tj\133\174g\187r\243n<:\245O\165\127R\14Q\140h\5\155\171ك\31\25\205\224[", arg, 0, n3, 11)
		end
		local n4 = 1
		local n5 = 0
		local str2 = "g\230\tj\133\174g\187r\243n<:\245O\165\127R\14Q\140h\5\155\171ك\31\25\205\224["
		local n6 = 0
		local n7 = 0
		local tbl6 = nil

		for i = 0, n3 - 64 - 1, 64 do
			local v8 = fn17(str2, string.sub(arg, i + 1, i + 64), n6, 64, n4 + n5)
			n7 += 1

			if n7 == 15 then
				n4 = 0
				n5 = 2
				str2 = v8
			else
				n4 = 0

				if n7 ~= 16 then
					str2 = v8
				else
					local n8 = n6 + 1
					tbl6 = tbl6 or {}

					while n8 % 2 == 0 do
						v8 = fn17("g\230\tj\133\174g\187r\243n<:\245O\165\127R\14Q\140h\5\155\171ك\31\25\205\224[", table.remove(tbl6) .. v8, 0, 64, 4)
						n8 = n8 / 2 // 1
					end

					table.insert(tbl6, v8)
					n6 += 1
					n4 = 1
					n5 = 0
					str2 = "g\230\tj\133\174g\187r\243n<:\245O\165\127R\14Q\140h\5\155\171ك\31\25\205\224["
					n7 = 0
				end
			end
		end

		local n8 = (n3 - 1) % 64 + 1
		local str3 = string.sub(arg, -n8)
		local n9

		if n6 > 0 then
			local v8 = fn17(str2, str3, n6, n8, n4 + 2)

			for i = #tbl6, 2, -1 do
				v8 = fn17("g\230\tj\133\174g\187r\243n<:\245O\165\127R\14Q\140h\5\155\171ك\31\25\205\224[", tbl6[i] .. v8, 0, 64, 4)
			end

			str3 = tbl6[1] .. v8
			n9 = 12
			str2 = "g\230\tj\133\174g\187r\243n<:\245O\165\127R\14Q\140h\5\155\171ك\31\25\205\224["
			n8 = 64
		else
			n9 = n4 + 10
		end

		return fn17(str2, str3, 0, n8, n9)
	end

	if ypcall ~= pcall then
		LPH_CRASH()
	end

	if pcall(request, "hi") then
		LPH_CRASH()
	end

	local function fn18(...)
		if not pcall(tostring, select(31, ...)) then
			LPH_CRASH()
		end
	end

	fn18(pcall(function()
		return 116708, 174339, 266144, 81577, 270639, 168209, 485845, 488574, 461281, 633491, 555603, 608858, 429725, 551953, 61915, 91874, 514438, 467721, 86544, 14982, 747424, 821425, 954682, 192707, 348887, 518723, 707894, 138558, 484050, nil
	end))

	local function fn19(...)
		if not pcall(type, select(31, ...)) then
			LPH_CRASH()
		end
	end

	fn19(pcall(function()
		return 755300, 441397, 5974, 602034, 347997, 784481, 536411, 127584, 311820, 745875, 637953, 896932, 578098, 400660, 389467, 953433, 887373, 63768, 681530, 20827, 416980, 597886, 458946, 606119, 469428, 816004, 845420, 261179, 334461, nil
	end))

	local request_ = syn and syn.request or request or http_request
	local n3 = 0
	local n4 = 0

	pcall(function()
		local function fn20(arg)
			tostring(arg[1])
		end

		fn20(setmetatable({}, { __index = function()
			local fn21 = nil

			fn21 = function()
				n3 += 1
				return fn21()
			end

			fn21()
		end }))
	end)

	pcall(function()
		request_(setmetatable({}, { __index = function()
			local fn20 = nil

			fn20 = function()
				n4 += 1
				return fn20()
			end

			fn20()
		end }))
	end)

	local n5 = n4 - n3

	if n3 + n4 < 20000 and not identifyexecutor():match("^Hydrogen") and not identifyexecutor():match("^Xeno") then
		fn("J2_069")
		LPH_CRASH()
	end

	if n5 ~= 0 and not identifyexecutor():match("^Hydrogen") and not identifyexecutor():match("^Xeno") then
		if not (identifyexecutor():match("^Wave") and n5 == 200) then
			fn("J2_016")
			LPH_CRASH()
		end
	end

	local flag4 = false

	pcall(function()
		flag4 = true
	end)

	while not flag4 do
	end

	local n6 = n2 + 1

	if n6 == 0 then
		fn("J2_158")
		LPH_CRASH()
	end

	task.spawn(function()
		while task.wait() do
			if not (n6 < 0) then
				continue
			end
			break
		end
	end)

	local ok, result = pcall(function()
		if newcclosure then
			task.spawn(newcclosure(function()
				n += 10
				tbl["ວभ\u{CFD}၃ຏဈ៳"]:SetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}", tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}") .. "BdGq5fF")
			end))
		end
	end)

	if not ok and (type(result) == "string" and result:find("expected lua") or result:find("than 0")) then
		fn("J2_220")
		LPH_CRASH()
	end

	task.spawn(function()
		for i = 1, 100 do
			pcall(setmetatable(setmetatable({}, { __call = function()
				n += 1
				tbl["ວभ\u{CFD}၃ຏဈ៳"]:SetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}", tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}") .. "5NH8cOo")

				error(setmetatable({}, { __tostring = function()
					fn("J2_091")
					LPH_CRASH()
				end }))
			end }), { __tostring = function()
				fn("J2_104")
				LPH_CRASH()
			end }))
		end
	end)

	local tbl6 = {
		__tostring = print,
		__call = function()
			n += 17
			tbl["ວभ\u{CFD}၃ຏဈ៳"]:SetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}", tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}") .. "8ZFOBL79S8jMTpC4Lvvd0oWK9sKruSjtmBJAzei1zQs7rtIHEmkJFXV")

			if debug and debug.getconstants then
				if #debug.getconstants(3) < 5 and #debug.getconstants(3) ~= 0 then
					fn("J2_092")
					LPH_CRASH()
				end
			end
		end,
	}

	pcall(setmetatable(setmetatable({}, {}), tbl6))
	n += 36
	tbl["ວभ\u{CFD}၃ຏဈ៳"]:SetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}", tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}") .. "L5EeWCHYQwXk")
	n += 11
	tbl["ວभ\u{CFD}၃ຏဈ៳"]:SetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}", tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}") .. "ZChkXFaMkna0za")
	n += 31
	tbl["ວभ\u{CFD}၃ຏဈ៳"]:SetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}", tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}") .. "FaC0h8dkaeh6c")

	if #tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}") + 1203 ~= n then
		fn("J2_100B")
		LPH_CRASH()
	end

	if #tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}") ~= 101 then
		fn("J2_118")
		LPH_CRASH()
	end

	if n ~= 1304 then
		fn("J2_100D")
		LPH_CRASH()
	end

	fn9 = function(arg, arg2)
		if arg2 ~= 688260 then
			fn("J2_206")
			LPH_CRASH()
		end

		if not rawequal(arg2, 688260) then
			fn("J2_183")
			LPH_CRASH()
		end

		local flag5 = type(arg2) ~= "number"

		if not flag5 then
			local v8 = tostring
			flag5 = tostring(arg2) ~= v8(688260)
		end

		if flag5 then
			fn("J2_146")
			LPH_CRASH()
		end

		if arg2 - 688260 ~= 0 then
			fn("J2_167")
			LPH_CRASH()
		end

		if not ({ [arg2] = true })[688260] then
			fn("J2_127")
			LPH_CRASH()
		end

		local str2 = tostring(arg)

		if str2 == "" then
			crash_client("oth-1")
		end

		local str3 = str2:gsub(("%s: "):format(type(arg)), "")

		if str3:sub(1, 2) == "0x" then
			str3 = str3:sub(3)
		end

		local n7 = 0

		for i = 1, #str3 do
			local str4 = str3:sub(i, i)
			local n8 = 0

			for i2 = 1, 16 do
				if ("0123456789abcdef"):sub(i2, i2) == str4 then
					n8 = i2 - 1
					break
				end
			end

			n7 = (n7 * 16 + n8) % 9007199254740991
		end

		return n7
	end

	if debug.info(1, "l") ~= v7 or debug.info(1, "l") ~= v then
		fn("J2_048")
		LPH_CRASH()
	end
end

local v6
v6 = debug.info(1, "l")
local v7 = elapsedTime()

if (type(v7) ~= "number" or not rawequal(v7, v7)) == true then
	fn("J2_RVS")
	LPH_CRASH()
end

if not (not (v7 * 0 ~= 0) and not (v7 + 0 ~= v7)) then
	fn("J2_RVS")
	LPH_CRASH()
end

do
	local n2 = math.random(1, 100000)

	if type(n2) ~= "number" == true then
		fn("J2_214")
		LPH_CRASH()
	end

	if not rawequal(n2, n2) then
		fn("J2_214")
		LPH_CRASH()
	end

	if n2 * 0 ~= 0 then
		fn("J2_214")
		LPH_CRASH()
	end

	local n3 = n2 // 1

	if type(n3) ~= "number" then
		fn("J2_MS14")
		LPH_CRASH()
	end

	if n3 ~= n2 then
		fn("J2_MS14")
		LPH_CRASH()
	end

	if not rawequal(n3, n2) then
		fn("J2_MS14")
		LPH_CRASH()
	end

	if n2 < 1 == true then
		fn("J2_218")
		LPH_CRASH()
	end

	if n2 > 100000 then
		fn("J2_218")
		LPH_CRASH()
	end

	if n2 % 1 ~= 0 then
		fn("J2_218")
		LPH_CRASH()
	end
end

local str = tostring({})

if type(str) ~= "string" then
	fn("J2_SOF8")
	LPH_CRASH()
end

if not str:match("^table: 0x[%da-fA-F]+$") then
	fn("J2_SOF8")
	LPH_CRASH()
end

if (type(debug) ~= "table" or type(debug.info) ~= "function" or type(debug.traceback) ~= "function") == true then
	fn("J2_086")
	LPH_CRASH()
end

local str2 = table.concat({ "pfWTvif", "CKVpiF9sY8h", "2w0E", "gvBCK" })

if (type(str2) ~= "string" or str2 ~= "pfWTvifCKVpiF9sY8h2w0EgvBCK") == true then
	fn("J2_219")
	LPH_CRASH()
end

if tostring({}) == tostring({}) then
	fn("J2_HP2")
	LPH_CRASH()
end

do
	local v8 = Random.new():NextInteger(1, 9999999)
	local v9 = Random.new():NextInteger(1, 9999999)
	local v10 = Random.new():NextInteger(1, 9999999)

	if v8 == v9 and v9 == v10 then
		fn("J2_025")
		LPH_CRASH()
	end

	if not (not (type(v8) ~= "number") and not (v8 * 0 ~= 0) and not (v8 // 1 ~= v8)) then
		fn("J2_006")
		LPH_CRASH()
	end
end

do
	local now = os.time()
	local unixTimestamp = DateTime.now().UnixTimestamp

	if not (not (type(now) ~= "number") and not (type(unixTimestamp) ~= "number")) then
		fn("J2_200")
		LPH_CRASH()
	end

	if now - unixTimestamp > 2 == true then
		fn("J2_200")
		LPH_CRASH()
	end

	if unixTimestamp - now > 2 then
		fn("J2_200")
		LPH_CRASH()
	end
end

local part
part = Instance.new("Part")
local Stats_
Stats_ = game:GetService("Stats")
local n2

do
	local n3 = time() * 7333

	if n3 * 0 ~= 0 then
		n3 = 0
	end

	if n3 < 0 then
		n3 = -n3
	end

	local n4 = (1545663 + n3 // 1 % 9999999 * 29 + 7216225) % 9999999
	local n5 = game.CreatorId * 5285 + game.PlaceVersion * 5825 + game.GameId * 8113 + game.PlaceId * 5651

	if n5 * 0 ~= 0 then
		n5 = 0
	end

	if n5 < 0 then
		n5 = -n5
	end

	local n6 = (n4 + n5 // 1 % 9999999 * 5 + 5531020) % 9999999
	local n7 = workspace.DataCost * 5021 + game:GetService("Players").DataCost * 6773

	if n7 * 0 ~= 0 then
		n7 = 0
	end

	if n7 < 0 then
		n7 = -n7
	end

	local n8 = (n6 + (n7 // 1 % 9999999 + 1997749) * 39) % 9999999
	local screenResolution = game:GetService("GuiService"):GetScreenResolution()
	local n9 = screenResolution.X * 6059 + screenResolution.Y * 6869

	if n9 * 0 ~= 0 then
		n9 = 0
	end

	if n9 < 0 then
		n9 = -n9
	end

	local n10 = (n8 * 89 + n9 // 1 % 9999999 + 5796656) % 9999999
	local systemLocaleId = game:GetService("LocalizationService").SystemLocaleId
	local n11 = 5381

	for i = 1, #systemLocaleId do
		n11 = (n11 * 33 + string.byte(systemLocaleId, i)) % 9999999
	end

	if n11 * 0 ~= 0 then
		n11 = 0
	end

	if n11 < 0 then
		n11 = -n11
	end

	n2 = (n10 + (n11 // 1 % 9999999 + 6766995) * 23) % 9999999
end

local n3

do
	local random = crypt and crypt.random
	local str3 = ""

	if random then
		str3 = random(16)
	end

	local n4 = 5381

	for i = 1, #str3 do
		n4 = (n4 * 33 + string.byte(str3, i)) % 9999999
	end

	n4 = #str3 > 0 and n4 or 0

	if n4 * 0 ~= 0 then
		n4 = 0
	end

	if n4 < 0 then
		n4 = -n4
	end

	local n5 = (612300955 + n4 // 1 % 9999999 + 4856838) % 9999999
	local str4 = debug.info(1, "n") or ""
	local n6 = 5381

	for i = 1, #str4 do
		n6 = (n6 * 33 + string.byte(str4, i)) % 9999999
	end

	if n6 * 0 ~= 0 then
		n6 = 0
	end

	if n6 < 0 then
		n6 = -n6
	end

	local n7 = ((n5 + n6 // 1 % 9999999) * 37 + 1565632) % 9999999
	local v8 = getgc
	local flag3 = false
	local result = nil

	if type(v8) == type(pcall) then
		flag3, result = pcall(v8)
	end

	local n8 = (flag3 and type(result) == "table" and #result or 0) * 6739

	if n8 * 0 ~= 0 then
		n8 = 0
	end

	if n8 < 0 then
		n8 = -n8
	end

	local n9 = (n7 * 19 + n8 // 1 % 9999999 + 3362322) % 9999999
	local part2 = Instance.new("Part")
	local ok, result2 = pcall(part2.GetDebugId, part2)
	part2:Destroy()

	if not ok or type(result2) ~= "string" then
		result2 = ""
	end

	local byte = string.byte
	local n10 = 0

	for i = 1, #result2 do
		n10 = (n10 * 31 + byte(result2, i)) % 9999999
	end

	if n10 * 0 ~= 0 then
		n10 = 0
	end

	local n11

	if n10 < 0 then
		n11 = -n10
	else
		n11 = n10
	end

	local n12 = ((n9 + n11 // 1 % 9999999) * 67 + 9782797) % 9999999
	local getupvalues = debug and (debug.getupvalues or debug.upvalues)
	local flag4 = false
	local result3 = nil

	if getupvalues then
		flag4, result3 = pcall(getupvalues, fn3)
	end

	local n13 = (flag4 and type(result3) == "table" and #result3 or 0) * 6917

	if n13 * 0 ~= 0 then
		n13 = 0
	end

	if n13 < 0 then
		n13 = -n13
	end

	n3 = ((n12 + n13 // 1 % 9999999) * 25 + 5812761) % 9999999
end

local n4

do
	local ok, result = pcall(function()
		local serverStatsItem = Stats_.Network.ServerStatsItem
		return (tonumber(serverStatsItem["Data Ping"]:GetValueString():split("(")[1]) or 0) * 6913 + (tonumber(serverStatsItem["Send kBps"]:GetValueString()) or 0) * 5209
	end)

	if not ok or type(result) ~= "number" then
		result = 0
	end

	if result * 0 ~= 0 then
		result = 0
	end

	if result < 0 then
		result = -result
	end

	local n5 = ((6017842 + result // 1 % 9999999) * 89 + 4774839) % 9999999

	local ok2, result2 = pcall(function()
		local serverStatsItem = Stats_.Network.ServerStatsItem
		return (tonumber(serverStatsItem.TotalInDataBW:GetValueString()) or 0) * 6523 + (tonumber(serverStatsItem.TotalOutDataBW:GetValueString()) or 0) * 6637
	end)

	if not ok2 or type(result2) ~= "number" then
		result2 = 0
	end

	if result2 * 0 ~= 0 then
		result2 = 0
	end

	if result2 < 0 then
		result2 = -result2
	end

	local n6 = (n5 * 9 + result2 // 1 % 9999999 + 4293920) % 9999999

	local ok3, result3 = pcall(function()
		local serverStatsItem = Stats_.Network.ServerStatsItem
		return (tonumber(serverStatsItem.TotalRakIn:GetValueString()) or 0) * 7835 + (tonumber(serverStatsItem.TotalRakOut:GetValueString()) or 0) * 7865
	end)

	if not ok3 or type(result3) ~= "number" then
		result3 = 0
	end

	if result3 * 0 ~= 0 then
		result3 = 0
	end

	if result3 < 0 then
		result3 = -result3
	end

	local n7 = (n6 * 13 + result3 // 1 % 9999999 + 2690107) % 9999999

	local ok4, result4 = pcall(function()
		return tonumber(Stats_.Network.ServerStatsItem.ElapsedTime:GetValueString()) or 0
	end)

	if not ok4 or type(result4) ~= "number" then
		result4 = 0
	end

	if result4 * 0 ~= 0 then
		result4 = 0
	end

	if result4 < 0 then
		result4 = -result4
	end

	local n8 = (n7 + result4 // 1 % 9999999 * 89 + 6607210) % 9999999

	local ok5, result5 = pcall(function()
		local receivedDataPackets = Stats_.Network.ServerStatsItem["Received Data Packets"]
		local size = receivedDataPackets.Size
		return receivedDataPackets:GetValue() * 6707 + size:GetValue() * 7559
	end)

	if not ok5 or type(result5) ~= "number" then
		result5 = 0
	end

	if result5 * 0 ~= 0 then
		result5 = 0
	end

	if result5 < 0 then
		result5 = -result5
	end

	n4 = (n8 * 43 + result5 // 1 % 9999999 + 1384755) % 9999999
end

local n5

do
	local Lighting = game:GetService("Lighting")
	local moonDirection = Lighting:GetMoonDirection()
	local n6 = moonDirection.X * 7267 + moonDirection.Y * 6025 + moonDirection.Z * 6317 + Lighting:GetMoonPhase() * 6833

	if n6 * 0 ~= 0 then
		n6 = 0
	end

	if n6 < 0 then
		n6 = -n6
	end

	local n7 = (6230316 + (n6 // 1 % 9999999 + 103419) * 23) % 9999999
	local Lighting2 = game:GetService("Lighting")
	local n8 = Lighting2.ClockTime * 6233 + Lighting2.Brightness * 7367 + Lighting2.ExposureCompensation * 5123

	if n8 * 0 ~= 0 then
		n8 = 0
	end

	if n8 < 0 then
		n8 = -n8
	end

	local n9 = (n7 + n8 // 1 % 9999999 * 91 + 4525171) % 9999999
	local Lighting3 = game:GetService("Lighting")
	local n10 = Lighting3.FogEnd * 7679 + Lighting3.ShadowSoftness * 6923 + Lighting3.GeographicLatitude * 6481

	if n10 * 0 ~= 0 then
		n10 = 0
	end

	if n10 < 0 then
		n10 = -n10
	end

	local n11 = (n9 * 35 + n10 // 1 % 9999999 + 6717781) % 9999999
	local n12 = game:GetService("Lighting"):GetMinutesAfterMidnight() * 5807

	if n12 * 0 ~= 0 then
		n12 = 0
	end

	if n12 < 0 then
		n12 = -n12
	end

	local n13 = (n11 + (n12 // 1 % 9999999 + 9495948) * 43) % 9999999
	local sunDirection = game:GetService("Lighting"):GetSunDirection()
	local n14 = sunDirection.X * 5345 + sunDirection.Y * 6767 + sunDirection.Z * 7739

	if n14 * 0 ~= 0 then
		n14 = 0
	end

	if n14 < 0 then
		n14 = -n14
	end

	n5 = ((n13 + n14 // 1 % 9999999) * 63 + 9402292) % 9999999
end

local n6

do
	local ok, result = pcall(function()
		local dataPingDetails = Stats_.Network.ServerStatsItem.DataPingDetails
		local unrelRakPing = dataPingDetails.unrelRakPing
		return dataPingDetails.RakPing:GetValue() * 8135 + unrelRakPing:GetValue() * 5839
	end)

	if not ok or type(result) ~= "number" then
		result = 0
	end

	if result * 0 ~= 0 then
		result = 0
	end

	if result < 0 then
		result = -result
	end

	local n7 = (376726 + (result // 1 % 9999999 + 5487812) * 17) % 9999999

	local ok2, result2 = pcall(function()
		return Stats_.Network.ServerStatsItem.Stats.totalBytesSent:GetValue() * 7609
	end)

	if not ok2 or type(result2) ~= "number" then
		result2 = 0
	end

	if result2 * 0 ~= 0 then
		result2 = 0
	end

	if result2 < 0 then
		result2 = -result2
	end

	local n8 = (n7 + result2 // 1 % 9999999 * 23 + 2619768) % 9999999

	local ok3, result3 = pcall(function()
		return Stats_.Network.ServerStatsItem.Stats.totalMessageBytesSent:GetValue() * 6719
	end)

	if not ok3 or type(result3) ~= "number" then
		result3 = 0
	end

	if result3 * 0 ~= 0 then
		result3 = 0
	end

	if result3 < 0 then
		result3 = -result3
	end

	local n9 = (n8 + (result3 // 1 % 9999999 + 7634068) * 93) % 9999999

	local ok4, result4 = pcall(function()
		local stats = Stats_.Network.ServerStatsItem.Stats
		local numberOfUnsplitMessages = stats.numberOfUnsplitMessages
		return stats.numberOfSplitMessages:GetValue() * 7459 + numberOfUnsplitMessages:GetValue() * 6317 + stats.connectionStartTime:GetValue() * 6127
	end)

	if not ok4 or type(result4) ~= "number" then
		result4 = 0
	end

	if result4 * 0 ~= 0 then
		result4 = 0
	end

	if result4 < 0 then
		result4 = -result4
	end

	local n10 = (n9 + result4 // 1 % 9999999 * 29 + 140907) % 9999999

	local ok5, result5 = pcall(function()
		return Stats_.Network.ServerStatsItem.Stats.bytesSentPerSec:GetValue() * 6713
	end)

	if not ok5 or type(result5) ~= "number" then
		result5 = 0
	end

	if result5 * 0 ~= 0 then
		result5 = 0
	end

	if result5 < 0 then
		result5 = -result5
	end

	n6 = (n10 + (result5 // 1 % 9999999 + 5270125) * 3) % 9999999
end

local n7

do
	local terrain = workspace.Terrain
	local n8 = terrain.Mass + terrain.WaterWaveSpeed * 5087 + terrain.WaterWaveSize * 5929

	if n8 * 0 ~= 0 then
		n8 = 0
	end

	if n8 < 0 then
		n8 = -n8
	end

	local n9 = (130931073 + n8 // 1 % 9999999 + 4174544) % 9999999
	local n10 = workspace.Gravity * 7385 - workspace.FallenPartsDestroyHeight * 6479 + workspace.DistributedGameTime * 7103

	if n10 * 0 ~= 0 then
		n10 = 0
	end

	if n10 < 0 then
		n10 = -n10
	end

	local n11 = ((n9 + n10 // 1 % 9999999) * 97 + 4404083) % 9999999
	local position = workspace.WorldPivot.Position
	local n12 = position.X * 8177 + position.Y * 5237 + position.Z * 5071

	if n12 * 0 ~= 0 then
		n12 = 0
	end

	if n12 < 0 then
		n12 = -n12
	end

	local n13 = (n11 + (n12 // 1 % 9999999 + 520610) * 59) % 9999999
	local n14 = workspace.Gravity * 1000 // 1
	local n15 = workspace:GetNumAwakeParts() * 6137 + n14 + workspace.AirDensity * 100000 // 1

	if n15 * 0 ~= 0 then
		n15 = 0
	end

	if n15 < 0 then
		n15 = -n15
	end

	local n16 = (n13 * 69 + n15 // 1 % 9999999 + 3390704) % 9999999
	local size = workspace.Terrain.Size
	local n17 = size.X * 5885 + size.Y * 8191 + size.Z * 7865

	if n17 * 0 ~= 0 then
		n17 = 0
	end

	if n17 < 0 then
		n17 = -n17
	end

	n7 = (n16 + (n17 // 1 % 9999999 + 4693831) * 85) % 9999999
end

local n8

do
	local ok, result = pcall(function()
		return Stats_.MemoryTrackingEnabled and Stats_:GetMemoryUsageMbForTag(Enum.DeveloperMemoryTag.GraphicsParticles) * 1000000 * 5441 or 0
	end)

	if not ok or type(result) ~= "number" then
		result = 0
	end

	if result * 0 ~= 0 then
		result = 0
	end

	if result < 0 then
		result = -result
	end

	local n9 = (758264428 + result // 1 % 9999999 + 2442716) % 9999999

	local ok2, result2 = pcall(function()
		return Stats_.ShadowsDrawcallCount * 5753
	end)

	if not ok2 or type(result2) ~= "number" then
		result2 = 0
	end

	if result2 * 0 ~= 0 then
		result2 = 0
	end

	if result2 < 0 then
		result2 = -result2
	end

	local n10 = (n9 + result2 // 1 % 9999999 * 73 + 6896942) % 9999999

	local ok3, result3 = pcall(function()
		return Stats_.PhysicsReceiveKbps * 7549
	end)

	if not ok3 or type(result3) ~= "number" then
		result3 = 0
	end

	if result3 * 0 ~= 0 then
		result3 = 0
	end

	if result3 < 0 then
		result3 = -result3
	end

	local n11 = (n10 + (result3 // 1 % 9999999 + 5093791) * 61) % 9999999

	local ok4, result4 = pcall(function()
		local frameRateManager = Stats_.FrameRateManager
		local gpuVariance = frameRateManager.GpuVariance
		local n12 = frameRateManager.MsFrame0:GetValue() * 7417 + gpuVariance:GetValue() * 5429
		local batches = frameRateManager.Batches
		return n12 + frameRateManager.Indices:GetValue() * 5161 + batches:GetValue() * 6659
	end)

	if not ok4 or type(result4) ~= "number" then
		result4 = 0
	end

	if result4 * 0 ~= 0 then
		result4 = 0
	end

	if result4 < 0 then
		result4 = -result4
	end

	local n12 = (n11 + (result4 // 1 % 9999999 + 9586749) * 57) % 9999999

	local ok5, result5 = pcall(function()
		return Stats_.PerformanceStats.GPU:GetValue() * 1000000 * 5149
	end)

	if not ok5 or type(result5) ~= "number" then
		result5 = 0
	end

	if result5 * 0 ~= 0 then
		result5 = 0
	end

	if result5 < 0 then
		result5 = -result5
	end

	local n13 = (n12 + (result5 // 1 % 9999999 + 9656475) * 73) % 9999999

	local ok6, result6 = pcall(function()
		return Stats_.MemoryTrackingEnabled and Stats_:GetMemoryUsageMbForTag(Enum.DeveloperMemoryTag.Signals) * 1000000 * 6257 or 0
	end)

	if not ok6 or type(result6) ~= "number" then
		result6 = 0
	end

	if result6 * 0 ~= 0 then
		result6 = 0
	end

	if result6 < 0 then
		result6 = -result6
	end

	local n14 = (n13 + (result6 // 1 % 9999999 + 3132619) * 79) % 9999999

	local ok7, result7 = pcall(function()
		return Stats_.FrameRateManager.VideoMemoryInMB:GetValue() * 7355
	end)

	if not ok7 or type(result7) ~= "number" then
		result7 = 0
	end

	if result7 * 0 ~= 0 then
		result7 = 0
	end

	if result7 < 0 then
		result7 = -result7
	end

	local n15 = (n14 * 61 + result7 // 1 % 9999999 + 5517571) % 9999999

	local ok8, result8 = pcall(function()
		return Stats_.PerformanceStats.Memory.CoreMemory:GetValue() * 1000000 * 8045
	end)

	if not ok8 or type(result8) ~= "number" then
		result8 = 0
	end

	if result8 * 0 ~= 0 then
		result8 = 0
	end

	local n16

	if result8 < 0 then
		n16 = -result8
	else
		n16 = result8
	end

	local n17 = ((n15 + n16 // 1 % 9999999) * 3 + 6623505) % 9999999

	local ok9, result9 = pcall(function()
		return Stats_.DataSendKbps * 8087 + Stats_.DataReceiveKbps * 6305
	end)

	if not ok9 or type(result9) ~= "number" then
		result9 = 0
	end

	if result9 * 0 ~= 0 then
		result9 = 0
	end

	local n18

	if result9 < 0 then
		n18 = -result9
	else
		n18 = result9
	end

	local n19 = ((n17 + n18 // 1 % 9999999) * 7 + 6452120) % 9999999

	local ok10, result10 = pcall(function()
		return Stats_.FrameRateManager.MsFrame1:GetValue() * 5519
	end)

	if not ok10 or type(result10) ~= "number" then
		result10 = 0
	end

	if result10 * 0 ~= 0 then
		result10 = 0
	end

	if result10 < 0 then
		result10 = -result10
	end

	local n20 = ((n19 + result10 // 1 % 9999999) * 9 + 5275728) % 9999999

	local ok11, result11 = pcall(function()
		return Stats_.SceneDrawcallCount * 7567
	end)

	if not ok11 or type(result11) ~= "number" then
		result11 = 0
	end

	if result11 * 0 ~= 0 then
		result11 = 0
	end

	if result11 < 0 then
		result11 = -result11
	end

	local n21 = (n20 + result11 // 1 % 9999999 * 47 + 7584564) % 9999999

	local ok12, result12 = pcall(function()
		return Stats_.MemoryTrackingEnabled and Stats_:GetMemoryUsageMbForTag(Enum.DeveloperMemoryTag.Sounds) * 1000000 * 5171 or 0
	end)

	if not ok12 or type(result12) ~= "number" then
		result12 = 0
	end

	if result12 * 0 ~= 0 then
		result12 = 0
	end

	local n22

	if result12 < 0 then
		n22 = -result12
	else
		n22 = result12
	end

	local n23 = (n21 * 27 + n22 // 1 % 9999999 + 1066844) % 9999999
	local cFrame = workspace.CurrentCamera.CFrame
	local rightVector = cFrame.RightVector
	local upVector = cFrame.UpVector
	local n24 = rightVector.X * 6989 + rightVector.Y * 6925 + rightVector.Z * 6791 + upVector.X * 7625 + upVector.Y * 7301 + upVector.Z * 5441

	if n24 * 0 ~= 0 then
		n24 = 0
	end

	if n24 < 0 then
		n24 = -n24
	end

	local n25 = (438684141 + n24 // 1 % 9999999 + 625162) % 9999999
	local position = workspace.CurrentCamera.Focus.Position
	local n26 = position.X * 6673 + position.Y * 7595 + position.Z * 5915

	if n26 * 0 ~= 0 then
		n26 = 0
	end

	if n26 < 0 then
		n26 = -n26
	end

	local n27 = ((n25 + n26 // 1 % 9999999) * 67 + 7896467) % 9999999
	local viewportSize = workspace.CurrentCamera.ViewportSize
	local n28 = viewportSize.X * 7567 + viewportSize.Y * 7373

	if n28 * 0 ~= 0 then
		n28 = 0
	end

	if n28 < 0 then
		n28 = -n28
	end

	local n29 = (n27 * 97 + n28 // 1 % 9999999 + 4590161) % 9999999
	local cFrame2 = workspace.CurrentCamera.CFrame
	local n30 = cFrame2.X * 5543 + cFrame2.Y * 7715 + cFrame2.Z * 8143

	if n30 * 0 ~= 0 then
		n30 = 0
	end

	if n30 < 0 then
		n30 = -n30
	end

	local n31 = (n29 * 47 + n30 // 1 % 9999999 + 9315638) % 9999999
	local currentCamera = workspace.CurrentCamera
	local n32 = currentCamera.FieldOfView * 6949 + currentCamera.DiagonalFieldOfView * 5005 + currentCamera.MaxAxisFieldOfView * 5257

	if n32 * 0 ~= 0 then
		n32 = 0
	end

	if n32 < 0 then
		n32 = -n32
	end

	n8 = ((((((((2164930 + n2 * 515) % 9999999 + n3 * 731) % 9999999 + n4 * 287) % 9999999 + n5 * 779) % 9999999 + n6 * 965) % 9999999 + n7 * 859) % 9999999 + n23 * 989) % 9999999 + (n31 + (n32 // 1 % 9999999 + 5024540) * 33) % 9999999 * 193) % 9999999
end

local n9

do
	local viewportSize = workspace.CurrentCamera.ViewportSize
	local n10 = viewportSize.X * 4093 + viewportSize.Y

	if n10 * 0 ~= 0 then
		n10 = 0
	end

	if n10 < 0 then
		n10 = -n10
	end

	n9 = n10 // 1 % 9999999
end

do
	local ok, result = pcall(function()
		local localPlayer = game:GetService("Players").LocalPlayer
		local mouse = localPlayer and localPlayer:GetMouse()
		local unitRay = mouse and mouse.UnitRay
		local origin = unitRay and unitRay.Origin
		unitRay = unitRay and unitRay.Direction
		return origin and unitRay and (origin.X * 6067 + origin.Y * 6073 + origin.Z * 6079 + unitRay.X * 6089 + unitRay.Y * 6091 + unitRay.Z * 6101) * 1e9 or 0
	end)

	if not ok or type(result) ~= "number" then
		result = 0
	end

	if result * 0 ~= 0 then
		result = 0
	end

	if result < 0 then
		result = -result
	end

	local n10 = result // 1 % 9999999

	local ok2, result2 = pcall(function()
		local localPlayer = game:GetService("Players").LocalPlayer
		local character = localPlayer and localPlayer.Character
		local humanoid = character and character.Humanoid
		humanoid = character and humanoid and (humanoid and humanoid.RigType.Value == 0 and character["Left Arm"] or character.LeftHand)
		humanoid = humanoid and humanoid.CFrame
		return humanoid and (humanoid.X * 4241 + humanoid.Y * 4243 + humanoid.Z * 4247 + humanoid.LookVector.X * 4253 + humanoid.LookVector.Y * 4259 + humanoid.RightVector.Y * 4271) * 1e9 or 0
	end)

	if not ok2 or type(result2) ~= "number" then
		result2 = 0
	end

	if result2 * 0 ~= 0 then
		result2 = 0
	end

	if result2 < 0 then
		result2 = -result2
	end

	local n11 = result2 // 1 % 9999999
	local v8 = game:GetService("HttpService"):GenerateGUID(false)
	local byte = string.byte
	local n12 = 5381

	for i = 1, #v8 do
		n12 = (n12 * 33 + byte(v8, i)) % 9999999
	end

	if n12 * 0 ~= 0 then
		n12 = 0
	end

	if n12 < 0 then
		n12 = -n12
	end

	local n13 = n12 // 1 % 9999999
	local mouseLocation = game:GetService("UserInputService"):GetMouseLocation()
	local n14 = mouseLocation.X * 4099 + mouseLocation.Y * 4079

	if n14 * 0 ~= 0 then
		n14 = 0
	end

	if n14 < 0 then
		n14 = -n14
	end

	local n15 = n14 // 1 % 9999999

	local ok3, result3 = pcall(function()
		local sessionId = game:GetService("RbxAnalyticsService"):GetSessionId()
		local byte2 = string.byte
		local n16 = 5381

		for i = 1, #sessionId do
			n16 = (n16 * 33 + byte2(sessionId, i)) % 9999999
		end

		return n16
	end)

	if not ok3 or type(result3) ~= "number" then
		result3 = 0
	end

	if result3 * 0 ~= 0 then
		result3 = 0
	end

	if result3 < 0 then
		result3 = -result3
	end

	local n16 = result3 // 1 % 9999999
	local n17 = math.random(1, 9999999)

	if n17 * 0 ~= 0 then
		n17 = 0
	end

	if n17 < 0 then
		n17 = -n17
	end

	local n18 = n17 // 1 % 9999999

	local ok4, result4 = pcall(function()
		local Stats_2 = game:GetService("Stats")
		return (Stats_2.HeartbeatTimeMs + Stats_2.PhysicsStepTimeMs) * 1000 // 1
	end)

	if not ok4 or type(result4) ~= "number" then
		result4 = 0
	end

	if result4 * 0 ~= 0 then
		result4 = 0
	end

	local n19

	if result4 < 0 then
		n19 = -result4
	else
		n19 = result4
	end

	local n20 = n19 // 1 % 9999999
	local n21 = gcinfo() * 1000

	if n21 * 0 ~= 0 then
		n21 = 0
	end

	if n21 < 0 then
		n21 = -n21
	end

	local n22 = n21 // 1 % 9999999
	local n23 = #workspace:GetChildren()

	if n23 * 0 ~= 0 then
		n23 = 0
	end

	if n23 < 0 then
		n23 = -n23
	end

	local n24 = n23 // 1 % 9999999
	local n25 = game.PlaceId + game.PlaceVersion * 4099

	if n25 * 0 ~= 0 then
		n25 = 0
	end

	if n25 < 0 then
		n25 = -n25
	end

	local n26 = n25 // 1 % 9999999
	local n27 = workspace.DistributedGameTime * 1000 // 1

	if n27 * 0 ~= 0 then
		n27 = 0
	end

	if n27 < 0 then
		n27 = -n27
	end

	local n28 = n27 // 1 % 9999999

	local ok5, result5 = pcall(function()
		local localPlayer = game:GetService("Players").LocalPlayer
		local character = localPlayer and localPlayer.Character
		local humanoid = character and character.Humanoid
		local flag3 = humanoid and humanoid.RigType.Value == 0
		local leftArm = character and humanoid and (flag3 and character["Left Arm"] or character.LeftUpperArm)
		humanoid = character and humanoid and (flag3 and character.Torso or character.UpperTorso)
		leftArm = leftArm and leftArm.CFrame
		humanoid = humanoid and humanoid.CFrame
		return leftArm and humanoid and ((leftArm.X - humanoid.X) * 5011 + (leftArm.Y - humanoid.Y) * 5015 + (leftArm.Z - humanoid.Z) * 5021 + (leftArm.LookVector.X - humanoid.LookVector.X) * 5027 + (leftArm.LookVector.Y - humanoid.LookVector.Y) * 5035 + (leftArm.RightVector.Y - humanoid.RightVector.Y) * 5047) * 1e9 or 0
	end)

	if not ok5 or type(result5) ~= "number" then
		result5 = 0
	end

	if result5 * 0 ~= 0 then
		result5 = 0
	end

	if result5 < 0 then
		result5 = -result5
	end

	local n29 = result5 // 1 % 9999999

	local ok6, result6 = pcall(function()
		local localPlayer = game:GetService("Players").LocalPlayer
		localPlayer = localPlayer and localPlayer.Character
		localPlayer = localPlayer and localPlayer.Humanoid
		localPlayer = localPlayer and localPlayer:GetRelativeVelocityAtFloor()
		return localPlayer and localPlayer.X * 1e9 * 4099 + localPlayer.Y * 1e9 * 4079 + localPlayer.Z * 1e9 * 4057 or 0
	end)

	if not ok6 or type(result6) ~= "number" then
		result6 = 0
	end

	if result6 * 0 ~= 0 then
		result6 = 0
	end

	if result6 < 0 then
		result6 = -result6
	end

	local n30 = result6 // 1 % 9999999

	local ok7, result7 = pcall(function()
		return game:GetService("RunService"):GetTotalScriptPlusExecutionTime() * 1e9
	end)

	if not ok7 or type(result7) ~= "number" then
		result7 = 0
	end

	if result7 * 0 ~= 0 then
		result7 = 0
	end

	if result7 < 0 then
		result7 = -result7
	end

	part:SetAttribute("_20266a1d", (n8 + ((((((((((((((((((9874512 + n9 * 85 + 3713602) % 9999999 + n10 * 33 + 4609799) % 9999999 * 47 + n11 + 2008585) % 9999999 + (n13 + 5899465) * 17) % 9999999 + n15) * 31 + 5894222) % 9999999 + n16) * 17 + 2542296) % 9999999 * 47 + n18 + 4225365) % 9999999 * 71 + n20 + 4777775) % 9999999 + n22) * 33 + 9838442) % 9999999 * 73 + n24 + 9184997) % 9999999 * 27 + n26 + 3410266) % 9999999 + n28 * 39 + 1044706) % 9999999 + n29 * 7 + 2545122) % 9999999 * 49 + n30 + 2416887) % 9999999 + (result7 // 1 % 9999999 + 2836454) * 49) % 9999999 + 1) % 9999999 // 1 + 1)
end

for i = 1, 40 do
	local v8 = part
	local setAttribute = v8.SetAttribute
	local n10

	if tostring({}) < tostring({}) then
		n10 = part:GetAttribute("_20266a1d") + 1
	else
		n10 = part:GetAttribute("_20266a1d") * 2
	end

	setAttribute(v8, "_20266a1d", n10 % 9999998 + 1)
end

local attribute
attribute = part:GetAttribute("_20266a1d")
tbl._9269e561fbe1:SetItem(tbl._bc4751ef3bbc, tostring(bit32.bxor(3241720937, attribute)))

if tbl._9269e561fbe1:GetItem(tbl._bc4751ef3bbc, "_Z0VteFsiOuzortn") ~= tostring(bit32.bxor(3241720937, attribute)) and not identifyexecutor():match("^Synapse") then
	fn("J2_182")
	LPH_CRASH()
end

local v8

do
	local tbl4 = { 1, 2, 3, 4 }
	local tbl5 = {}

	for i = 1, 59 do
		local tbl6 = {}

		for i2 = 1, 38 do
			if i2 % 4 == 0 then
				tbl6[i2] = { i2 }
			elseif i2 % 4 == 1 then
				tbl6[i2] = buffer.create(8)
			elseif i2 % 4 == 2 then
				tbl6[i2] = table.clone(tbl4)
			else
				tbl6[i2] = newproxy(true)
			end
		end

		tbl5[{}] = math.random(1, 9999999) + i * 31
	end

	local n10 = 0

	for _, v9 in tbl5, nil, nil do
		n10 = ((n10 + v9) % 4294967296 * 1664525 + 1013904223) % 4294967296
	end

	local n11 = 0 + n10
	local v9 = fn7()

	for i = 1, 29 do
		local tbl6 = {}

		for i2 = 1, 38 do
			if i2 % 4 == 0 then
				tbl6[i2] = { i2 }
			elseif i2 % 4 == 1 then
				tbl6[i2] = buffer.create(8)
			elseif i2 % 4 == 2 then
				tbl6[i2] = table.clone(tbl4)
			else
				tbl6[i2] = newproxy(true)
			end
		end

		v9[fn7()] = tick() * 250 + i * 12
	end

	for i = 1, 21 do
		local tbl6 = {}

		for i2 = 1, 38 do
			if i2 % 4 == 0 then
				tbl6[i2] = { i2 }
			elseif i2 % 4 == 1 then
				tbl6[i2] = buffer.create(8)
			elseif i2 % 4 == 2 then
				tbl6[i2] = table.clone(tbl4)
			else
				tbl6[i2] = newproxy(true)
			end
		end

		v9[buffer.create(12)] = tick() * 250 + i * 12
	end

	local n12 = 0

	for _, v10 in v9, nil, nil do
		n12 = ((n12 + v10 // 1) % 4294967296 * 1664525 + 1013904223) % 4294967296
	end

	local n13 = n11 + n12
	local tbl6 = {}

	for i = 1, 56 do
		local tbl7 = {}

		for i2 = 1, 38 do
			if i2 % 4 == 0 then
				tbl7[i2] = { i2 }
			elseif i2 % 4 == 1 then
				tbl7[i2] = buffer.create(8)
			elseif i2 % 4 == 2 then
				tbl7[i2] = table.clone(tbl4)
			else
				tbl7[i2] = newproxy(true)
			end
		end

		tbl6[buffer.create(8)] = os.clock() * 1000 + i * 17
	end

	local n14 = 0

	for _, v10 in tbl6, nil, nil do
		n14 = ((n14 + v10 // 1) % 4294967296 * 1664525 + 1013904223) % 4294967296
	end

	local n15 = n13 + n14
	local tbl7 = {}

	for i = 1, 60 do
		local tbl8 = {}

		for i2 = 1, 38 do
			if i2 % 4 == 0 then
				tbl8[i2] = { i2 }
			elseif i2 % 4 == 1 then
				tbl8[i2] = buffer.create(8)
			elseif i2 % 4 == 2 then
				tbl8[i2] = table.clone(tbl4)
			else
				tbl8[i2] = newproxy(true)
			end
		end

		tbl7[newproxy(false)] = tick() * 100 + i * 53
	end

	local n16 = 0

	for _, v10 in tbl7, nil, nil do
		n16 = ((n16 + v10 // 1) % 4294967296 * 1664525 + 1013904223) % 4294967296
	end

	local n17 = (n15 + n16) % 9999999 + 1

	for i = 1, 17 do
		if tostring({}) < tostring({}) then
			n17 = (n17 + 48) % 9999999
		else
			n17 = (n17 * 9 + 345) % 9999999
		end
	end

	for i = 1, 12 do
		local v10 = tostring
		local v11 = fn7()
		local v12 = v10(v11)
		local v13 = tostring
		local v14 = fn7()

		if v12 < v13(v14) then
			n17 = (n17 + 50) % 9999999
		else
			n17 = (n17 * 10 + 884) % 9999999
		end
	end

	local part2 = Instance.new("Part")
	part2:SetAttribute("_9ccd03391eb5", 1)
	part2:SetAttribute("_da9344dceafd", 0)
	local n18 = 166877
	local n19 = 0
	local n20 = 0
	local n21 = 0
	local n22 = 1

	while true do
		if not rawequal(n18, 166877) or type(n18) ~= "number" then
			fn("J2_006")
			LPH_CRASH()
		end

		local n23 = math.random(800, 999)

		if type(n23) ~= "number" or n23 < 800 or n23 > 999 or n23 ~= math.floor(n23) or not fn2(math.floor(n23), n23 // 1, 889216) then
			fn("J2_MS17")
			LPH_CRASH()
		end

		local n24 = math.random(800, 999)

		if type(n24) ~= "number" or n24 < 800 or n24 > 999 or n24 ~= math.floor(n24) or not fn2(math.floor(n24), n24 // 1, 889216) then
			fn("J2_169")
			LPH_CRASH()
		end

		n20 = n23 == n19 and n20 + 1 or 0

		if n20 >= 3 then
			fn("J2_050")
			LPH_CRASH()
		end

		if part2:GetAttribute("_9ccd03391eb5") <= 9999 or part2:GetAttribute("_9ccd03391eb5") < 9999 then
			if n21 ~= 0 and getfenv()[getfenv()[7034135]] == nil then
				fn("J2_HP4")
				LPH_CRASH()
			end

			if getfenv()[getfenv()[7034135]] == nil and n21 ~= 0 then
				fn("J2_RVP5")
				LPH_CRASH()
			end

			part2:SetAttribute("_9ccd03391eb5", part2:GetAttribute("_9ccd03391eb5") + n23)
			part2:SetAttribute("_da9344dceafd", part2:GetAttribute("_da9344dceafd") + 1)
			getfenv()[7034135] = n23
			getfenv()[n23] = n23
			n21 += 1

			if n21 > 20 then
				fn("J2_171")
				LPH_CRASH()
			end

			n22 += n24
			n19 = n23
			continue
		end

		break
	end

	if not fn2(n21, part2:GetAttribute("_da9344dceafd"), 889216) or n21 < 11 or part2:GetAttribute("_da9344dceafd") < 11 or n22 + 1000 <= 9999 then
		fn("J2_082")
		LPH_CRASH()
	end

	if n22 < 10000 then
		n22 += 1000
	end

	local n23 = (n17 + part2:GetAttribute("_9ccd03391eb5") + n22) % 9999999 + 1
	getfenv()[154] = n23
	writefile(tbl._d48fe32d532a, n23 .. "")
	v8 = n23
end

if v8 .. "" ~= getfenv()[154] .. "" then
	fn("J2_RVP1")
	LPH_CRASH()
end

tbl._57ba0f5e430c:SetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.Small, v8 % 999654 / 999654)
tbl._d4331beae313 = tbl._57ba0f5e430c:GetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.Small)

if tbl._d4331beae313 == nil or tbl._d4331beae313 == v8 % 999654 / 999654 then
	fn("J2_181")
	LPH_CRASH()
end

local v9

local function fn10()
	error("devirt: symbolic next pc/mode: (r33 Add 1) / 12 (at 12:7)")
end

v9 = fn10(493474)
local flag3 = nil

for i = 1, 3 do
	local tbl4 = {}

	for i2 = 1, 34 do
		tbl4[{}] = math.random(1, 9999999) + i2
	end

	local n10 = 0

	for _, v10 in tbl4, nil, nil do
		n10 = ((n10 + v10) % 4294967296 * 1664525 + 1013904223) % 4294967296
	end

	local n11 = n10 % 99999
	flag3 = flag3 and n11 == flag3

	if flag3 then
		fn("J2_037")
		LPH_CRASH()
	end

	v9 += n11
	flag3 = n11
end

local n10
local str3 = tick() .. game:GetService("HttpService"):GenerateGUID(false) .. tostring(({}).n) .. tostring({})
n10 = 0

for i = 1, #str3 do
	n10 = (n10 * 33 + string.byte(str3, i) + 3307) % 1000000 + 1
end

for i = 1, 27 do
	if tostring({}) < tostring({}) then
		n10 = (n10 + 14) % 1000000
	else
		n10 = (n10 * 10 + 22) % 1000000
	end
end

local str4 = tostring({})

while str4 == tostring({}) do
	str4 = tostring({})
end

local n11
local v10 = game
n11 = Random.new(v8):NextInteger(1, 9999999) + #v10:GetDescendants()

if getinstances then
	n11 += #getinstances()
end

if getnilinstances then
	n11 += #getnilinstances()
end

local n12

do
	local kind = typeof(http.request)

	if kind == "number" or kind == "string" or kind == "boolean" then
		kind = "" .. http.request
	elseif kind == "table" then
		kind = "{}"
	elseif kind == "function" then
		kind = "function: " .. (tostring(http.request):match("0x%x+") or "0x1")
	end

	local n13 = 0

	for i = 4, #kind do
		local v11 = kind:byte(i)
		local n14 = n13 * 16
		local n15 = v11 >= 65 and v11 <= 70 and v11 - 65 + 10 or v11 >= 48 and v11 <= 57 and v11 - 48

		if not n15 then
			n15 = v11 >= 97 and v11 <= 102 and v11 - 97 + 10
		end

		n13 = (n14 + (n15 or 0)) % 9007199254740991
	end

	local n14 = n10 % 100000 + n13 / 1000000000000037 // 1 * 521 + (tonumber(tostring({}):match("0x(%x+)") or "1", 16) + tonumber(tostring(buffer.create(8)):match("0x(%x+)") or "1", 16) + tonumber(tostring(newproxy()):match("0x(%x+)") or "1", 16)) % 10000 + 1
	local DebugSettings = settings():GetService("DebugSettings")
	local instanceCount = DebugSettings.InstanceCount
	n12 = n14 + #listfiles("") + instanceCount + DebugSettings.JobCount + settings():GetService("NetworkSettings").FreeMemoryMBytes // 1
end

if settings():getService("DebugSettings") then
	n12 += settings():getService("DebugSettings").PlayerCount
end

local n13

do
	local kind = typeof(isfunctionhooked)

	if kind == "number" or kind == "string" or kind == "boolean" then
		kind = "" .. isfunctionhooked
	elseif kind == "table" then
		kind = "{}"
	elseif kind == "function" then
		kind = "function: " .. (tostring(isfunctionhooked):match("0x%x+") or "0x1")
	end

	local n14 = 0

	for i = 4, #kind do
		local v11 = kind:byte(i)
		n14 = (n14 * 16 + (v11 >= 48 and v11 <= 57 and v11 - 48 or v11 >= 97 and v11 <= 102 and v11 - 97 + 10 or v11 >= 65 and v11 <= 70 and v11 - 65 + 10 or 0)) % 9007199254740991
	end

	n13 = n10 / 1000 // 1 % 100000 + n14 / 1250000000000029 // 1 * 53 + 1 + 1
end

wait(0.1)

if getscriptbytecode then
	local character = game:GetService("Players").LocalPlayer.Character
	character = character and character:FindFirstChild("Animate")
	character = character and getscriptbytecode(character)

	if type(character) == "string" then
		n13 += #character
	end
end

tbl["ວभ\u{CFD}၃ຏဈ៳"]:SetTeleportSetting("લุൡா", n11)

if not (not (attribute // 1 ~= attribute) and not (v8 // 1 ~= v8)) then
	fn("J2_MS11")
	LPH_CRASH()
end

if n11 // 1 ~= n11 then
	fn("J2_MS11")
	LPH_CRASH()
end

if (not rawequal(attribute, attribute) or not rawequal(v8, getfenv()[154]) or not rawequal(n11, n11)) == true then
	fn("J2_REQ1")
	LPH_CRASH()
end

if not (not (attribute + 0 ~= attribute) and not (n11 + 0 ~= n11)) then
	fn("J2_098")
	LPH_CRASH()
end

if attribute - part:GetAttribute("_20266a1d") ~= 0 == true then
	fn("J2_164")
	LPH_CRASH()
end

if n11 - n11 ~= 0 then
	fn("J2_164")
	LPH_CRASH()
end

if type(attribute) ~= "number" or type(v8) ~= "number" or type(v9) ~= "number" then
	fn("J2_SOF3")
	LPH_CRASH()
end

if type(n10) ~= "number" or type(n12) ~= "number" then
	fn("J2_SOF3")
	LPH_CRASH()
end

if not (not (type(n13) ~= "number") and not (type(n11) ~= "number")) then
	fn("J2_SOF3")
	LPH_CRASH()
end

if attribute / attribute ~= 1 then
	fn("J2_123")
	LPH_CRASH()
end

if n11 / n11 ~= 1 then
	fn("J2_123")
	LPH_CRASH()
end

if (not tostring(attribute):match("^%d+$") or not tostring(n11):match("^%d+$")) == true then
	fn("J2_MS08")
	LPH_CRASH()
end

local n14 = (attribute + n11) // 1

if type(n14) ~= "number" == true then
	fn("J2_HP1")
	LPH_CRASH()
end

if n14 * 0 ~= 0 then
	fn("J2_HP1")
	LPH_CRASH()
end

if n14 ~= n14 // 1 then
	fn("J2_HP1")
	LPH_CRASH()
end

if (attribute < 1 or attribute > 9999999 or v8 < 1 or v8 > 9999999 or v9 < 1 or v9 > 962053 or v9 % 1 ~= 0 or n10 < 0 or n10 > 1000000 or n10 % 1 ~= 0 or n12 < 1 or n12 > 1e9 or n13 < 2 or n13 > 1e9 or n11 < 1 or n11 > 99999999) == true then
	fn("J2_011")
	LPH_CRASH()
end

if attribute % attribute ~= 0 == true then
	fn("J2_MS22")
	LPH_CRASH()
end

if n11 % n11 ~= 0 then
	fn("J2_MS22")
	LPH_CRASH()
end

if not (not (attribute * 0 ~= 0) and not (v8 * 0 ~= 0)) then
	fn("J2_120")
	LPH_CRASH()
end

if (v9 * 0 ~= 0 or n10 * 0 ~= 0) == true then
	fn("J2_120")
	LPH_CRASH()
end

if n11 * 0 ~= 0 then
	fn("J2_120")
	LPH_CRASH()
end

local n15 = 0

for k in {
	[attribute] = true,
	[v8] = true,
	[v9] = true,
	[n10] = true,
	[n12] = true,
	[n13] = true,
	[n11] = true,
}, nil, nil do
	n15 += 1
end

if n15 < 4 then
	fn("J2_162")
	LPH_CRASH()
end

n += 53
tbl["ວभ\u{CFD}၃ຏဈ៳"]:SetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}", tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}") .. "5FDAx3")

if fn3(attribute, n11, 300254) or attribute == n11 or n11 .. "" == attribute then
	fn("J2_MS04")
	LPH_CRASH()
end

n += 42
tbl["ວभ\u{CFD}၃ຏဈ៳"]:SetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}", tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}") .. "R4umd")
tbl["ວभ\u{CFD}၃ຏဈ៳"]:SetTeleportSetting("়ౚโ૨৻", (n11 + n13 // 10000 + 1 + v8 + #getgenv().SCRIPT_KEY + n10 + n12 // 10000 + 1 + v9 + attribute) / 100000 * 1000 * 0.2 // 1)
part:SetAttribute("_f2825c40", attribute % 999999)
part:SetAttribute("_46cc8f26", v9 % 999999)
part:SetAttribute("_8a02572d", n10 % 999999)
part:SetAttribute("_ba3993a3", bit32.bxor(n12 % 999999, n13 % 999999))
local sound
sound = Instance.new("Sound")
sound.Name = "_72c0241c46ed" .. n11 % 10000
sound.Volume = n12 % 100 / 100
sound.Pitch = n13 % 200 / 100
sound.TimePosition = attribute % 1000 / 10
local teleportOptions
teleportOptions = Instance.new("TeleportOptions")

teleportOptions:SetTeleportData({
	_e5c817379b21 = attribute % 999999 .. "_" .. getfenv()[154] % 999999,
	_ebff79784f31 = v9 % 999999,
	_d3db5f30f1b2 = n10 % 999999,
	_475dc6c1288e = bit32.bxor(n12 % 999999, n11 % 999999),
	_9b5747a4d41e = bit32.bxor(bit32.bxor(attribute % 999999, v9 % 999999), n13 % 999999),
	_e3864c1cb2f2 = os.time(),
	_f2b7ae87878d = n12 % 10000 .. n13 % 10000,
})

local proxy
proxy = newproxy(true)
local intValue
intValue = Instance.new("IntValue")
local v11
v11 = nil
local frame
frame = Instance.new("Frame")
intValue.Name = (attribute + v8 + v9 + n10 + n12 // 10000 + 1 + n13 // 10000 + 1 + n11 + #getgenv().SCRIPT_KEY) / 100000 * 1000 * 0.2 // 1
n += 49
tbl["ວभ\u{CFD}၃ຏဈ៳"]:SetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}", tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}") .. "YL64pBs70DbSkG2jH")
getfenv()[4] = attribute
getfenv()[630] = v8
getfenv()[396] = bit32.bxor(n10 % 4294967295, n11 % 4294967295)

do
	local bxor = bit32.bxor
	local bxor2 = bit32.bxor
	getfenv()[241] = bxor(bit32.bxor(attribute % 4294967295, v8 % 4294967295), bxor2(v9 % 4294967295, n11 % 4294967295))
end

debug.setmemorycategory("_msbwebIW" .. tostring((attribute % 661793 * 115 + 2630) % 661793))
n += 23
tbl["ວभ\u{CFD}၃ຏဈ៳"]:SetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}", tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}") .. "uLzXXUDI7GOmL")
tbl["ວभ\u{CFD}၃ຏဈ៳"]:SetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}", tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}") .. "u3GsYQ")

if fn9({}, 688260) == "" then
	fn("J2_224")
	LPH_CRASH()
end

n += 10
tbl["ວभ\u{CFD}၃ຏဈ៳"]:SetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}", tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}") .. "a8dRC8x7I6R9lF")

if debug.info(1, "l") ~= v6 or debug.info(1, "l") ~= v then
	fn("J2_145")
	LPH_CRASH()
end

local configuration, v12, n16

do
	local v13 = debug.info(1, "l")

	if restorefunction then
		pcall(restorefunction, request)
	end

	if isfunctionhooked and isfunctionhooked(request) then
		fn("J2_039")
		LPH_CRASH()
	end

	configuration = Instance.new("Configuration")
	local n17 = 0
	tbl._57ba0f5e430c:SetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.RightTrigger, v9 % 965728 / 965728)
	tbl._dd330ed2ab52 = tbl._57ba0f5e430c:GetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.RightTrigger)

	if tbl._dd330ed2ab52 == nil or tbl._dd330ed2ab52 == v9 % 965728 / 965728 then
		fn("J2_223")
		LPH_CRASH()
	end

	if (tbl._9269e561fbe1:GetItem(tbl._bc4751ef3bbc, "_J5t1flmhjB9GDVC") == tostring(bit32.bxor(3241720937, attribute)) and tbl._9269e561fbe1:HasItem(tbl._bc4751ef3bbc)) ~= true and not identifyexecutor():match("^Synapse") then
		fn("J2_SOF4")
		LPH_CRASH()
	end

	local bxor = bit32.bxor
	tbl._9269e561fbe1:SetItem(tbl._bc4751ef3bbc, tostring(bit32.bxor(bit32.bxor(v9, n13, v8), bit32.bxor(n11, n12, attribute), bxor(3241761936, n10))))
	local v14 = tostring
	local bxor2 = bit32.bxor
	local bxor3 = bit32.bxor

	if (tbl._9269e561fbe1:GetItem(tbl._bc4751ef3bbc, "_KSKFEfZu9wY7p4E") ~= v14(bxor2(bit32.bxor(v9, n13, v8), bit32.bxor(n11, n12, attribute), bxor3(3241761936, n10))) or not tbl._9269e561fbe1:HasItem(tbl._bc4751ef3bbc)) and not identifyexecutor():match("^Synapse") then
		fn("J2_RV2")
		LPH_CRASH()
	end

	local function fn11()
		error("devirt: symbolic next pc/mode: (r26 Add 1) / 12 (at 12:34912)")
	end

	v12 = fn11(309503, tbl._5a8623aaefdd)
	tbl._5a8623aaefdd = nil
	local str5 = tostring(v12._6f29600cdb355c13bd0df9bc or "")
	local str6 = tostring(v12._804b0cd89ccf34ccddc0786c or "")
	n16 = ((type(v12._5acc3a165500e09d5cc236c5) == "number" and v12._5acc3a165500e09d5cc236c5 % 1182893 or 0) * 85 + (str5:byte(1) or 0) * 135 + (type(v12._da4d27cb911674fee8397df7) == "number" and v12._da4d27cb911674fee8397df7 % 809351 or 0) * 123 + (str6:byte(#str6) or 0) * 57 + (type(v12._f0533cc517bec88bf17721e1) == "number" and v12._f0533cc517bec88bf17721e1 % 1018481 or 0) * 73 + #str6 * 41 + (type(v12._b74f76bf92c1e9e364d55661) == "number" and v12._b74f76bf92c1e9e364d55661 % 940061 or 0) * 107 + #str5 * 31 + (type(v12._84e152801cc831d846c703af) == "number" and v12._84e152801cc831d846c703af % 914745 or 0) * 93) % 2147483629
	if (function()
		error("devirt: symbolic next pc/mode: (r1 Add 1) / 12 (at 12:3444)")
	end)() ~= true then
		return 0
	end
	local v15 = tostring
	local bxor4 = bit32.bxor
	local bxor5 = bit32.bxor

	if (tbl._9269e561fbe1:GetItem(tbl._bc4751ef3bbc, "_BwD8tE1ceb9zQIG") == v15(bxor4(bit32.bxor(n13, attribute, 3241803067), bit32.bxor(n11, n10, v9), bxor5(v8, n12))) and tbl._9269e561fbe1:HasItem(tbl._bc4751ef3bbc)) ~= true and not identifyexecutor():match("^Synapse") then
		fn("J2_052")
		LPH_CRASH()
	end

	local n9269e561fbe1 = tbl._9269e561fbe1
	local setItem = n9269e561fbe1.SetItem
	local bc4751ef3bbc = tbl._bc4751ef3bbc
	local bxor6 = bit32.bxor
	local v16 = table.pack(tostring(bit32.bxor(bit32.bxor(3241844066, n11, n12), bit32.bxor(n13, attribute, v9), bxor6(n10, v8, n16))))
	v16.n = 3 + v16.n - 1
	table.move(v16, 1, v16.n, 3, v16)
	v16[1] = n9269e561fbe1
	v16[2] = bc4751ef3bbc
	setItem(table.unpack(v16, 1, v16.n))
	local flag4 = tbl._9269e561fbe1:GetItem(tbl._bc4751ef3bbc, "_6eiefNsQ1HLniG4") == "_6eiefNsQ1HLniG4"

	if not flag4 then
		local v17 = tostring
		local bxor7 = bit32.bxor
		local bxor8 = bit32.bxor
		flag4 = tbl._9269e561fbe1:GetItem(tbl._bc4751ef3bbc, "_6eiefNsQ1HLniG4") ~= v17(bxor7(bit32.bxor(3241844066, n11, n12), bit32.bxor(n13, attribute, v9), bxor8(n10, v8, n16)))
	end

	if flag4 and not identifyexecutor():match("^Synapse") then
		fn("J2_042")
		LPH_CRASH()
	end

	n += 11
	tbl["ວभ\u{CFD}၃ຏဈ៳"]:SetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}", tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}") .. "MtS9bZuXBGsuU")

	if debug.info(1, "l") ~= v13 or debug.info(1, "l") ~= v then
		fn("J2_004")
		LPH_CRASH()
	end
end

debug.info(1, "l")

if (function()
	error("devirt: symbolic next pc/mode: (r18 Add 1) / 12 (at 12:10171)")
end)() ~= true then
	return 0
end

do
	local flag4 = not tbl._9269e561fbe1:HasItem(tbl._bc4751ef3bbc)
	local flag5

	if flag4 then
		flag5 = flag4
	else
		local v13 = tostring
		local bxor = bit32.bxor
		local bxor2 = bit32.bxor
		flag5 = tbl._9269e561fbe1:GetItem(tbl._bc4751ef3bbc, "_vunOHLQeShH3ePT") ~= v13(bxor(bit32.bxor(3241844066, n11, n12), bit32.bxor(n13, attribute, v9), bxor2(n10, v8, n16)))
	end

	if flag5 and not identifyexecutor():match("^Synapse") then
		fn("J2_149")
		LPH_CRASH()
	end
end

do
	local n9269e561fbe1 = tbl._9269e561fbe1
	local setItem = n9269e561fbe1.SetItem
	local bc4751ef3bbc = tbl._bc4751ef3bbc
	local bxor = bit32.bxor
	local v13 = table.pack(tostring(bit32.bxor(bit32.bxor(v8, v9, n12), bit32.bxor(attribute, 3241885069, n11), bxor(n10, n13, n16))))
	v13.n = 3 + v13.n - 1
	table.move(v13, 1, v13.n, 3, v13)
	v13[1] = n9269e561fbe1
	v13[2] = bc4751ef3bbc
	setItem(table.unpack(v13, 1, v13.n))
end

local flag4 = tbl._9269e561fbe1:GetItem(tbl._bc4751ef3bbc, "_iQcBQDrzq2TQ4qA") == "_iQcBQDrzq2TQ4qA"

if not flag4 then
	local v13 = tostring
	local bxor = bit32.bxor
	local bxor2 = bit32.bxor
	flag4 = tbl._9269e561fbe1:GetItem(tbl._bc4751ef3bbc, "_iQcBQDrzq2TQ4qA") ~= v13(bxor(bit32.bxor(v8, v9, n12), bit32.bxor(attribute, 3241885069, n11), bxor2(n10, n13, n16)))
end

if flag4 and not identifyexecutor():match("^Synapse") then
	fn("J2_195")
	LPH_CRASH()
end

if not fn3(debug.setmemorycategory("_msbwebIW" .. tostring((n11 % 661793 * 115 + 2630) % 661793)), "_msbwebIW" .. tostring((attribute % 661793 * 115 + 2630) % 661793), 300254) then
	fn("J2_080")
	LPH_CRASH()
end

if (function()
	error("devirt: symbolic next pc/mode: (r17 Add 1) / 12 (at 12:7805)")
end)() ~= true then
	return 0
end

local flag5 = tbl._9269e561fbe1:HasItem(tbl._bc4751ef3bbc)

if flag5 then
	local v13 = tostring
	local bxor = bit32.bxor
	local bxor2 = bit32.bxor
	flag5 = tbl._9269e561fbe1:GetItem(tbl._bc4751ef3bbc, "_Y4jn36jkrrd1Xiv") == v13(bxor(bit32.bxor(v8, v9, n12), bit32.bxor(attribute, 3241885069, n11), bxor2(n10, n13, n16)))
end

if not flag5 and not identifyexecutor():match("^Synapse") then
	fn("J2_074")
	LPH_CRASH()
end

local bxor = bit32.bxor
tbl._9269e561fbe1:SetItem(tbl._bc4751ef3bbc, tostring(bit32.bxor(bit32.bxor(v8, n16, n11), bit32.bxor(n13, attribute, n12), bxor(3241926196, n10, v9))))
local flag6 = tbl._9269e561fbe1:HasItem(tbl._bc4751ef3bbc)

if flag6 then
	local v13 = tostring
	local bxor2 = bit32.bxor
	local bxor3 = bit32.bxor
	flag6 = tbl._9269e561fbe1:GetItem(tbl._bc4751ef3bbc, "_hf6z5t3WyiznYei") == v13(bxor2(bit32.bxor(v8, n16, n11), bit32.bxor(n13, attribute, n12), bxor3(3241926196, n10, v9)))
end

if not flag6 and not identifyexecutor():match("^Synapse") then
	fn("J2_057")
	LPH_CRASH()
end

if not (v12._1ade53a38697d26cba8e73d0 and v12._1ade53a38697d26cba8e73d0 == true and v12._1ade53a38697d26cba8e73d0 == true) then
	return 0
end

if not (v12._f786aa5dd3e809dd84c3a637 == true and true == v12._f786aa5dd3e809dd84c3a637 and false ~= v12._f786aa5dd3e809dd84c3a637 and fn2(v12._f786aa5dd3e809dd84c3a637, true, 889216) and not fn2(v12._f786aa5dd3e809dd84c3a637, false, 889216) and ({ [true] = true })[v12._f786aa5dd3e809dd84c3a637] and not ({ [false] = true })[v12._f786aa5dd3e809dd84c3a637]) then
	fn("Invalid key provided, check key validity or reset HWID! (" .. v12._6f29600cdb355c13bd0df9bc .. ")")
	return 0
end

if type(v12._5acc3a165500e09d5cc236c5) ~= "number" or type(v12._da4d27cb911674fee8397df7) ~= "number" or v12._5acc3a165500e09d5cc236c5 % 1 ~= 0 or v12._5acc3a165500e09d5cc236c5 < 0 or v12._5acc3a165500e09d5cc236c5 >= 1182893 or v12._5acc3a165500e09d5cc236c5 ~= (1066743 + 117 * (n13 // 10000 + 1) % 1182893 + 123 * v9 % 1182893 + 91 * v12._da4d27cb911674fee8397df7 % 1182893) % 1182893 then
	fn("J2_001")
	LPH_CRASH()
end

if type(v12._84e152801cc831d846c703af) ~= "number" or type(v12._b74f76bf92c1e9e364d55661) ~= "number" then
	fn("J2_128")
	LPH_CRASH()
end

do
	local flag7 = v12._84e152801cc831d846c703af % 1 ~= 0 or v12._84e152801cc831d846c703af < 0 or v12._84e152801cc831d846c703af >= 914745

	if not flag7 then
		local n17 = 79 * n11 % 914745 + 61 * v12._b74f76bf92c1e9e364d55661 % 914745
		flag7 = v12._84e152801cc831d846c703af ~= (709713 + 71 * #getgenv().SCRIPT_KEY % 914745 + n17) % 914745
	end

	local flag8

	if flag7 then
		flag8 = flag7
	else
		local n84e152801cc831d846c703af = v12._84e152801cc831d846c703af
		local n17 = 79 * n11 % 914745 + 61 * v12._b74f76bf92c1e9e364d55661 % 914745
		flag8 = not fn2(n84e152801cc831d846c703af, (709713 + 71 * #getgenv().SCRIPT_KEY % 914745 + n17) % 914745, 889216)
	end

	if flag8 then
		fn("J2_128")
		LPH_CRASH()
	end
end

local flag7

if type(v12._78a0e47e19d87b5971877c4d) ~= "number" or type(v12._1f321233cc45d359f2ef1920) ~= "number" or 2 * (v12._78a0e47e19d87b5971877c4d - 265) + 6 * (v12._1f321233cc45d359f2ef1920 - 544) ~= 2 * (2 * attribute + -2 * v8) + 6 * (0 * v9 + 4 * n10) then
	flag7 = true
elseif type(v12._78a0e47e19d87b5971877c4d) ~= "number" or type(v12._1909531d25dcd29476e4b258) ~= "number" then
	flag7 = true
else
	flag7 = false

	if 7 * (2 * attribute + -2 * v8) + 6 * (-1 * attribute + 5 * v8) ~= 7 * (v12._78a0e47e19d87b5971877c4d - 265) + 6 * (v12._1909531d25dcd29476e4b258 - -548) then
		flag7 = true
	end
end

if not flag7 and (type(v12._2c3dbc67535cf36fbe411d32) ~= "number" or type(v12._4e6292f83cc876ce99004e3b) ~= "number" or 3 * (v12._2c3dbc67535cf36fbe411d32 - 2967) + 6 * (v12._4e6292f83cc876ce99004e3b - -485) ~= 3 * (6 * n11 + -3 * attribute) + 6 * (2 * v9 + 2 * n10) or type(v12._4e6292f83cc876ce99004e3b) ~= "number" or type(v12._1f321233cc45d359f2ef1920) ~= "number" or 2 * (v12._4e6292f83cc876ce99004e3b - -485) + 4 * (v12._1f321233cc45d359f2ef1920 - 544) ~= 2 * (2 * v9 + 2 * n10) + 4 * (0 * v9 + 4 * n10)) then
	flag7 = true
end

if flag7 then
	fn("J2_115")
	LPH_CRASH()
end

local n5f3603a7bc703f1260521a85, n6a0365105bf66ea8146d0ee7, fa3c78e1266af1e04ff89996, n0c14a34917d3ef45df3713f1, n31c813a9a00ac1a17c5a6d88, n7d8d5393a4bf8d3840a39ddc, tbl4

do
	local n804b0cd89ccf34ccddc0786c = v12._804b0cd89ccf34ccddc0786c
	n5f3603a7bc703f1260521a85 = v12._5f3603a7bc703f1260521a85 or 0
	n6a0365105bf66ea8146d0ee7 = v12._6a0365105bf66ea8146d0ee7 or 0
	fa3c78e1266af1e04ff89996 = v12._fa3c78e1266af1e04ff89996 or 0
	n0c14a34917d3ef45df3713f1 = v12._0c14a34917d3ef45df3713f1 or 0
	n31c813a9a00ac1a17c5a6d88 = v12._31c813a9a00ac1a17c5a6d88 or 0
	n7d8d5393a4bf8d3840a39ddc = v12._7d8d5393a4bf8d3840a39ddc or 0
	tbl4 = {}
	local b74f76bf92c1e9e364d55661 = v12._b74f76bf92c1e9e364d55661

	if type(b74f76bf92c1e9e364d55661) ~= "number" or b74f76bf92c1e9e364d55661 % 1 ~= 0 or b74f76bf92c1e9e364d55661 < 0 or b74f76bf92c1e9e364d55661 >= 940061 or (b74f76bf92c1e9e364d55661 - (49 * v8 % 940061 + 81 * (n13 // 10000 + 1) % 940061 + 890807) % 940061) % 940061 ~= 0 then
		fn("J2_204")
		LPH_CRASH()
	end

	if type(v12._da4d27cb911674fee8397df7) ~= "number" or v12._da4d27cb911674fee8397df7 % 1 ~= 0 or v12._da4d27cb911674fee8397df7 < 0 or v12._da4d27cb911674fee8397df7 >= 809351 or (v12._da4d27cb911674fee8397df7 - (214665 + 85 * n10 % 809351 + 37 * (n13 // 10000 + 1) % 809351) % 809351) % 809351 ~= 0 then
		fn("J2_097")
		LPH_CRASH()
	end

	if type(v12._f0533cc517bec88bf17721e1) ~= "number" or type(v12._84e152801cc831d846c703af) ~= "number" or v12._f0533cc517bec88bf17721e1 % 1 ~= 0 or v12._f0533cc517bec88bf17721e1 < 0 or v12._f0533cc517bec88bf17721e1 >= 1018481 or (487171 + 15 * n10 % 1018481 + 125 * v8 % 1018481 + 47 * v12._84e152801cc831d846c703af % 1018481) % 1018481 ~= v12._f0533cc517bec88bf17721e1 or not fn2(v12._f0533cc517bec88bf17721e1, (487171 + 15 * n10 % 1018481 + 125 * v8 % 1018481 + 47 * v12._84e152801cc831d846c703af % 1018481) % 1018481, (1 - 2 * (3014504612 + 1280462684 + 0) % 4294967296) * (1 + ((2419059884 + 1744481963 + 178136233) % 4294967296 * 67108864 + (8366661812 + 223272780 + 0) % 4294967296) / 4503599627370496) * 2 ^ ((3422645900 + 13877266 + 858445172) % 4294967296 - 1023)) then
		fn("J2_060")
		LPH_CRASH()
	end

	if type(n804b0cd89ccf34ccddc0786c) == "number" and n804b0cd89ccf34ccddc0786c > 0 and os.time() > n804b0cd89ccf34ccddc0786c + 300 then
		fn("J2_100")
		LPH_CRASH()
	end
end

n += 17
tbl["ວभ\u{CFD}၃ຏဈ៳"]:SetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}", tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}") .. "y6e0dil3H8PEoI")
local n17
n17 = 0
local n18
n18 = 3
local now
now = os.clock()

if frame.Size.X.Scale ~= v9 or frame.Size.X.Offset ~= n10 then
	fn("J2_SOF9")
	LPH_CRASH()
end

do
	local n19 = (2097152 + (v12._f0533cc517bec88bf17721e1 - 15 * n10 % 1018481 + 47 * v12._84e152801cc831d846c703af % 1018481 + 125 * v8 % 1018481) % 1018481) % 4294967296
	local n20 = (1254795392 + bit32.bxor(n % 4294967296, 3495817888) + bit32.bxor(n19, 2933973557) + 8129004914) % 4294967296
	local n21 = n20 % 4294967296
	local v13 = table.pack(bit32.band(n21 + 2147974290, 4294967295))
	local v14 = table.pack(bit32.band(v13[1], 65535))
	local n22 = 3550193555 + bit32.band(65535 * v14[1] + bit32.lshift(bit32.band(65535 * bit32.rshift(v13[1], 16) + 65535 * v14[1], 65535), 16), 4294967295) % 4294967296
	local v15 = table.pack(bit32.band(bit32.bor(n21 + 2147974290, 780037235), 4294967295))
	local v16 = table.pack(bit32.band(v15[1], 65535))
	local n23 = (n22 + bit32.band(2 * v16[1] + bit32.lshift(bit32.band(2 * bit32.rshift(v15[1], 16) + 0 * v16[1], 65535), 16), 4294967295) % 4294967296 + 4259703802) % 4294967296
	local n24 = n20 % 4294967296
	local v17 = table.pack(bit32.band(n24 + 2024718921, 4294967295))
	local v18 = table.pack(bit32.band(v17[1], 65535))
	local n25 = 1681862644 + bit32.band(65535 * v18[1] + bit32.lshift(bit32.band(65535 * bit32.rshift(v17[1], 16) + 65535 * v18[1], 65535), 16), 4294967295) % 4294967296
	local v19 = table.pack(bit32.band(bit32.bor(n24 + 2024718921, 656782883), 4294967295))
	local v20 = table.pack(bit32.band(v19[1], 65535))
	local n26 = (n25 + bit32.band(2 * v20[1] + bit32.lshift(bit32.band(2 * bit32.rshift(v19[1], 16) + 0 * v20[1], 65535), 16), 4294967295) % 4294967296 + 6251289065) % 4294967296
	local n27 = n20 % 4294967296
	local v21 = bit32.bxor(1763213291, n27 + 3112931338)
	local v22 = table.pack(bit32.band(bit32.bnot(v21), 4294967295))
	local v23 = table.pack(bit32.band(v22[1], 65535))
	local n28 = 1941791039 + bit32.band(65535 * v23[1] + bit32.lshift(bit32.band(65535 * bit32.rshift(v22[1], 16) + 65535 * v23[1], 65535), 16), 4294967295) % 4294967296
	local v24 = table.pack(bit32.band(n27, 4294967295))
	local v25 = table.pack(bit32.band(v24[1], 65535))
	local n29 = bit32.band(24896 * v25[1] + bit32.lshift(bit32.band(24896 * bit32.rshift(v24[1], 16) + 29629 * v25[1], 65535), 16), 4294967295) % 4294967296
	local v26 = table.pack(bit32.band(bit32.bnot(n27), 4294967295))
	local v27 = table.pack(bit32.band(v26[1], 65535))
	local n30 = (n28 + n29 + bit32.band(24896 * v27[1] + bit32.lshift(bit32.band(24896 * bit32.rshift(v26[1], 16) + 29629 * v27[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
	local n31 = n20 % 4294967296
	local v28 = table.pack(bit32.band(n31 + 348262378, 4294967295))
	local v29 = table.pack(bit32.band(v28[1], 65535))
	local n32 = 1621421420 + bit32.band(33476 * v29[1] + bit32.lshift(bit32.band(33476 * bit32.rshift(v28[1], 16) + 2516 * v29[1], 65535), 16), 4294967295) % 4294967296
	local v30 = table.pack(bit32.band(bit32.band(3275292619, n31 + 348262378), 4294967295))
	local v31 = table.pack(bit32.band(v30[1], 65535))
	local n33 = bit32.band(64120 * v31[1] + bit32.lshift(bit32.band(64120 * bit32.rshift(v30[1], 16) + 60502 * v31[1], 65535), 16), 4294967295) % 4294967296
	local v32 = table.pack(bit32.band(bit32.bxor(3275292619, n31 + 348262378), 4294967295))
	local v33 = table.pack(bit32.band(v32[1], 65535))
	local v34 = tbl["ວभ\u{CFD}၃ຏဈ៳"]

	if n - (1 - 2 * n23) * (1 + (n30 * 67108864 + (n32 + n33 + bit32.band(32061 * v33[1] + bit32.lshift(bit32.band(32061 * bit32.rshift(v32[1], 16) + 63019 * v33[1], 65535), 16), 4294967295) % 4294967296) % 4294967296) / 4503599627370496) * 2 ^ (n26 - 1023) ~= #v34:GetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}") then
		fn("J2_MS15")
		LPH_CRASH()
	end
end

if getfenv()[4] ~= attribute or not fn3(getfenv()[4], part:GetAttribute("_20266a1d"), 300254) then
	fn("J2_RVM")
	LPH_CRASH()
end

if getfenv()[630] ~= v8 or not fn3(getfenv()[630], v8, 300254) or v8 .. "" ~= readfile(tbl._d48fe32d532a) or not fn2(v8 .. "", readfile(tbl._d48fe32d532a), 889216) then
	fn("J2_131")
	LPH_CRASH()
end

do
	local d4331beae313 = tbl._d4331beae313
	local flag8 = tbl._57ba0f5e430c:GetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.Small) ~= d4331beae313
	local flag9

	if flag8 then
		flag9 = flag8
	else
		local d4331beae3132 = tbl._d4331beae313
		flag9 = not fn2(tbl._57ba0f5e430c:GetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.Small), d4331beae3132, 889216)
	end

	if flag9 then
		fn("J2_072")
		LPH_CRASH()
	end
end

do
	local dd330ed2ab52 = tbl._dd330ed2ab52
	local flag8 = tbl._57ba0f5e430c:GetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.RightTrigger) ~= dd330ed2ab52
	local flag9

	if flag8 then
		flag9 = flag8
	else
		local dd330ed2ab522 = tbl._dd330ed2ab52
		flag9 = not fn2(tbl._57ba0f5e430c:GetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.RightTrigger), dd330ed2ab522, (1 - 2 * (6580501918 + 414177130 + 1595255544) % 4294967296) * (1 + ((1877604400 + 1350567888 + 1113505792) % 4294967296 * 67108864 + (1298259964 + 2996707332 + 0) % 4294967296) / 4503599627370496) * 2 ^ ((4366255520 + 1750085368 + 2473594746) % 4294967296 - 1023))
	end

	if flag9 then
		fn("J2_066")
		LPH_CRASH()
	end
end

tbl._57ba0f5e430c:SetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.Small, 0)
tbl._57ba0f5e430c:SetMotor(Enum.UserInputType.Gamepad8, Enum.VibrationMotor.RightTrigger, 0)

if delfile then
	delfile(tbl._d48fe32d532a)
end

if getfenv()[396] ~= bit32.bxor(n10 % 4294967295, n11 % 4294967295) then
	fn("J2_070")
	LPH_CRASH()
end

do
	local v13 = getfenv()[241]
	local v14 = bit32.bxor(attribute % 4294967295, v8 % 4294967295)
	local v15 = fn4(v9 % 4294967295, n11 % 4294967295)
	local flag8 = v13 ~= fn4(v14, v15)

	if not flag8 then
		local v16 = getfenv()[241]
		local v17 = bit32.bxor(attribute % 4294967295, v8 % 4294967295)
		local v18 = fn4(v9 % 4294967295, n11 % 4294967295)
		flag8 = not fn3(v16, fn4(v17, v18), 300254)
	end

	if flag8 then
		fn("J2_045")
		LPH_CRASH()
	end
end

if not (((v12._78a0e47e19d87b5971877c4d - 265) * 5 - (v12._1909531d25dcd29476e4b258 - -548) * -2) / 8 == attribute and (2 * (v12._1909531d25dcd29476e4b258 - -548) - -1 * (v12._78a0e47e19d87b5971877c4d - 265)) / 8 == v8 and fn3(((v12._1909531d25dcd29476e4b258 - -548) * 2 - (v12._78a0e47e19d87b5971877c4d - 265) * -1) / 8, v8, 300254) and fn3((5 * (v12._78a0e47e19d87b5971877c4d - 265) + 2 * (v12._1909531d25dcd29476e4b258 - -548)) / 8, attribute, 300254) and (5 * (v12._78a0e47e19d87b5971877c4d - 265) - -2 * (v12._1909531d25dcd29476e4b258 - -548)) / 8 == attribute and ((v12._78a0e47e19d87b5971877c4d - 265) * 5 - (v12._1909531d25dcd29476e4b258 - -548) * -2) / 8 == attribute and ((v12._78a0e47e19d87b5971877c4d - 265) * 5 - (v12._1909531d25dcd29476e4b258 - -548) * -2) / 8 == (5 * (v12._78a0e47e19d87b5971877c4d - 265) - -2 * (v12._1909531d25dcd29476e4b258 - -548)) / 8 and (-2 * (v12._1909531d25dcd29476e4b258 - -548) - 5 * (v12._78a0e47e19d87b5971877c4d - 265)) / -8 == ((v12._78a0e47e19d87b5971877c4d - 265) * 5 - (v12._1909531d25dcd29476e4b258 - -548) * -2) / 8) then
	return 0
end

if fn4(952084334, attribute % 4294967295) ~= bit32.bxor(952084334, attribute % 4294967295) or bit32.bxor(attribute % 4294967295, 3894672329) ~= fn4(attribute % 4294967295, 3894672329) then
	return 0
end

local n19, n20, v13, n21

do
	local n22 = n17 + 1
	local v14 = bit32.bxor(0, 1)
	local n23 = n18 + 1
	if fn5(n22, 255) ~= 1 or n22 + 16 ~= 17 or n22 ~= 1 then
		return 0
	end

	if #tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}") + 1271 ~= n then
		fn("J2_217")
		LPH_CRASH()
	end

	local n24 = now - os.clock()
	if not ((4 * (v12._4e6292f83cc876ce99004e3b - -485) + -2 * (v12._1f321233cc45d359f2ef1920 - 544)) / 8 == v9 and fn3((4 * (v12._4e6292f83cc876ce99004e3b - -485) + -2 * (v12._1f321233cc45d359f2ef1920 - 544)) / 8, v9, 300254) and (2 * (v12._1f321233cc45d359f2ef1920 - 544) + 0 * (v12._4e6292f83cc876ce99004e3b - -485)) / 8 == n10 and fn3((2 * (v12._1f321233cc45d359f2ef1920 - 544) + 0 * (v12._4e6292f83cc876ce99004e3b - -485)) / 8, n10, 300254)) then
		return 0
	end

	if not (((v12._1f321233cc45d359f2ef1920 - 544) * 2 - (v12._4e6292f83cc876ce99004e3b - -485) * 0) / 8 == n10 and fn2((2 * (v12._1f321233cc45d359f2ef1920 - 544) - 0 * (v12._4e6292f83cc876ce99004e3b - -485)) / 8, n10, 889216)) then
		return 0
	end

	if bit32.bxor(973328718, v8 % 4294967295) ~= fn4(973328718, v8 % 4294967295) or fn4(v8 % 4294967295, bit32.bxor(attribute % 4294967295, 3894672329)) ~= bit32.bxor(v8 % 4294967295, bit32.bxor(attribute % 4294967295, 3894672329)) then
		return 0
	end
	local n25 = n22 + 1
	local v15 = fn4(v14, 1)
	local n26 = n23 * 2
	if not (fn3(n25, 2, 300254) and bit32.band(n25, 255) == 2 and n25 * 2 == 4 and n25 == 2) then
		return 0
	end
	local n27 = n24 + os.clock()
	if not ((0 * (v12._4e6292f83cc876ce99004e3b - -485) - 2 * (v12._1f321233cc45d359f2ef1920 - 544)) / -8 == n10 and fn3((0 * (v12._4e6292f83cc876ce99004e3b - -485) - 2 * (v12._1f321233cc45d359f2ef1920 - 544)) / -8, n10, 300254)) then
		return 0
	end
	local flag8 = fn4(3905660115, v9 % 4294967295) ~= bit32.bxor(3905660115, v9 % 4294967295)

	if not flag8 then
		local bxor2 = bit32.bxor
		local v16 = bit32.bxor(attribute % 4294967295, 3894672329)
		local v17 = fn4(v8 % 4294967295, bit32.bxor(attribute % 4294967295, 3894672329))
		local v18 = fn4(v16, v17)
		local v19 = bxor2(v9 % 4294967295, v18)
		local bxor3 = bit32.bxor
		local v20 = bit32.bxor(attribute % 4294967295, 3894672329)
		local v21 = fn4(v8 % 4294967295, bit32.bxor(attribute % 4294967295, 3894672329))
		flag8 = v19 ~= fn4(v9 % 4294967295, bxor3(v20, v21))
	end

	if flag8 then
		return 0
	end
	local n28 = n25 + 5
	local v16 = bit32.bxor(v15, 5)
	local n29 = n26 - 1
	if n28 ~= 7 or fn3(n28, 7, 300254) == false or fn5(n28, 127) ~= 7 or n28 - 7 ~= 0 then
		return 0
	end
	local n30 = n27 - os.clock()
	if not ((v12._2c3dbc67535cf36fbe411d32 - -3 * (5 * (v12._78a0e47e19d87b5971877c4d - 265) + 2 * (v12._1909531d25dcd29476e4b258 - -548)) / 8 - 2967) / 6 == n11 and fn3(n11, (v12._2c3dbc67535cf36fbe411d32 - -3 * (-2 * (v12._1909531d25dcd29476e4b258 - -548) - 5 * (v12._78a0e47e19d87b5971877c4d - 265)) / -8 - 2967) / 6, 300254)) then
		return 0
	end
	local teleportSetting = tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("લุൡா")

	while teleportSetting ~= n11 do
		task.wait(1)
		teleportSetting = tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("લุൡா")
	end

	if not fn3(teleportSetting, n11, 300254) or not fn3(n11, teleportSetting, 300254) then
		while teleportSetting == n11 do
			task.wait(1)
		end
	end

	local bxor2 = bit32.bxor
	local bxor3 = bit32.bxor
	if fn4(fn4(952084334, attribute % 4294967295), n11 % 4294967295) ~= bxor2(bxor3(952084334, part:GetAttribute("_20266a1d") % 4294967295), n11 % 4294967295) then
		return 0
	end
	local n31 = n28 + 3
	local v17 = fn4(v16, 3)
	local n32 = n29 + 4
	if fn5(n31, 255) ~= 10 or n31 ~= 10 or fn3(n31, 10, 300254) == false then
		return 0
	end

	if v11.DisplayOrder ~= n10 or not fn3(v11.DisplayOrder, n10, 300254) then
		fn("J2_083")
		LPH_CRASH()
	end

	n19 = n30 + os.clock()
	local n33 = (v12._afb2dcd29b18a6cf13807181 - 146) / 12
	if not (fn3(#getgenv().SCRIPT_KEY, n33, 300254) and (v12._afb2dcd29b18a6cf13807181 - 146) / 12 == #getgenv().SCRIPT_KEY) then
		return 0
	end

	if tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("়ౚโ૨৻") ~= (n10 + n13 // 10000 + 1 + attribute + v9 + #getgenv().SCRIPT_KEY + n11 + n12 // 10000 + 1 + v8) / 100000 * 1000 * 0.2 // 1 or not fn3(tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("়ౚโ૨৻"), (#getgenv().SCRIPT_KEY + n13 // 10000 + 1 + n12 // 10000 + 1 + n10 + v9 + n11 + part:GetAttribute("_20266a1d") + v8) / 100000 * 1000 * 0.2 // 1, 300254) or not fn3((attribute + v8 + v9 + n10 + n12 // 10000 + 1 + n13 // 10000 + 1 + n11 + #getgenv().SCRIPT_KEY) / 100000 * 1000 * 0.2 // 1, tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("়ౚโ૨৻"), 300254) then
		fn("J2_SOF")
		LPH_CRASH()
	end

	if bit32.bxor(bit32.bxor(973328718, v8 % 4294967295), #getgenv().SCRIPT_KEY) ~= fn4(fn4(973328718, v8 % 4294967295), #getgenv().SCRIPT_KEY) then
		return 0
	end
	n20 = n31 + 7
	v13 = bit32.bxor(v17, 7)
	n21 = n32 * 3 - 1
end

if not (v11.DisplayOrder == n10 or fn3(v11.DisplayOrder, n10, 300254)) then
	return 0
end

local n22 = 7 * v12._f8f3063e45273d88d537a22e + 7376161

if configuration:GetAttribute("_32d15eeff60c") ~= n22 then
	fn("J2_129")
	LPH_CRASH()
end

local f8f3063e45273d88d537a22e = v12._f8f3063e45273d88d537a22e

if ((5 * (v12._78a0e47e19d87b5971877c4d - 265) - -2 * (v12._1909531d25dcd29476e4b258 - -548)) / 8 + ((v12._1909531d25dcd29476e4b258 - -548) * 2 - (v12._78a0e47e19d87b5971877c4d - 265) * -1) / 8 + (4 * (v12._4e6292f83cc876ce99004e3b - -485) + -2 * (v12._1f321233cc45d359f2ef1920 - 544)) / 8 + (2 * (v12._1f321233cc45d359f2ef1920 - 544) + 0 * (v12._4e6292f83cc876ce99004e3b - -485)) / 8 + n12 // 10000 + 1 + n13 // 10000 + 1 + (v12._2c3dbc67535cf36fbe411d32 - 2967 - -3 * (5 * (v12._78a0e47e19d87b5971877c4d - 265) + 2 * (v12._1909531d25dcd29476e4b258 - -548)) / 8) / 6 + #getgenv().SCRIPT_KEY) / 100000 * 1000 * 0.2 // 1 * 7 % 803921 ~= f8f3063e45273d88d537a22e then
	return 0
end

do
	local thread = coroutine.create(function()
		return 17
	end)

	local flag8 = tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("લุൡா") ~= n11

	if not flag8 then
		local teleportSetting = tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("લุൡா")
		local v14 = table.pack(8703)
		flag8 = not fn3(teleportSetting, n11, (1 - 2 * (1409322624 + 2885644672 + 0) % 4294967296) * (1 + ((2698228989 + 2147483648 + bit32.band(46333 * v14[1] + bit32.lshift(bit32.band(3029575871 + 8403 * v14[1], 65535), 16), 4294967295) % 4294967296 + 969688064) % 4294967296 * 67108864 + (8566640456 + 23294136 + 0) % 4294967296) / 4503599627370496) * 2 ^ ((4050949249 + 451306428 + 4087679956) % 4294967296 - 1023))
	end

	if flag8 or not fn3(n11, tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("લุൡா"), 300254) then
		fn("J2_180")
		LPH_CRASH()
	end

	local v14, v15 = coroutine.resume(thread)
	if not v14 or v15 ~= n20 then
		return
	end
end

if fn4(attribute % 4294967295, v8 % 4294967295, v9 % 4294967295, 3894672329) ~= bit32.bxor(attribute % 4294967295, v8 % 4294967295, v9 % 4294967295, 3894672329) then
	return
end

local n23

do
	local n24 = 0

	if not proxy or type(proxy) ~= "userdata" or rawequal(proxy, nil) then
		fn("J2_107")
		LPH_CRASH()
	end

	if not intValue or typeof(intValue) ~= "Instance" or intValue.ClassName ~= "IntValue" then
		fn("J2_D1")
		LPH_CRASH()
	end

	local flag8 = v13 == fn4(fn4(fn4(fn4(1, 1), 5), 3), 7)
	local v14

	if flag8 then
		local v15 = table.pack(64494)
		v14 = fn3(v13, 1, (1 - 2 * (1931662116 + 2363305180 + 0) % 4294967296) * (1 + ((6517714486 + 4098067402 + 2278876160) % 4294967296 * 67108864 + (5537084160 + 3052850432 + 0) % 4294967296) / 4503599627370496) * 2 ^ ((2147483647 + 2147483648 + bit32.band(65535 * v15[1] + bit32.lshift(bit32.band(4294836225 + 32767 * v15[1], 65535), 16), 4294967295) % 4294967296) % 4294967296 - 1023))
	else
		v14 = flag8
	end

	if not (v14 and v13 == 1) then
		return 0
	end
	local n25 = n24 + 1
	if not (fn3(n20, 17, 300254) and n20 == 17 and bit32.band(n20, 255) == 17 and n20 + 17 == 34 and n20 * 2 == 34 and n20 - 17 == 0) then
		return 0
	end
	local n26 = n25 + 1
	if not (17 == n20 and fn3(17, n20, 300254) and n20 % 4294967296 == 17 and fn5(n20, 31) == 17) then
		return 0
	end
	local n27 = n26 + 1
	local bxor2 = bit32.bxor
	if fn4(fn4(952084334, attribute % 4294967295), n11 % 4294967295) ~= bxor2(bit32.bxor(952084334, attribute % 4294967295), n11 % 4294967295) then
		return 0
	end
	local n28 = n27 + 1
	if not (bit32.bxor(bit32.bxor(973328718, v8 % 4294967295), #getgenv().SCRIPT_KEY) == fn4(fn4(973328718, v8 % 4294967295), #getgenv().SCRIPT_KEY) and fn3(bit32.bxor(bit32.bxor(973328718, v8 % 4294967295), #getgenv().SCRIPT_KEY), bit32.bxor(bit32.bxor(973328718, v8 % 4294967295), #getgenv().SCRIPT_KEY), 300254)) then
		return 0
	end
	local n29 = n28 + 1
	if fn4(3905660115, v9 % 4294967295) ~= bit32.bxor(3905660115, v9 % 4294967295) then
		return 0
	end
	local n30 = n19 - os.clock()
	local n31 = n29 + 1
	if not (n30 < 0 and n30 > -2 and n30 < 0 == true) then
		return 0
	end
	n23 = n31 + 1
end

if intValue.Name ~= (v8 + part:GetAttribute("_20266a1d") + v9 + n12 // 10000 + 1 + n11 + #getgenv().SCRIPT_KEY + n13 // 10000 + 1 + n10) / 100000 * 1000 * 0.2 // 1 .. "" or not fn3(intValue.Name, (attribute + v8 + v9 + n10 + n12 // 10000 + 1 + n13 // 10000 + 1 + n11 + #getgenv().SCRIPT_KEY) / 100000 * 1000 * 0.2 // 1 .. "", 300254) then
	fn("J2_055")
	LPH_CRASH()
end

local flag8
flag8 = false

if not (fn4(n20, 17) == 0 and fn5((-1 - n20) % 4294967296, 255) == 238) then
	return 0
end

if not ({
	[104] = false,
	[106] = false,
	[107] = false,
	[112] = false,
	[109] = false,
	[105] = false,
	[110] = false,
	[111] = true,
	[108] = false,
})[n23 + 104] then
	fn("J2_269")
	LPH_CRASH()
end

if not (({ [32] = true })[n21] or ({
	[15] = false,
	[12] = false,
	[4] = false,
	[14] = false,
	[31] = false,
	[7] = false,
	[8] = false,
	[33] = false,
	[11] = false,
	[22] = false,
	[6] = false,
	[24] = false,
	[3] = false,
	[9] = false,
	[48] = false,
	[0] = false,
	[16] = false,
})[n21]) then
	fn("J2_061")
	LPH_CRASH()
end

if not ({
	[-32] = false,
	[0] = false,
	[-10] = false,
	[-31] = false,
	[-24] = false,
	[-40] = false,
	[-3] = false,
	[-17] = false,
	[-38] = false,
	[-7] = false,
	[-39] = true,
})[-(n23 + n21)] then
	fn("J2_018")
	LPH_CRASH()
end

if fn3(fn9({}, 688260), "", 300254) or fn3(fn9({}, (1 - 2 * (2697545184 + 423334560 + 1174087552) % 4294967296) * (1 + ((4652775914 + 3293113366 + 665033728) % 4294967296 * 67108864 + (3332380296 + 3667937928 + 5884583664) % 4294967296) / 4503599627370496) * 2 ^ ((7113134512 + 2968799328 + 2802969090) % 4294967296 - 1023)), " ", 300254) then
	fn("J2_MS16")
	LPH_CRASH()
end

if fn3(fn9({}, 688260), fn9({}, 688260), 300254) then
	fn("J2_035")
	LPH_CRASH()
end

if fn3(fn9({}, 688260), fn9({}, 688260), 300254) then
	fn("J2_159")
	LPH_CRASH()
end

local fn11

fn11 = function()
end

local function fn12()
end

if fn3(fn9(fn11, 688260), fn9(fn12, 688260), (1 - 2 * (4196372348 + 2822471126 + 5866058414) % 4294967296) * (1 + ((5359470840 + 1693254920 + 1546964992) % 4294967296 * 67108864 + (5065182728 + 3524751864 + 0) % 4294967296) / 4503599627370496) * 2 ^ ((4981729242 + 3607994170 + 212221) % 4294967296 - 1023)) then
	fn("J2_CFE_D")
	LPH_CRASH()
end

if fn3(fn9(coroutine.create(function()
end), 688260), fn9(coroutine.create(function()
end), (1 - 2 * (3011601728 + 1283365568 + 0) % 4294967296) * (1 + (20988416 * 67108864 + (3804451848 + 1074070632 + 3711412112) % 4294967296) / 4503599627370496) * 2 ^ ((4388882192 + 473935208 + 3727118234) % 4294967296 - 1023)), 300254) then
	fn("J2_CFM_D")
	LPH_CRASH()
end

tbl["ວभ\u{CFD}၃ຏဈ៳"]:SetTeleportSetting("়ౚโ૨৻", 111)

if not fn3(tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("়ౚโ૨৻"), 111, 300254) then
	fn("J2_RV4")
	LPH_CRASH()
end

if part:GetAttribute("_f2825c40") ~= attribute % 999999 or not fn2(part:GetAttribute("_f2825c40"), attribute % 999999, 889216) then
	fn("J2_160")
	LPH_CRASH()
end

if part:GetAttribute("_46cc8f26") ~= v9 % 999999 or not fn3(part:GetAttribute("_46cc8f26"), v9 % 999999, (1 - 2 * (2514402860 + 1780564436 + 0) % 4294967296) * (1 + ((6400037760 + 3753915713 + 2740704575) % 4294967296 * 67108864 + (5370783000 + 3219151592 + 0) % 4294967296) / 4503599627370496) * 2 ^ ((5191686095 + 3544889788 + 4148327046) % 4294967296 - 1023)) then
	fn("J2_MS07")
	LPH_CRASH()
end

if part:GetAttribute("_8a02572d") ~= n10 % 999999 or not fn3(part:GetAttribute("_8a02572d"), n10 % 999999, 300254) then
	fn("J2_084")
	LPH_CRASH()
end

if part:GetAttribute("_ba3993a3") ~= bit32.bxor(n12 % 999999, n13 % 999999) or not fn3(part:GetAttribute("_ba3993a3"), bit32.bxor(n12 % 999999, n13 % 999999), 300254) or fn3(part:GetAttribute("_ba3993a3"), bit32.bxor(n12 % 999999, n13 % 999999), 300254) == false then
	fn("J2_201")
	LPH_CRASH()
end

if sound.Name ~= "_72c0241c46ed" .. n11 % 10000 or not fn3(sound.Name, "_72c0241c46ed" .. n11 % 10000, 300254) then
	fn("J2_075")
	LPH_CRASH()
end

if math.abs(sound.TimePosition - attribute % 1000 / 10) > 0.1 or not fn3(sound.TimePosition * 10 // 1, attribute % 1000, 300254) then
	fn("J2_112")
	LPH_CRASH()
end

do
	local teleportData

	repeat
		task.wait(0)
		teleportData = teleportOptions:GetTeleportData()
	until teleportData ~= nil

	if fn3(teleportData, nil, 300254) or not fn3(teleportData ~= nil, true, 300254) then
		fn("J2_033")
		LPH_CRASH()
	end

	if teleportData._9b5747a4d41e ~= bit32.bxor(bit32.bxor(attribute % 999999, v9 % 999999), n13 % 999999) or not fn3(teleportData._9b5747a4d41e, bit32.bxor(bit32.bxor(attribute % 999999, v9 % 999999), n13 % 999999), 300254) or fn3(teleportData._9b5747a4d41e, bit32.bxor(bit32.bxor(attribute % 999999, v9 % 999999), n13 % 999999), 300254) == false then
		fn("J2_126")
		LPH_CRASH()
	end

	if (teleportData._f2b7ae87878d ~= tostring(n12 % 10000) .. tostring(n13 % 10000) or not fn3(teleportData._f2b7ae87878d, tostring(n12 % 10000) .. tostring(n13 % 10000), 300254)) == true then
		fn("J2_143")
		LPH_CRASH()
	end

	if (teleportData._475dc6c1288e ~= bit32.bxor(n12 % 999999, n11 % 999999) or not fn3(teleportData._475dc6c1288e, bit32.bxor(n12 % 999999, n11 % 999999), 300254)) ~= false then
		fn("J2_210")
		LPH_CRASH()
	end

	if (teleportData._e5c817379b21 ~= tostring(attribute % 999999) .. "_" .. tostring(v8 % 999999) or not fn3(teleportData._e5c817379b21, tostring(attribute % 999999) .. "_" .. tostring(v8 % 999999), 300254)) ~= false then
		fn("J2_012")
		LPH_CRASH()
	end

	if teleportData._ebff79784f31 ~= v9 % 999999 or teleportData._d3db5f30f1b2 ~= n10 % 999999 or not fn3(teleportData._ebff79784f31, v9 % 999999, 300254) or not fn3(teleportData._d3db5f30f1b2, n10 % 999999, 300254) then
		fn("J2_MS10")
		LPH_CRASH()
	end

	local e3864c1cb2f2 = teleportData._e3864c1cb2f2
	local flag9 = os.time() - e3864c1cb2f2 > 60
	local flag10

	if flag9 then
		flag10 = flag9
	else
		local e3864c1cb2f22 = teleportData._e3864c1cb2f2
		flag10 = not fn3(os.time() - e3864c1cb2f22 > 60, false, 300254)
	end

	if flag10 then
		fn("J2_002")
		LPH_CRASH()
	end
end

if not fn3(debug.setmemorycategory("_msbwebIW" .. tostring((v9 % 661793 * 115 + 2630) % 661793)), "_msbwebIW" .. tostring((n11 % 661793 * 115 + 2630) % 661793), 300254) then
	fn("J2_147")
	LPH_CRASH()
end

do
	local n98c4655efe1986228bd1ad17 = v12._98c4655efe1986228bd1ad17
	local flag9 = type(n98c4655efe1986228bd1ad17) == "string" and #n98c4655efe1986228bd1ad17 == 32
	local n24 = -1

	if flag9 then
		n24 = 216613

		for i = 1, 32 do
			n24 = (n24 * 257 + n98c4655efe1986228bd1ad17:byte(i)) % 1048573
		end
	end

	local n25 = (2097152 + (v12._5acc3a165500e09d5cc236c5 - 117 * (n13 // 10000 + 1) % 1182893 + 91 * v12._da4d27cb911674fee8397df7 % 1182893 + 123 * v9 % 1182893) % 1182893) % 4294967296
	local n26 = (1326202796 + bit32.bxor((4194304 + n24) % 4294967296, 3495817888) + bit32.bxor(n25, 2933973557) + bit32.bxor(n % 4294967296, 2372129226) + 6281248860) % 4294967296
	local n27 = n26 % 4294967296
	local v14 = table.pack(bit32.band(n27 + 34013666, 4294967295))
	local v15 = table.pack(bit32.band(v14[1], 65535))
	local n28 = bit32.band(46770 * v15[1] + bit32.lshift(bit32.band(46770 * bit32.rshift(v14[1], 16) + 10268 * v15[1], 65535), 16), 4294967295) % 4294967296
	local v16 = bit32.bxor(3553270047, n27 + 34013666)
	local v17 = table.pack(bit32.band(bit32.bnot(v16), 4294967295))
	local v18 = table.pack(bit32.band(v17[1], 65535))
	local n29 = bit32.band(65535 * v18[1] + bit32.lshift(bit32.band(65535 * bit32.rshift(v17[1], 16) + 32767 * v18[1], 65535), 16), 4294967295) % 4294967296
	local v19 = table.pack(bit32.band(bit32.bnot(n27 + 34013666), 4294967295))
	local v20 = table.pack(bit32.band(v19[1], 65535))
	local n30 = (2820454065 + n28 + n29 + bit32.band(46770 * v20[1] + bit32.lshift(bit32.band(46770 * bit32.rshift(v19[1], 16) + 43036 * v20[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
	local n31 = n26 % 4294967296
	local v21 = table.pack(bit32.band(n31 + 1267178791, 4294967295))
	local v22 = table.pack(bit32.band(v21[1], 65535))
	local n32 = 4043011428 + bit32.band(40414 * v22[1] + bit32.lshift(bit32.band(40414 * bit32.rshift(v21[1], 16) + 58566 * v22[1], 65535), 16), 4294967295) % 4294967296
	local v23 = table.pack(bit32.band(bit32.band(n31 + 1267178791, 491466862), 4294967295))
	local v24 = table.pack(bit32.band(v23[1], 65535))
	local n33 = bit32.band(50244 * v24[1] + bit32.lshift(bit32.band(50244 * bit32.rshift(v23[1], 16) + 13938 * v24[1], 65535), 16), 4294967295) % 4294967296
	local v25 = table.pack(bit32.band(bit32.bxor(491466862, n31 + 1267178791), 4294967295))
	local v26 = table.pack(bit32.band(v25[1], 65535))
	local n34 = (n32 + n33 + bit32.band(25123 * v26[1] + bit32.lshift(bit32.band(25123 * bit32.rshift(v25[1], 16) + 6969 * v26[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
	local n35 = n26 % 4294967296
	local v27 = table.pack(bit32.band(n35 + 2161076981, 4294967295))
	local v28 = table.pack(bit32.band(v27[1], 65535))
	local n36 = 2469915114 + bit32.band(16957 * v28[1] + bit32.lshift(bit32.band(16957 * bit32.rshift(v27[1], 16) + 6115 * v28[1], 65535), 16), 4294967295) % 4294967296
	local v29 = table.pack(bit32.band(bit32.band(n35 + 2161076981, 1394246194), 4294967295))
	local v30 = table.pack(bit32.band(v29[1], 65535))
	local n37 = bit32.band(31622 * v30[1] + bit32.lshift(bit32.band(31622 * bit32.rshift(v29[1], 16) + 53305 * v30[1], 65535), 16), 4294967295) % 4294967296
	local v31 = table.pack(bit32.band(bit32.bxor(1394246194, n35 + 2161076981), 4294967295))
	local v32 = table.pack(bit32.band(v31[1], 65535))
	local n38 = (n36 + n37 + bit32.band(48580 * v32[1] + bit32.lshift(bit32.band(48580 * bit32.rshift(v31[1], 16) + 59420 * v32[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
	local n39 = n26 % 4294967296
	local v33 = table.pack(bit32.band(n39 + 1639442748, 4294967295))
	local v34 = table.pack(bit32.band(v33[1], 65535))
	local n40 = bit32.band(0 * v34[1] + bit32.lshift(bit32.band(0 * bit32.rshift(v33[1], 16) + 32768 * v34[1], 65535), 16), 4294967295) % 4294967296
	local v35 = bit32.bxor(863731833, n39 + 1639442748)
	local v36 = table.pack(bit32.band(bit32.bnot(v35), 4294967295))
	local v37 = table.pack(bit32.band(v36[1], 65535))

	if n ~= (1 - 2 * n30) * (1 + (n38 * 67108864 + (7288201245 + n40 + bit32.band(65535 * v37[1] + bit32.lshift(bit32.band(65535 * bit32.rshift(v36[1], 16) + 32767 * v37[1], 65535), 16), 4294967295) % 4294967296 + 1301733346) % 4294967296) / 4503599627370496) * 2 ^ (n34 - 1023) then
		fn("J2_046")
		LPH_CRASH()
	end
end

if n - 963 ~= #tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}") then
	fn("J2_117")
	LPH_CRASH()
end

if tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("લุൡா") ~= n11 or not fn3(tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("લุൡா"), n11, 300254) or not fn3(n11, tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("લุൡா"), 300254) then
	fn("J2_CFM_S")
	LPH_CRASH()
end

if not ({
	[bit32.bxor(212992, 794784, 53418, 398083)] = true,
	[0] = false,
	false,
	[53418] = false,
	[6656] = false,
	[46752] = false,
	[56869] = false,
})[fn4(n21 * 6656, n20 * 46752, v13 * 53418, n23 * 56869)] then
	fn("J2_222")
	LPH_CRASH()
end

do
	local n24 = (2097152 + (v12._b74f76bf92c1e9e364d55661 - 81 * (n13 // 10000 + 1) % 940061 - 49 * v8 % 940061) % 940061) % 4294967296
	local n25 = (1363454832 + bit32.bxor(n % 4294967296, 3495817888) + bit32.bxor(n24, 2933973557) + 8129004914) % 4294967296
	local n26 = n25 % 4294967296
	local v14 = table.pack(bit32.band(n26 + 3947871176, 4294967295))
	local v15 = table.pack(bit32.band(v14[1], 65535))
	local n27 = 2491095430 + bit32.band(1314 * v15[1] + bit32.lshift(bit32.band(1314 * bit32.rshift(v14[1], 16) + 29562 * v15[1], 65535), 16), 4294967295) % 4294967296
	local v16 = table.pack(bit32.band(bit32.band(2688982035, n26 + 3947871176), 4294967295))
	local v17 = table.pack(bit32.band(v16[1], 65535))
	local n28 = bit32.band(62908 * v17[1] + bit32.lshift(bit32.band(62908 * bit32.rshift(v16[1], 16) + 6411 * v17[1], 65535), 16), 4294967295) % 4294967296
	local v18 = table.pack(bit32.band(bit32.bxor(2688982035, n26 + 3947871176), 4294967295))
	local v19 = table.pack(bit32.band(v18[1], 65535))
	local n29 = (n27 + n28 + bit32.band(64223 * v19[1] + bit32.lshift(bit32.band(64223 * bit32.rshift(v18[1], 16) + 35973 * v19[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
	local n30 = n25 % 4294967296
	local v20 = table.pack(bit32.band(n30 + 1235359690, 4294967295))
	local v21 = table.pack(bit32.band(v20[1], 65535))
	local n31 = 446176581 + bit32.band(47643 * v21[1] + bit32.lshift(bit32.band(47643 * bit32.rshift(v20[1], 16) + 15833 * v21[1], 65535), 16), 4294967295) % 4294967296
	local v22 = table.pack(bit32.band(bit32.band(4271438879, n30 + 1235359690), 4294967295))
	local v23 = table.pack(bit32.band(v22[1], 65535))
	local n32 = bit32.band(35786 * v23[1] + bit32.lshift(bit32.band(35786 * bit32.rshift(v22[1], 16) + 33868 * v23[1], 65535), 16), 4294967295) % 4294967296
	local v24 = table.pack(bit32.band(bit32.bxor(4271438879, n30 + 1235359690), 4294967295))
	local v25 = table.pack(bit32.band(v24[1], 65535))
	local n33 = (n31 + n32 + bit32.band(17894 * v25[1] + bit32.lshift(bit32.band(17894 * bit32.rshift(v24[1], 16) + 49702 * v25[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
	local n34 = n25 % 4294967296
	local v26 = table.pack(bit32.band(n34 + 1102035126, 4294967295))
	local v27 = table.pack(bit32.band(v26[1], 65535))
	local n35 = 1064071016 + bit32.band(18280 * v27[1] + bit32.lshift(bit32.band(18280 * bit32.rshift(v26[1], 16) + 2155 * v27[1], 65535), 16), 4294967295) % 4294967296
	local v28 = table.pack(bit32.band(bit32.band(n34 + 1102035126, 4144306433), 4294967295))
	local v29 = table.pack(bit32.band(v28[1], 65535))
	local n36 = bit32.band(28976 * v29[1] + bit32.lshift(bit32.band(28976 * bit32.rshift(v28[1], 16) + 61225 * v29[1], 65535), 16), 4294967295) % 4294967296
	local v30 = table.pack(bit32.band(bit32.bxor(4144306433, n34 + 1102035126), 4294967295))
	local v31 = table.pack(bit32.band(v30[1], 65535))
	local n37 = (n35 + n36 + bit32.band(47257 * v31[1] + bit32.lshift(bit32.band(47257 * bit32.rshift(v30[1], 16) + 63380 * v31[1], 65535), 16), 4294967295) % 4294967296) % 4294967296
	local n38 = n25 % 4294967296
	local v32 = table.pack(bit32.band(n38 + 2023370069, 4294967295))
	local v33 = table.pack(bit32.band(v32[1], 65535))
	local n39 = 3423724288 + bit32.band(35960 * v33[1] + bit32.lshift(bit32.band(35960 * bit32.rshift(v32[1], 16) + 18265 * v33[1], 65535), 16), 4294967295) % 4294967296
	local v34 = table.pack(bit32.band(bit32.band(n38 + 2023370069, 764480928), 4294967295))
	local v35 = table.pack(bit32.band(v34[1], 65535))
	local n40 = bit32.band(59152 * v35[1] + bit32.lshift(bit32.band(59152 * bit32.rshift(v34[1], 16) + 29004 * v35[1], 65535), 16), 4294967295) % 4294967296
	local v36 = table.pack(bit32.band(bit32.bxor(764480928, n38 + 2023370069), 4294967295))
	local v37 = table.pack(bit32.band(v36[1], 65535))

	if n ~= (1 - 2 * n29) * (1 + (n37 * 67108864 + (n39 + n40 + bit32.band(29577 * v37[1] + bit32.lshift(bit32.band(29577 * bit32.rshift(v36[1], 16) + 47270 * v37[1], 65535), 16), 4294967295) % 4294967296) % 4294967296) / 4503599627370496) * 2 ^ (n33 - 1023) then
		fn("J2_172")
		LPH_CRASH()
	end
end

if fn3(1, 2, 300254, tbl2) ~= tbl3 then
	fn("J2_176")
	LPH_CRASH()
end

if fn2(1, 2, 889216, tbl2) ~= tbl3 then
	fn("J2_CFE_S")
	LPH_CRASH()
end

if fn2(0, 1, 889216) ~= false == true then
	fn("J2_CFE_S")
	LPH_CRASH()
end

if fn3(1, 1, 300254) ~= true then
	fn("J2_010")
	LPH_CRASH()
end

if fn3(0, 1, 300254) ~= false == true then
	fn("J2_MS09")
	LPH_CRASH()
end

if fn2(1, 1, 889216) ~= true then
	fn("J2_208")
	LPH_CRASH()
end

if fn3(1, 1, 300254) ~= true then
	fn("J2_015")
	LPH_CRASH()
end

if fn3(0, 1, 300254) ~= false == true then
	fn("J2_176")
	LPH_CRASH()
end

if n ~= 2991 then
	fn("J2_101")
	LPH_CRASH()
end

if #tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("५\u{B79}\u{B0E}ቧഹ\u{CD0}") ~= 2070 then
	fn("J2_MS06")
	LPH_CRASH()
end

flag2 = false
local flag9 = tbl._9269e561fbe1:HasItem(tbl._bc4751ef3bbc)

if flag9 then
	local v14 = tostring
	local bxor2 = bit32.bxor
	local bxor3 = bit32.bxor
	flag9 = tbl._9269e561fbe1:GetItem(tbl._bc4751ef3bbc, "_ajMhPgrrsiz4nAL") == v14(bxor2(bit32.bxor(v8, n16, n11), bit32.bxor(n13, attribute, n12), bxor3(3241926196, n10, v9)))
end

if not flag9 and not identifyexecutor():match("^Synapse") then
	fn("J2_049")
	LPH_CRASH()
end

local bxor2 = bit32.bxor
tbl._9269e561fbe1:SetItem(tbl._bc4751ef3bbc, tostring(bit32.bxor(bit32.bxor(n10, v9, n13), bit32.bxor(3241967199, v8, n16), bxor2(n11, attribute, n12))))

do
	local flag10 = tbl._9269e561fbe1:GetItem(tbl._bc4751ef3bbc, "_nqerbDh3yAkbpI6") == "_nqerbDh3yAkbpI6"
	local flag11

	if flag10 then
		flag11 = flag10
	else
		local v14 = tostring
		local bxor3 = bit32.bxor
		local bxor4 = bit32.bxor
		flag11 = tbl._9269e561fbe1:GetItem(tbl._bc4751ef3bbc, "_nqerbDh3yAkbpI6") ~= v14(bxor3(bit32.bxor(n10, v9, n13), bit32.bxor(3241967199, v8, n16), bxor4(n11, attribute, n12)))
	end

	if flag11 and not identifyexecutor():match("^Synapse") then
		fn("J2_EQP2")
		LPH_CRASH()
	end
end

if fn3(v12._2c771ebd63a3a048f15b8a39, "_4de28df3a746472decfebbec", 300254) then
	if restorefunction then
		pcall(restorefunction, request)
	end

	local value = 0
	debug.setmemorycategory("_3681420007e9_" .. "cfPq" .. "|" .. tostring(18) .. ".3WRC")
	local configuration2 = Instance.new("Configuration")
	configuration2:SetAttribute("_28999558fcce", false)
	configuration2:SetAttribute("_f35f9b207399", 0)
	configuration2:SetAttribute("_61e7703507f2", 0)
	configuration2:SetAttribute("_c68a84bd5483", false)
	local flag10 = false
	local folder = Instance.new("Folder")
	local intValue2 = Instance.new("IntValue", folder)
	intValue2.Name = "_dab6fb1c7a18"
	intValue2.Value = 0
	local boolValue = Instance.new("BoolValue", folder)
	boolValue.Name = "_68519478662d"
	boolValue.Value = false
	local intValue3 = Instance.new("IntValue", folder)
	intValue3.Name = "_d20fbb6ad09b"
	intValue3.Value = 0
	local boolValue2 = Instance.new("BoolValue", folder)
	boolValue2.Name = "_7caa484c9e0c"
	boolValue2.Value = false

	task.spawn(function()
		flag10 = true
		configuration2:SetAttribute("_28999558fcce", true)
		boolValue.Value = true
		local n24 = ((5 * (v12._78a0e47e19d87b5971877c4d - 265) + 2 * (v12._1909531d25dcd29476e4b258 - -548)) / 8 + (-1 * (v12._78a0e47e19d87b5971877c4d - 265) - 2 * (v12._1909531d25dcd29476e4b258 - -548)) / -8 + (4 * (v12._4e6292f83cc876ce99004e3b - -485) - 2 * (v12._1f321233cc45d359f2ef1920 - 544)) / 8 + ((v12._1f321233cc45d359f2ef1920 - 544) * 2 - (v12._4e6292f83cc876ce99004e3b - -485) * 0) / 8 + n12 // 10000 + 1 + n13 // 10000 + 1 + (v12._2c3dbc67535cf36fbe411d32 + 3 * (5 * (v12._78a0e47e19d87b5971877c4d - 265) + 2 * (v12._1909531d25dcd29476e4b258 - -548)) / 8 - 2967) / 6 + #getgenv().SCRIPT_KEY) * 0.2 // 1

		if type(n24) ~= "number" or not rawequal(n24, n24) then
			fn("J2_089")
			LPH_CRASH()
		end

		if not (not (n24 * 0 ~= 0) and not (n24 + 0 ~= n24)) then
			fn("J2_089")
			LPH_CRASH()
		end

		if (n24 // 1 ~= n24 or n24 - n24 ~= 0) == true then
			fn("J2_089")
			LPH_CRASH()
		end

		if not tostring(n24):match("^%-?%d+$") == true then
			fn("J2_100C")
			LPH_CRASH()
		end

		if n24 < 0 == true then
			fn("J2_073")
			LPH_CRASH()
		end

		if n24 > 99999999 then
			fn("J2_073")
			LPH_CRASH()
		end

		if n24 % 1 ~= 0 then
			fn("J2_073")
			LPH_CRASH()
		end

		local tbl5 = {
			["4"] = 0,
			["8"] = 1,
			["2"] = 2,
			["6"] = 3,
			["7"] = 4,
			["5"] = 5,
			f = 6,
			c = 7,
			b = 8,
			a = 9,
			d = 10,
			["1"] = 11,
			["0"] = 12,
			["3"] = 13,
			e = 14,
			["9"] = 15,
		}

		local tbl6 = {}

		for i = 0, 15 do
			local v14 = table.create(16)

			for i2 = 0, 15 do
				local n25 = 0
				local n26 = 1
				local n27 = i
				local n28 = i2

				for i3 = 0, 3 do
					local n29 = n27 % 2
					local n30 = n28 % 2

					if n29 ~= n30 then
						n25 += n26
					end

					n27 = (n27 - n29) / 2
					n28 = (n28 - n30) / 2
					n26 *= 2
				end

				v14[i2] = n25
			end

			tbl6[i] = v14
		end

		local function fn13(arg, arg2)
			return tbl6[arg // 16][arg2 // 16] * 16 + tbl6[arg % 16][arg2 % 16]
		end

		debug.setmemorycategory("_3681420007e9_" .. "eoTF" .. "|" .. tostring(18) .. ".3WRC")
		local scriptKey = getgenv().SCRIPT_KEY
		local str5 = scriptKey .. "37996"
		local tbl7 = {}
		local v14 = bit32.bxor(2821017718, attribute % 4294967295)
		tbl7[tbl7] = v14
		local str6 = tostring({})
		local str7 = tostring({})

		if str6 == str7 or fn3(str6, str7, 300254) then
			fn("J2_157")
			LPH_CRASH()
		end

		local now2 = os.clock()
		local proxy2 = newproxy(false)
		local v15 = bit32.bxor(2711407091, v9 % 4294967295)
		getfenv()[proxy2] = v15
		local now3 = os.time()
		local tbl8 = {}
		local tbl9 = {}
		local tbl10 = {}

		for i = 1, 17 do
			local tbl11 = {}
			local tbl12 = {}
			tbl8[tbl11] = tbl12
			tbl9[tbl12] = i
			tbl10[tbl11] = tbl12
		end

		local n25 = 0
		local n26 = 0
		local n27 = 0

		for k, v16 in next, tbl8, nil do
			local v17 = tbl9[v16]

			if tbl10[k] == v16 then
				n25 += 1
			end

			n26 += 1
			n27 = ((n27 + v17 * 27 + 62) * 65 + n26 * 39) % 2147483629
		end

		if n25 ~= 17 then
			fn("J2_198")
			LPH_CRASH()
		end

		local v16

		if not (#str5 > 64) then
			v16 = str5
		else
			v16 = fn8(str5)
		end

		if #v16 < 64 then
			v16 ..= string.rep("\0", 64 - #v16)
		end

		local v17 = table.create(64)
		local v18 = table.create(64)

		for i = 1, 64, 2 do
			local v19 = v16:byte(i)
			v17[i] = string.char(v5(v19, 54))
			v18[i] = string.char(v5(v19, 92))

			if i < 64 then
				local v20 = v16:byte(i + 1)
				v17[i + 1] = string.char(v5(v20, 54))
				v18[i + 1] = string.char(v5(v20, 92))
			end
		end

		local str8 = table.concat(v17)
		local str9 = table.concat(v18)
		local v19 = fn8
		local n9e3c16f7d23c2f37a788303e = v12._9e3c16f7d23c2f37a788303e
		local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
		local placeId = game.PlaceId
		local jobId = game.JobId
		local gameId = game.GameId
		local v20 = game
		local v21 = fn8(str9 .. v19(str8 .. "{\"_ae6bf4ba3f701c505263a2c7\":\"" .. n9e3c16f7d23c2f37a788303e .. "\"" .. ",\"_3055cb4de6422da59fbf0e27\":\"" .. RbxAnalyticsService:GetClientId() .. "\"" .. ",\"_0df24697ccd350d0d2af1f62\":\"" .. scriptKey .. "\"" .. ",\"_2aca147bf40d515124b041a1\":\"" .. n24 .. "\"" .. ",\"_489b7ea51eb526704058215e\":\"" .. placeId .. "\"" .. ",\"_6eea89717b62bc00b2997d42\":\"" .. "c7835a9098ed38bbc865d4ca" .. "\"" .. ",\"_e9dc510c56fbd96fe848d9d7\":\"" .. jobId .. "\"" .. ",\"_3c2743f7938988a4b88a3881\":\"" .. gameId .. "\"" .. ",\"_b0ddba74b7b1ba21d45b882e\":\"" .. game:GetService("Players").LocalPlayer.Name .. "\"" .. ",\"_bccac7bf30397e2b4ea6bdfd\":\"" .. v20:GetService("Players").LocalPlayer.UserId .. "\",\"_25a0aecb66ee3250f5fef95b\":\"37996\"}"))
		local n28 = 1
		local str10 = ""

		while n28 <= #v21 do
			str10 ..= string.format("%02x", string.byte(v21, n28))
			n28 += 1
		end

		if not fn2(tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("ಾ\u{DC7}ቊහ"), 3089546 + (v12._f786aa5dd3e809dd84c3a637 and 18226 or 0), 889216) == true then
			fn("J2_189")
			LPH_CRASH()
		end

		local flag11 = configuration:GetAttribute("_d1f49d178bf4") ~= (not v12._60c344df99ab05293a70cd75 and 4236300 or 4249926)
		local flag12

		if flag11 then
			flag12 = flag11
		else
			flag12 = not fn2(not v12._60c344df99ab05293a70cd75 and 4236300 or 4249926, configuration:GetAttribute("_d1f49d178bf4"), 889216)
		end

		if flag12 then
			fn("J2_152")
			LPH_CRASH()
		end

		if not fn2(tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("໑ज़ೋာॢຣๅ"), not v12._1ade53a38697d26cba8e73d0 and 1287575 or 1289911, 889216) == true then
			fn("J2_047")
			LPH_CRASH()
		end

		if configuration:GetAttribute("_f61ba0b9965b") ~= (v12._6f29600cdb355c13bd0df9bc or "") then
			fn("J2_170")
			LPH_CRASH()
		end

		local flag13 = not fn2(v12._f786aa5dd3e809dd84c3a637 and 2124425 or 2111179, configuration:GetAttribute("_1fde41c4113c"), 889216)
		local flag14

		if flag13 then
			flag14 = flag13
		else
			flag14 = configuration:GetAttribute("_1fde41c4113c") ~= (v12._f786aa5dd3e809dd84c3a637 and 2124425 or 2111179)
		end

		if flag14 then
			fn("J2_MS23")
			LPH_CRASH()
		end

		if configuration:GetAttribute("_03eec8237342") ~= 33458 - (v12._1ade53a38697d26cba8e73d0 and 0 or 15353) then
			fn("J2_103")
			LPH_CRASH()
		end

		if not fn2(tbl["ວभ\u{CFD}၃ຏဈ៳"]:GetTeleportSetting("ংមဿॅଡ"), 5152722 + (v12._60c344df99ab05293a70cd75 and 30193 or 0), 889216) then
			fn("J2_192")
			LPH_CRASH()
		end

		local n29 = v8 + 8969
		local n30 = v9 + 4066
		local n31 = n11 * 3 + 3089
		local configuration3 = Instance.new("Configuration")
		configuration3:SetAttribute("_e8c9091230d8", n31)
		local v22 = game
		local str11 = ((((((((((((((((((("{\"_7af18189e83ab762b960a2f8\":" .. n29 .. "") .. ",\"_25a0aecb66ee3250f5fef95b\":") .. v4("37996")) .. ",\"_489b7ea51eb526704058215e\":") .. v4(game.PlaceId .. "")) .. ",\"_6eea89717b62bc00b2997d42\":") .. v4("c7835a9098ed38bbc865d4ca")) .. ",\"_79a76b94c1e235491ccc40ec\":") .. n30 .. "") .. ",\"_0df24697ccd350d0d2af1f62\":") .. v4(scriptKey)) .. ",\"_4022a01e685e73068c0d9831\":") .. n31 .. "") .. ",\"_e9dc510c56fbd96fe848d9d7\":") .. v4(game.JobId .. "")) .. ",\"_2aca147bf40d515124b041a1\":") .. v4(n24 .. "")) .. ",\"_bccac7bf30397e2b4ea6bdfd\":") .. v4(v22:GetService("Players").LocalPlayer.UserId .. "")) .. ",\"_3055cb4de6422da59fbf0e27\":"
		local RbxAnalyticsService2 = game:GetService("RbxAnalyticsService")
		local v23 = game
		local str12 = (((((((((str11 .. v4(RbxAnalyticsService2:GetClientId())) .. ",\"_ae6bf4ba3f701c505263a2c7\":") .. v4(v12._9e3c16f7d23c2f37a788303e)) .. ",\"_b0ddba74b7b1ba21d45b882e\":") .. v4(v23:GetService("Players").LocalPlayer.Name)) .. ",\"_0ca542341e0ad8ebc5330daf\":") .. v4(str10)) .. ",\"_3c2743f7938988a4b88a3881\":") .. v4(game.GameId .. "")) .. "}"
		local tbl11 = {}

		for i = 1, #str12 do
			local v24 = string.byte("Rb\154\245\201*\n\139J\229w\230\146Uh\188O\2223v\236\250~\234^>G\144\207\252\130\135r|\\\140\227}\4\2N\22О\254\206\2151o;\183d\202n\240#\20\192$sc{\195V\137'\166PC-\253\155\249\21\133\8\18\161\2420\210l?\176\28\212\193\165ͯ\190\131\138ܿgj7TAS\180\182\29\162i\12<\24\r\211YH\221\235\224&]\168k\145\247\160u\174\15\6=\243\31\134\163\172\186.9+\11\248\223\27\14\203`)\219a\150\199Z\237\214\238K\177@,F\157\142\"\159\5!\2006\225ز_\181\167\232\204\218x\23\231: \143m\233\184\251qE5\148\255tM\194\19e\26\241\0032\7[L\244\t\151D\0174\2178\25\246\156Ƙ\179\228\127\169f\0\187W\1ŭ(/X\189\170\16\171B\30%\147\136Ĥ\141\149Q\185ф\153z\129\239pI\226Հy", string.byte(str12, i) + 1)
			tbl11[#tbl11 + 1] = ("482675fcbad103e9"):sub(v24 // 16 + 1, v24 // 16 + 1)
			tbl11[#tbl11 + 1] = ("482675fcbad103e9"):sub(v24 % 16 + 1, v24 % 16 + 1)
		end

		local ok, result = pcall(request, {
			Url = "https://heartbeat.jnkie.com/api/heartbeat/v4/init",
			Headers = { ["Content-Type"] = "text/plain" },
			Body = "v4.37996.404c1e1c15711da853e2eb5e." .. table.concat(tbl11),
			Method = "POST",
		})

		local flag15 = ok and type(result) == "table" and type(result.Body) == "string" and result.StatusCode ~= 200 and #result.Body <= 4096
		local v24 = nil

		if flag15 then
			v24 = string.match(result.Body, "\"message\"%s*:%s*\"([^\"]*)\"")
			local flag16 = type(v24) == "string" and #v24 >= 10 and #v24 <= 240 and not string.find(v24, "%c") and not string.find(v24, "\\", 1, true)
			local v25 = nil

			if not flag16 then
				v24 = v25
			end
		end

		if not ok or type(result) ~= "table" or type(result.Body) ~= "string" or result.StatusCode ~= 200 or #result.Body == 0 or #result.Body % 2 ~= 0 or #result.Body > 262144 then
			fn("J2_102", v24 or "The protected session could not be initialized. Please restart and try again.")
			LPH_CRASH()
		end

		local function fn14(arg, arg2, arg3)
			if arg3 ~= 358918 or not rawequal(arg3, 358918) or type(arg3) ~= "number" then
				fn("J2_081")
				LPH_CRASH()
			end

			local v25 = fn8(arg2)
			local str13 = fn8(arg2 .. "cipher_nonce"):sub(1, 12)
			local str14 = ""

			for i = 0, (#arg + 1) // 2 - 1 do
				local v26 = tbl5[arg:sub(i * 2 + 1, i * 2 + 1)]
				local v27 = tbl5[arg:sub(i * 2 + 1 + 1, i * 2 + 1 + 1)]

				if v26 ~= nil and v27 ~= nil then
					str14 ..= string.char(v26 * 16 + v27)
				end
			end

			if not (#str14 == #arg // 2) then
				return nil
			end
			local ok2, result2 = pcall(fn6, str14, v25, str13, 1)
			if not ok2 or type(result2) ~= "string" then
				return nil
			end
			local ok3, result3 = pcall(v3, result2)
			if not ok3 then
				return nil
			end
			return result3
		end

		local v25 = fn14(result.Body, str5, 358918)

		if not v25 == true then
			fn("J2_013")
			LPH_CRASH()
		end

		if not v25._787aa6081385f9dc5d41d7b1 then
			fn("J2_SOF7")
			LPH_CRASH()
		end

		if type(v25._2baf069c170dd2d3ff537c86) ~= "string" == true then
			fn("J2_MS03")
			LPH_CRASH()
		end

		if #v25._2baf069c170dd2d3ff537c86 < 8 then
			fn("J2_MS03")
			LPH_CRASH()
		end

		if type(v25._8b41b9840992e3b5035a70bd) ~= "string" then
			fn("J2_068")
			LPH_CRASH()
		end

		if #v25._8b41b9840992e3b5035a70bd < 8 then
			fn("J2_068")
			LPH_CRASH()
		end

		if not (not (type(v25._57c244298311fe20cd4c2852) ~= "number") and not (v25._57c244298311fe20cd4c2852 < 5) and not (v25._57c244298311fe20cd4c2852 > 300)) then
			fn("J2_099")
			LPH_CRASH()
		end

		if type(v25._ddab84062bbc535535ff90d8) ~= "table" then
			fn("J2_213")
			LPH_CRASH()
		end

		if #v25._ddab84062bbc535535ff90d8 ~= 3 then
			fn("J2_213")
			LPH_CRASH()
		end

		for i = 1, 3 do
			if type(v25._ddab84062bbc535535ff90d8[i]) ~= "table" == true then
				fn("J2_054")
				LPH_CRASH()
			end

			if #v25._ddab84062bbc535535ff90d8[i] ~= 2 then
				fn("J2_054")
				LPH_CRASH()
			end

			if type(v25._ddab84062bbc535535ff90d8[i][1]) ~= "number" then
				fn("J2_062")
				LPH_CRASH()
			end

			if type(v25._ddab84062bbc535535ff90d8[i][2]) ~= "number" then
				fn("J2_062")
				LPH_CRASH()
			end
		end

		local ddab84062bbc535535ff90d8 = v25._ddab84062bbc535535ff90d8
		v25._ddab84062bbc535535ff90d8 = { { ddab84062bbc535535ff90d8[3][2], ddab84062bbc535535ff90d8[3][1] }, { ddab84062bbc535535ff90d8[1][1], ddab84062bbc535535ff90d8[1][2] }, { ddab84062bbc535535ff90d8[2][1], ddab84062bbc535535ff90d8[2][2] } }

		if not fn2(n31, configuration3:GetAttribute("_e8c9091230d8"), 889216) then
			fn("J2_MS02")
			LPH_CRASH()
		end

		if v25._c7d376ff06c76b23c5010069 ~= n30 * 5 + -1 * n31 + -548 then
			fn("J2_197")
			LPH_CRASH()
		end

		if not fn2(v25._53709b0acb0de1f2a7ecde79, 265 + -2 * n30 + 2 * n29, 889216) or v25._53709b0acb0de1f2a7ecde79 ~= 265 + -2 * n30 + 2 * n29 then
			fn("J2_125")
			LPH_CRASH()
		end

		if v25._dd71465bb4f9d650bb3b962d ~= 2 * n31 + 2 * n29 + -485 then
			fn("J2_215")
			LPH_CRASH()
		end

		if os.clock() - now2 > 45 then
			fn("J2_108")
			LPH_CRASH()
		end

		if tbl7[tbl7] ~= v14 then
			fn("J2_177")
			LPH_CRASH()
		end

		if getfenv()[proxy2] ~= v15 then
			fn("J2_056")
			LPH_CRASH()
		end

		local now4 = os.time()

		if now4 < now3 then
			fn("J2_EQP1")
			LPH_CRASH()
		end

		if now4 - now3 > 60 then
			fn("J2_109")
			LPH_CRASH()
		end

		local n2baf069c170dd2d3ff537c86 = v25._2baf069c170dd2d3ff537c86
		local n8b41b9840992e3b5035a70bd = v25._8b41b9840992e3b5035a70bd
		local ddab84062bbc535535ff90d82 = v25._ddab84062bbc535535ff90d8

		local tbl12 = {
			ddab84062bbc535535ff90d82[1][1] * 2 + -2 * ddab84062bbc535535ff90d82[1][2] + 265,
			-548 + ddab84062bbc535535ff90d82[2][2] * -1 + ddab84062bbc535535ff90d82[2][1] * 5,
			2 * ddab84062bbc535535ff90d82[3][1] + -485 + 2 * ddab84062bbc535535ff90d82[3][2],
		}

		if type(v25._677d49cc6bfcbf7b298d9264) == "number" then
			n5f3603a7bc703f1260521a85 = v25._677d49cc6bfcbf7b298d9264
		end

		if type(v25._8aa23aeb4c7e37a3ab64e297) == "number" then
			n6a0365105bf66ea8146d0ee7 = v25._8aa23aeb4c7e37a3ab64e297
		end

		if type(v25._e3c98f5e15cbc69c2761c193) == "number" then
			fa3c78e1266af1e04ff89996 = v25._e3c98f5e15cbc69c2761c193
		end

		if type(v25._511544f932c2454feefd3a39) == "number" then
			n0c14a34917d3ef45df3713f1 = v25._511544f932c2454feefd3a39
		end

		if type(v25._58c2065a7d5485fd6d8a1b7e) == "number" then
			n31c813a9a00ac1a17c5a6d88 = v25._58c2065a7d5485fd6d8a1b7e
		end

		if type(v25._f472c57a91ae80753d7080c3) == "number" then
			n7d8d5393a4bf8d3840a39ddc = v25._f472c57a91ae80753d7080c3
		end

		if type(v25._28141c3be8becfd772f784b4) == "table" then
			tbl4 = v25._28141c3be8becfd772f784b4
		end

		flag8 = true
		configuration2:SetAttribute("_c68a84bd5483", true)
		boolValue2.Value = true
		debug.setmemorycategory("_3681420007e9_" .. (flag10 and "eoTF" or "cfPq") .. "|" .. tostring((value * 73 + 18) % 256) .. "." .. (flag8 and "BFv4" or "3WRC"))

		if configuration2:GetAttribute("_28999558fcce") ~= flag10 then
			fn("J2_038")
			LPH_CRASH()
		end

		if configuration2:GetAttribute("_c68a84bd5483") ~= flag8 then
			fn("J2_RV1")
			LPH_CRASH()
		end

		if configuration2:GetAttribute("_61e7703507f2") ~= value == true then
			fn("J2_RV3")
			LPH_CRASH()
		end

		if boolValue.Value ~= flag10 then
			fn("J2_RVP3")
			LPH_CRASH()
		end

		if boolValue2.Value ~= flag8 then
			fn("J2_030")
			LPH_CRASH()
		end

		if intValue3.Value ~= value then
			fn("J2_191")
			LPH_CRASH()
		end

		if configuration2:GetAttribute("_f35f9b207399") ~= 0 or not fn2(configuration2:GetAttribute("_f35f9b207399"), 0, 889216) then
			fn("J2_SOF2")
			LPH_CRASH()
		end

		if intValue2.Value ~= 0 or not fn2(intValue2.Value, 0, 889216) then
			fn("J2_185")
			LPH_CRASH()
		end

		local str13 = flag10 and "eoTF" or "cfPq"
		local str14 = tostring((value * 73 + 18) % 256)
		local str15 = flag8 and "BFv4" or "3WRC"

		if debug.getmemorycategory() ~= "_3681420007e9_" .. str13 .. "|" .. str14 .. "." .. str15 then
			fn("J2_114")
			LPH_CRASH()
		end

		local now5 = os.clock()
		local n32 = 4294967296

		local function fn15(arg, arg2)
			if arg2 > 31 or arg2 < -31 then
				return 0
			end

			if arg2 < 0 then
				return arg * 2 ^ (-arg2) % n32
			end
			return arg % n32 // 2 ^ arg2
		end

		local function fn16(arg, arg2)
			if arg2 > 31 or arg2 < -31 then
				return 0
			end

			if arg2 < 0 then
				return fn15(arg, -arg2)
			end
			return arg * 2 ^ arg2 % n32
		end

		local function fn17(arg, arg2)
			local n33 = arg % n32
			local n34 = arg2 % 32
			return (fn16(n33, n34) + fn15(n33, 32 - n34)) % n32
		end

		local function fn18(arg, arg2)
			local n33 = arg % n32
			local n34 = arg2 % n32
			local n35 = 0
			local n36 = 1

			for i = 0, 31 do
				local n37 = n33 % 2
				local n38 = n34 % 2

				if n37 ~= n38 then
					n35 += n36
				end

				n33 = (n33 - n37) / 2
				n34 = (n34 - n38) / 2
				n36 *= 2
			end

			return n35
		end

		configuration2:SetAttribute("_f35f9b207399", 0)
		intValue2.Value = 0
		local str16 = n2baf069c170dd2d3ff537c86 .. scriptKey
		local flag16 = false
		local value2 = 0
		local tbl13 = nil
		local n33 = 0
		local n34 = 1
		local v26

		while flag10 do
			if not flag16 then
				local now6 = os.clock()

				repeat
					heartbeat:Wait()
				until os.clock() - now6 >= 60
			end

			local now6 = os.clock()
			local n35 = now6 - now5

			if (n35 < 5 or n35 > 300) ~= false then
				fn("J2_MS13")
				LPH_CRASH()
			end

			if (not (tbl7[tbl7] ~= v14) and fn3(tbl7[tbl7], v14, 300254)) ~= true then
				fn("J2_HB_REQ")
				LPH_CRASH()
			end

			if getfenv()[proxy2] ~= v15 then
				fn("J2_156")
				LPH_CRASH()
			end

			if tostring({}) == tostring({}) == true then
				fn("J2_HP3")
				LPH_CRASH()
			end

			if n < 2887 ~= false then
				fn("J2_051")
				LPH_CRASH()
			end

			local now7 = os.time()

			if now7 < now3 == true then
				fn("J2_MS01")
				LPH_CRASH()
			end

			if configuration2:GetAttribute("_f35f9b207399") ~= value2 or not fn2(configuration2:GetAttribute("_f35f9b207399"), value2, 889216) then
				fn("J2_058")
				LPH_CRASH()
			end

			if boolValue.Value ~= flag10 or not fn2(boolValue.Value, flag10, 889216) then
				fn("J2_077")
				LPH_CRASH()
			end

			if not (not (intValue2.Value ~= value2) and fn2(intValue2.Value, value2, 889216)) then
				fn("J2_063")
				LPH_CRASH()
			end

			if configuration2:GetAttribute("_28999558fcce") ~= flag10 then
				fn("J2_095")
				LPH_CRASH()
			end

			if intValue3.Value ~= value then
				fn("J2_076")
				LPH_CRASH()
			end

			if boolValue2.Value ~= flag8 == true then
				fn("J2_SOF5")
				LPH_CRASH()
			end

			if configuration2:GetAttribute("_c68a84bd5483") ~= flag8 == true then
				fn("J2_009")
				LPH_CRASH()
			end

			if configuration2:GetAttribute("_61e7703507f2") ~= value then
				fn("J2_111")
				LPH_CRASH()
			end

			local str17 = flag10 and "eoTF" or "cfPq"
			local str18 = tostring((value * 73 + 18) % 256)
			local str19 = flag8 and "BFv4" or "3WRC"

			if debug.getmemorycategory() ~= "_3681420007e9_" .. str17 .. "|" .. str18 .. "." .. str19 == true then
				fn("J2_087")
				LPH_CRASH()
			end

			local n36 = 0
			local n37 = 0
			local n38 = 0

			for k, v27 in next, tbl8, nil do
				local v28 = tbl9[v27]

				if tbl10[k] == v27 then
					n36 += 1
				end

				n37 += 1
				n38 = ((n38 + v28 * 27 + 62) * 65 + n37 * 39) % 2147483629
			end

			if n36 ~= 17 or n38 ~= n27 then
				fn("J2_MS18")
				LPH_CRASH()
			end

			local str20, n39, n40, n41

			if tbl13 then
				str20 = tbl13[1]
				n39 = tbl13[2]
				n40 = tbl13[3]
				n41 = tbl13[4]
				configuration3:SetAttribute("_e8c9091230d8", n41)
			else
				local n42 = n24

				for i = 1, 31 do
					local n43

					if tostring({}) < tostring({}) then
						n43 = n42 + 1
					else
						n43 = n42 * 2
					end

					n42 = n43 % 10000
				end

				local str21 = n42 .. ""
				local n43 = 0

				for i = 1, #n8b41b9840992e3b5035a70bd do
					n43 = (n43 * 31 + n8b41b9840992e3b5035a70bd:byte(i)) % 1000003
				end

				local n44 = tonumber(str21) or 0
				n39 = v8 + n43 + 8969
				n40 = v9 + n44 + 4066
				n41 = n11 * 3 + n43 + n44 + 3089
				configuration3:SetAttribute("_e8c9091230d8", n41)

				local function fn19(arg, arg2, arg3)
					if not (arg3 ~= 875418 or not rawequal(arg3, 875418) or type(arg3) ~= "number") then
						local n45 = 1779033703
						local n46 = 3144134277

						for i = 1, #arg2 do
							local byte = arg2.byte
							n45 = bit32.bxor(bit32.lrotate(n45, 5), byte(arg2, i))
							n46 = fn18(fn17(n46, 7), n45)
						end

						for i = 1, #arg do
							local v27 = arg:byte(i)
							n45 = fn18(fn17(n45, 5), v27)
							local bxor3 = bit32.bxor
							n46 = bit32.bxor(bit32.lrotate(n46, 13), bxor3(n45, v27))
						end

						local v27 = bit32.bxor(n45, bit32.rshift(n45, 16))
						local v28 = fn18(n46, fn15(n46, 16))
						return string.format("%08x%08x", v27, v28)
					end

					fn("J2_064")

					while true do
					end
				end

				local v27 = fn19(n8b41b9840992e3b5035a70bd .. str21, scriptKey, 875418)
				local str22 = ("{\"_79f8ba72a8f19f392cfe1a38\":" .. ((((((("{\"_d1052628d818cf823a810ba6\":" .. n + n33 * 50 .. "") .. ",\"_721e4cd0cc659a0a8de425a2\":") .. n23 + n33 .. "") .. ",\"_00196d0f65089c0a89636c43\":") .. n20 + n33 * 3 .. "") .. ",\"_26f252cb5cdbece0fa146dad\":") .. n21 + n33 * 2 .. "") .. "}") .. (",\"_095d9942b4938bf44c395077\":" .. v4(str21)) .. (",\"_1fad05d4c606939098c5db4e\":" .. v4(n2baf069c170dd2d3ff537c86)) .. (",\"_7f5172a0ea70735ceada54a8\":" .. v4(v27)) .. (",\"_64e9651da588dc066247a84d\":" .. n41 .. "") .. (",\"_4f22d17434ba7897a2c0dd82\":" .. n39 .. "") .. (",\"_e36babd0d7df43e06014d660\":" .. n40 .. "") .. (",\"_00a9c276a70fd8b8e10da20a\":" .. value .. "") .. (",\"_2829904987184c24a1b78739\":" .. ((((("[" .. tbl12[1] .. "") .. ",") .. tbl12[3] .. "") .. ",") .. tbl12[2] .. "") .. "]") .. "}"

				local function fn20(arg, arg2, arg3)
					if arg2 ~= 845139 or not rawequal(arg2, 845139) or type(arg2) ~= "number" then
						fn("J2_106")

						while true do
						end
					else
						if not (arg3 ~= 145990 or not rawequal(arg3, 145990) or type(arg3) ~= "number") then
							local n45 = 305419896

							for i = 1, #str16 do
								local byte = str16.byte
								n45 = bit32.bxor(bit32.lrotate(n45, 5), byte(str16, i))
							end

							local n46 = #str16
							local tbl14 = { "4", "8", "2", "6", "7", "5", "f", "c", "b", "a", "d", "1", "0", "3", "e", "9" }
							local v28 = table.create(#arg * 2)

							for i = 1, #arg do
								local n47 = (arg:byte(i) + str16:byte((i - 1) % n46 + 1)) % 256
								local bxor3 = bit32.bxor
								n45 = bit32.bxor(bit32.lrotate(n45, 7), bxor3(n45, 2654435769))
								local v29 = fn13(n47, n45 % 256)
								local n48 = i * 2
								v28[n48 - 1] = tbl14[v29 // 16 + 1]
								v28[n48] = tbl14[v29 % 16 + 1]
							end

							return table.concat(v28)
						end

						fn("J2_175")

						while true do
						end
					end
				end

				local v28 = fn20(str22, 845139, 145990)
				local str23 = ((("{\"_f7a5d686185245bda38cec3d\":" .. v4(n2baf069c170dd2d3ff537c86)) .. ",\"_aa8c1fc984f5f5744fcf7d0c\":") .. v4(v28)) .. "}"
				local tbl14 = { "4", "8", "2", "6", "7", "5", "f", "c", "b", "a", "d", "1", "0", "3", "e", "9" }
				local tbl15 = {}

				for i = 1, #str23 do
					local v29 = string.byte("Rb\154\245\201*\n\139J\229w\230\146Uh\188O\2223v\236\250~\234^>G\144\207\252\130\135r|\\\140\227}\4\2N\22О\254\206\2151o;\183d\202n\240#\20\192$sc{\195V\137'\166PC-\253\155\249\21\133\8\18\161\2420\210l?\176\28\212\193\165ͯ\190\131\138ܿgj7TAS\180\182\29\162i\12<\24\r\211YH\221\235\224&]\168k\145\247\160u\174\15\6=\243\31\134\163\172\186.9+\11\248\223\27\14\203`)\219a\150\199Z\237\214\238K\177@,F\157\142\"\159\5!\2006\225ز_\181\167\232\204\218x\23\231: \143m\233\184\251qE5\148\255tM\194\19e\26\241\0032\7[L\244\t\151D\0174\2178\25\246\156Ƙ\179\228\127\169f\0\187W\1ŭ(/X\189\170\16\171B\30%\147\136Ĥ\141\149Q\185ф\153z\129\239pI\226Հy", string.byte(str23, i) + 1)
					local n45 = i * 2
					tbl15[n45 - 1] = tbl14[v29 // 16 + 1]
					tbl15[n45] = tbl14[v29 % 16 + 1]
				end

				str20 = ("v4." .. n2baf069c170dd2d3ff537c86 .. ".404c1e1c15711da853e2eb5e.") .. table.concat(tbl15)
				tbl13 = { str20, n39, n40, n41 }
			end

			if isfunctionhooked and isfunctionhooked(request) then
				fn("J2_CFL_D")
				LPH_CRASH()
			end

			if restorefunction then
				pcall(restorefunction, request)
			end

			local ok2, result2 = pcall(request, {
				Url = "https://heartbeat.jnkie.com/api/heartbeat/v4/beat",
				Headers = { ["Content-Type"] = "text/plain" },
				Body = str20,
				Method = "POST",
			})

			if not ok2 or type(result2) ~= "table" or type(result2.Body) ~= "string" or result2.StatusCode ~= 200 or #result2.Body == 0 or #result2.Body % 2 ~= 0 or #result2.Body > 262144 then
				if type(result2) == "table" and type(result2.Body) == "string" then
					local ok3, result3 = pcall(v3, result2.Body)

					if ok3 and type(result3) == "table" and result3.action == "kill" then
						local flag17 = type(result3.message) == "string" and #result3.message > 0 and #result3.message <= 300
						local str21 = "Your session has been terminated, please contact the script owner."

						if flag17 then
							str21 = result3.message
						end

						fn(str21)
						LPH_CRASH()
					end
				end

				value2 += 1
				configuration2:SetAttribute("_f35f9b207399", value2)
				intValue2.Value = value2

				if configuration2:GetAttribute("_f35f9b207399") ~= value2 or intValue2.Value ~= value2 or not fn2(configuration2:GetAttribute("_f35f9b207399"), value2, 889216) or not fn2(intValue2.Value, value2, 889216) then
					fn("J2_153")
					LPH_CRASH()
				end

				if value2 ~= 1 and value2 ~= 2 or not fn2(value2, 1, 889216) and not fn2(value2, 2, 889216) then
					fn("J2_187")
					LPH_CRASH()
				end

				local now8 = os.clock()

				repeat
					heartbeat:Wait()
				until os.clock() - now8 >= 10

				flag16 = true
				now5 = now6
				now3 = now7
				continue
			end

			local body = result2.Body
			local n42 = #body // 2
			local n43 = 305419896

			for i = 1, #str16 do
				local byte = str16.byte
				n43 = bit32.bxor(bit32.lrotate(n43, 5), byte(str16, i))
			end

			local n44 = #str16
			local v27 = table.create((n42 + 3) // 4)
			local flag17 = #body == 0 or #body % 2 ~= 0
			local n45 = 1
			local n46 = 0

			while true do
				if n45 <= n42 then
					local v28 = nil
					local v29 = nil
					local v30 = nil
					local v31 = nil
					local n47 = 0

					for i = 1, 4 do
						if not (n42 < n45) then
							local n48 = tbl5[body:sub(n45 * 2 - 1, n45 * 2 - 1)] and tbl5[body:sub(n45 * 2, n45 * 2)] and tbl5[body:sub(n45 * 2 - 1, n45 * 2 - 1)] * 16 + tbl5[body:sub(n45 * 2, n45 * 2)] or nil

							if not n48 then
								flag17 = true
								break
							else
								local bxor3 = bit32.bxor
								n43 = bit32.bxor(bit32.lrotate(n43, 7), bxor3(n43, 2654435769))
								local n49 = (fn13(n48, n43 % 256) - str16:byte((n45 - 1) % n44 + 1) + 256) % 256

								if i == 1 then
									v28 = n49
								elseif i == 2 then
									v29 = n49
								elseif i == 3 then
									v30 = n49
								else
									v31 = n49
								end

								n45 += 1
								n47 = i
								continue
							end
						end

						break
					end

					if flag17 then
						v26 = flag17
						break
					end
					n46 += 1
					local v32 = string.char(v28, v29 or 0, v30 or 0, v31 or 0)
					v27[n46] = n47 == 4 and v32 or string.sub(v32, 1, n47)
				else
					v26 = flag17
					break
				end
			end

			local flag18 = false
			local result3 = nil

			if not v26 then
				flag18, result3 = pcall(v3, table.concat(v27))
			end

			if not flag18 or type(result3) ~= "table" or not result3._abb5b91138a0a67fcf37159e then
				if flag18 and type(result3) == "table" and result3.action == "kill" then
					fn("J2_187")
					LPH_CRASH()
				end

				value2 += 1
				configuration2:SetAttribute("_f35f9b207399", value2)
				intValue2.Value = value2

				if configuration2:GetAttribute("_f35f9b207399") ~= value2 or intValue2.Value ~= value2 or not fn2(configuration2:GetAttribute("_f35f9b207399"), value2, 889216) or not fn2(intValue2.Value, value2, 889216) then
					fn("J2_154")
					LPH_CRASH()
				end

				if value2 ~= 1 and value2 ~= 2 or not fn2(value2, 1, 889216) and not fn2(value2, 2, 889216) then
					fn("J2_085")
					LPH_CRASH()
				end

				local now8 = os.clock()

				repeat
					heartbeat:Wait()
				until os.clock() - now8 >= 10

				flag16 = true
				now5 = now6
				now3 = now7
				continue
			end

			if type(result3._e312d048249513e7d8d81779) ~= "string" == true then
				fn("J2_MS24")
				LPH_CRASH()
			end

			if #result3._e312d048249513e7d8d81779 < 8 == true then
				fn("J2_MS24")
				LPH_CRASH()
			end

			if (type(result3._3ba48145aa720fa5a48cbe03) ~= "number" or result3._3ba48145aa720fa5a48cbe03 < 0) == true then
				fn("J2_124")
				LPH_CRASH()
			end

			if type(result3._456b52577564a86f4cb10043) ~= "table" == true then
				fn("J2_212B")
				LPH_CRASH()
			end

			if #result3._456b52577564a86f4cb10043 ~= 3 == true then
				fn("J2_212B")
				LPH_CRASH()
			end

			for i = 1, 3 do
				if type(result3._456b52577564a86f4cb10043[i]) ~= "table" == true then
					fn("J2_212C")
					LPH_CRASH()
				end

				if #result3._456b52577564a86f4cb10043[i] ~= 2 then
					fn("J2_212C")
					LPH_CRASH()
				end
			end

			local n456b52577564a86f4cb10043 = result3._456b52577564a86f4cb10043
			result3._456b52577564a86f4cb10043 = { { n456b52577564a86f4cb10043[3][2], n456b52577564a86f4cb10043[3][1] }, { n456b52577564a86f4cb10043[1][1], n456b52577564a86f4cb10043[1][2] }, { n456b52577564a86f4cb10043[2][1], n456b52577564a86f4cb10043[2][2] } }

			if result3._3ba48145aa720fa5a48cbe03 ~= n34 then
				fn("J2_270")
				LPH_CRASH()
			end

			n34 = result3._3ba48145aa720fa5a48cbe03 + 1

			if result3._e312d048249513e7d8d81779 == n8b41b9840992e3b5035a70bd or fn3(result3._e312d048249513e7d8d81779, n8b41b9840992e3b5035a70bd, 300254) then
				fn("J2_027")
				LPH_CRASH()
			end

			if not (not (result3._fdc52cb6e7401a8ddc8c3f63 ~= 5 * n40 + -548 + -1 * n41) and fn2(result3._fdc52cb6e7401a8ddc8c3f63, 5 * n40 + -548 + -1 * n41, 889216)) then
				fn("J2_RVP2")
				LPH_CRASH()
			end

			if result3._130f8689f684d7e9d586eab1 ~= 2 * n41 + -485 + 2 * n39 then
				fn("J2_D2")
				LPH_CRASH()
			end

			if result3._3e58c770248bc2b516f96516 ~= -2 * n40 + 265 + n39 * 2 then
				fn("J2_CFL_S")
				LPH_CRASH()
			end

			if not fn2(n41, configuration3:GetAttribute("_e8c9091230d8"), 889216) then
				fn("J2_RVS")
				LPH_CRASH()
			end

			if type(result3._8e009dffa01cc6dec9ebc77b) == "number" then
				n5f3603a7bc703f1260521a85 = result3._8e009dffa01cc6dec9ebc77b
			end

			if type(result3._e690f6c9b1e76a86d1883fc1) == "number" then
				n6a0365105bf66ea8146d0ee7 = result3._e690f6c9b1e76a86d1883fc1
			end

			if type(result3._77df2c79d4587178314ac461) == "number" then
				fa3c78e1266af1e04ff89996 = result3._77df2c79d4587178314ac461
			end

			if type(result3._2d0e26187c0976f6c0788236) == "number" then
				n0c14a34917d3ef45df3713f1 = result3._2d0e26187c0976f6c0788236
			end

			if type(result3._cafb320c5db8290d31f1ecae) == "number" then
				n31c813a9a00ac1a17c5a6d88 = result3._cafb320c5db8290d31f1ecae
			end

			if type(result3._c326c6b6894787910fcb9f3d) == "number" then
				n7d8d5393a4bf8d3840a39ddc = result3._c326c6b6894787910fcb9f3d
			end

			if type(result3._e90816815ed9f9310f23edef) == "table" then
				tbl4 = result3._e90816815ed9f9310f23edef
			end

			configuration2:SetAttribute("_f35f9b207399", 0)
			intValue2.Value = 0
			n33 = result3._3ba48145aa720fa5a48cbe03
			n8b41b9840992e3b5035a70bd = result3._e312d048249513e7d8d81779
			local n456b52577564a86f4cb100432 = result3._456b52577564a86f4cb10043

			tbl12 = {
				265 + -2 * n456b52577564a86f4cb100432[1][2] + n456b52577564a86f4cb100432[1][1] * 2,
				n456b52577564a86f4cb100432[2][1] * 5 + -548 + n456b52577564a86f4cb100432[2][2] * -1,
				n456b52577564a86f4cb100432[3][1] * 2 + 2 * n456b52577564a86f4cb100432[3][2] + -485,
			}

			value += 1
			configuration2:SetAttribute("_61e7703507f2", value)
			intValue3.Value = value
			debug.setmemorycategory("_3681420007e9_" .. (flag10 and "eoTF" or "cfPq") .. "|" .. tostring((value * 73 + 18) % 256) .. "." .. (flag8 and "BFv4" or "3WRC"))
			flag16 = false
			value2 = 0
			tbl13 = nil
			now5 = now6
			now3 = now7
		end
	end)

	if not flag10 or not fn3(flag10, true, 300254) then
		fn("J2_161")
		LPH_CRASH()
	end

	if configuration2:GetAttribute("_28999558fcce") ~= true then
		fn("J2_MS20")
		LPH_CRASH()
	end

	if boolValue.Value ~= true then
		fn("J2_036")
		LPH_CRASH()
	end

	local v14 = debug.getmemorycategory()

	if type(v14) ~= "string" or v14:sub(1, 18) ~= "_3681420007e9_cfPq" then
		fn("J2_199")
		LPH_CRASH()
	end

	task.defer(function()
		local now2 = os.clock()

		repeat
			heartbeat:Wait()
		until os.clock() - now2 >= 45

		if not flag8 or not fn3(flag8, true, 300254) then
			fn("J2_094")
			LPH_CRASH()
		end

		if configuration2:GetAttribute("_c68a84bd5483") ~= true then
			fn("J2_008")
			LPH_CRASH()
		end

		if boolValue2.Value ~= true then
			fn("J2_MS05")
			LPH_CRASH()
		end

		local v15 = value
		local now3 = os.clock()
		local n24 = 0
		local n25 = 0

		while flag10 do
			local now4 = os.clock()

			repeat
				heartbeat:Wait()
			until os.clock() - now4 >= 130

			n24 += 1

			if (boolValue2.Value ~= true or not flag8 or configuration2:GetAttribute("_c68a84bd5483") ~= true) ~= false then
				fn("J2_184")
				LPH_CRASH()
			end

			if not (not (configuration2:GetAttribute("_28999558fcce") ~= true) and fn2(configuration2:GetAttribute("_28999558fcce"), true, 889216)) then
				fn("J2_MS21")
				LPH_CRASH()
			end

			if not (not (boolValue.Value ~= true) and fn2(boolValue.Value, true, 889216)) then
				fn("J2_029")
				LPH_CRASH()
			end

			local v16 = value
			local attribute2 = configuration2:GetAttribute("_61e7703507f2")
			local value2 = intValue3.Value

			if (type(v16) ~= "number" or type(attribute2) ~= "number" or type(value2) ~= "number") == true then
				fn("J2_225")
				LPH_CRASH()
			end

			if (v16 ~= attribute2 or v16 ~= value2) ~= false then
				fn("J2_155")
				LPH_CRASH()
			end

			if (not fn2(v16, attribute2, 889216) or not fn2(v16, value2, 889216)) ~= false then
				fn("J2_125")
				LPH_CRASH()
			end

			local attribute3 = configuration2:GetAttribute("_f35f9b207399")
			local value3 = intValue2.Value

			if type(attribute3) ~= "number" then
				fn("J2_197")
				LPH_CRASH()
			end

			if attribute3 < 0 == true then
				fn("J2_197")
				LPH_CRASH()
			end

			if attribute3 > 2 == true then
				fn("J2_197")
				LPH_CRASH()
			end

			if attribute3 ~= value3 ~= false then
				fn("J2_215")
				LPH_CRASH()
			end

			if not fn2(attribute3, value3, 889216) ~= false then
				fn("J2_186")
				LPH_CRASH()
			end

			if os.clock() - now3 < n24 * 130 * 0.5 == true then
				fn("J2_RVP2")
				LPH_CRASH()
			end

			if v16 <= v15 and flag10 then
				n25 += 1

				if n25 > 1 or not fn2(n25, 1, 889216) then
					fn("Connection unstable, ensure your connection is stable.")
					LPH_CRASH()
				end

				v15 = v16
				continue
			end

			n25 = 0
			v15 = v16
		end
	end)
else
	tbl._9269e561fbe1:RemoveItem(tbl._bc4751ef3bbc)
end

if not UserSettings().GameSettings:GetTutorialState("ऐঁ൨ଓ៌") and not fn2(UserSettings().GameSettings:GetTutorialState("ऐঁ൨ଓ៌"), true, 889216) then
	fn("J2_194")

	while true do
	end
else
	local Lighting = game:GetService("Lighting")
	local v14 = Debris
	local v15 = CoreGui
	local StarterGui = game:GetService("StarterGui")
	local PathfindingService = game:GetService("PathfindingService")
	local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
	local lib2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
	local lib3 = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()

	if lib.Animations then
		lib.Animations.ToggleWindow = false
	end

	local options = lib.Options
	local toggles = lib.Toggles
	lib.ForceCheckbox = false
	lib.ShowToggleFrameInKeybinds = true
	local tbl5 = {}

	local function fn13(parent)
		if not parent or not parent:IsA("GuiObject") or tbl5[parent] then
			return
		end
		tbl5[parent] = true

		pcall(function()
			if not parent:FindFirstChild("SectionAmbientShadow") then
				local uiStroke = Instance.new("UIStroke")
				uiStroke.Name = "SectionAmbientShadow"
				uiStroke.Color = Color3.fromRGB(0, 0, 0)
				uiStroke.Thickness = 2.5
				uiStroke.Transparency = 0.42
				uiStroke.Parent = parent
			end

			if not parent:FindFirstChild("SectionDiffuseShadow") then
				local uiStroke = Instance.new("UIStroke")
				uiStroke.Name = "SectionDiffuseShadow"
				uiStroke.Color = Color3.fromRGB(0, 0, 0)
				uiStroke.Thickness = 5.5
				uiStroke.Transparency = 0.7
				uiStroke.Parent = parent
			end

			if not parent:FindFirstChild("SectionOuterGlowShadow") then
				local uiStroke = Instance.new("UIStroke")
				uiStroke.Name = "SectionOuterGlowShadow"
				uiStroke.Color = Color3.fromRGB(0, 0, 0)
				uiStroke.Thickness = 9
				uiStroke.Transparency = 0.88
				uiStroke.Parent = parent
			end
		end)
	end

	local addOutline = lib.AddOutline

	lib.AddOutline = function(arg, arg2)
		local v16, v17 = addOutline(arg, arg2)

		if arg2 and arg2:IsA("GuiObject") then
			fn13(arg2)
		end

		return v16, v17
	end

	ElopezLogo = "rbxthumb://type=Asset&id=132817997344182&w=150&h=150"
	ElopezLoading = nil

	pcall(function()
		ElopezLoading = lib:CreateLoading({ Title = "Elopez Hub", Icon = ElopezLogo, CurrentStep = 0, TotalSteps = 4 })
	end)

	if ElopezLoading then
		ElopezLoading:SetMessage("Loading Elopez Hub...")
	end

	if ElopezLoading then
		ElopezLoading:SetDescription("Initializing interface")
	end

	if ElopezLoading then
		task.wait(0.8)
	end

	Window = lib:CreateWindow({
		Title = "Elopez Hub",
		Icon = ElopezLogo,
		Footer = "Elopez Hub | Update",
		NotifySide = "Right",
		ShowCustomCursor = not lib.IsMobile,
	})

	if ElopezLoading then
		ElopezLoading:SetCurrentStep(1)
	end

	if ElopezLoading then
		ElopezLoading:SetMessage("Window created...")
	end

	if ElopezLoading then
		task.wait(0.8)
	end

	pcall(function()
		local mainFrame = Window.MainFrame
		local main

		if mainFrame then
			main = mainFrame
		else
			main = lib.ScreenGui and lib.ScreenGui:FindFirstChild("Main")
		end

		if main then
			fn13(main)
			local imageLabel = Instance.new("ImageLabel")
			imageLabel.Name = "WindowOuterDropShadow"
			imageLabel.BackgroundTransparency = 1
			imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
			imageLabel.Position = UDim2.new(0.5, 0, 0.5, 6)
			imageLabel.Size = UDim2.new(1, 38, 1, 38)
			imageLabel.ZIndex = 0
			imageLabel.Image = "rbxassetid://6014261993"
			imageLabel.ImageColor3 = Color3.fromRGB(0, 0, 0)
			imageLabel.ImageTransparency = 0.35
			imageLabel.ScaleType = Enum.ScaleType.Slice
			imageLabel.SliceCenter = Rect.new(49, 49, 450, 450)
			imageLabel.Parent = main
		end

		if lib.ScreenGui then
			lib.ScreenGui.DescendantAdded:Connect(function(descendant)
				if descendant:IsA("Frame") and (descendant.Name == "GroupboxHolder" or descendant.Parent and descendant.Parent.Name == "BoxHolder") then
					fn13(descendant)
				end
			end)
		end
	end)

	local v16 = nil

	if lib.IsMobile then
		task.spawn(function()
			task.wait(1)
			local screenGui = lib.ScreenGui
			if not screenGui then
				return
			end
			local v17 = nil
			local v18 = nil

			for _, descendant in ipairs(screenGui:GetDescendants()) do
				if descendant:IsA("TextButton") then
					if descendant.Text == "Toggle" then
						v17 = descendant
					elseif descendant.Text == "Lock" or descendant.Text == "Unlock" then
						v18 = descendant
					end
				end
			end

			if v17 and v18 then
				local flag10 = v17.Position.X.Scale > 0.5
				local vector2 = flag10 and Vector2.new(1, 0) or Vector2.new(0, 0)
				local n24 = flag10 and -6 or 6
				v17.AnchorPoint = vector2
				v17.Position = UDim2.new(flag10 and 1 or 0, n24, 0, 6)
				v18.AnchorPoint = vector2

				local function fn14()
					local y = v17.AbsoluteSize.Y

					if y <= 0 or y > 120 then
						y = 32
					end

					v18.Position = UDim2.new(flag10 and 1 or 0, n24, 0, 6 + y + 8)
				end

				fn14()

				pcall(function()
					v17:GetPropertyChangedSignal("AbsoluteSize"):Connect(fn14)
				end)
			end
		end)
	end

	local v17 = nil
	local connection = nil
	local tbl6 = {}
	local tbl7 = {}
	local tbl8 = {}
	local v18 = nil
	local flag10 = true

	local function fn14(arg)
		if connection then
			connection:Disconnect()
			connection = nil
		end

		if v18 then
			local v19 = v18
			v18 = nil

			if arg then
				pcall(function()
					v19:Destroy()
				end)
			else
				pcall(function()
					local tween = TweenService:Create(v19, TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = 0 })
					tween:Play()

					tween.Completed:Connect(function()
						pcall(function()
							v19:Destroy()
						end)
					end)
				end)
			end
		end

		if v16 then
			local v19 = v16
			local v20 = v17
			v16 = nil
			v17 = nil

			if arg or not v20 then
				pcall(function()
					v19:Destroy()
				end)
			else
				pcall(function()
					local tween = TweenService:Create(v20, TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 })
					tween:Play()

					tween.Completed:Connect(function()
						pcall(function()
							v19:Destroy()
						end)
					end)
				end)
			end
		end

		table.clear(tbl6)
		table.clear(tbl7)
		table.clear(tbl8)
	end

	_G.removeAllBlur = function()
		if v18 then
			pcall(function()
				v18:Destroy()
			end)

			v18 = nil
		end

		pcall(function()
			for _, child in ipairs(Lighting:GetChildren()) do
				if child:IsA("BlurEffect") then
					child:Destroy()
				end
			end
		end)
	end

	local function fn15()
		fn14()
		local hui = nil

		pcall(function()
			if type(gethui) == "function" then
				hui = gethui()
			end
		end)

		local flag11 = not hui

		if flag11 then
			pcall(function()
				hui = v15
			end)
		end

		if flag11 and LocalPlayer then
			hui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
		end

		if not hui then
			return
		end

		pcall(function()
			local blurEffect = Instance.new("BlurEffect")
			blurEffect.Name = "ElopezGlassBlur"
			blurEffect.Size = 0
			blurEffect.Parent = Lighting
			v18 = blurEffect
			TweenService:Create(blurEffect, TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = 18 }):Play()
		end)

		local screenGui = Instance.new("ScreenGui")
		screenGui.Name = "ElopezGlassBackdropGui"
		screenGui.DisplayOrder = 997
		screenGui.IgnoreGuiInset = true
		screenGui.ResetOnSpawn = false

		pcall(function()
			if syn and syn.protect_gui then
				syn.protect_gui(screenGui)
			end
		end)

		screenGui.Parent = hui
		v16 = screenGui
		local frame2 = Instance.new("Frame")
		frame2.Name = "GlassCanvas"
		frame2.Size = UDim2.new(1, 0, 1, 0)
		frame2.Position = UDim2.new(0, 0, 0, 0)
		frame2.BackgroundColor3 = Color3.fromRGB(4, 6, 12)
		frame2.BackgroundTransparency = 1
		frame2.BorderSizePixel = 0
		frame2.ZIndex = 1
		frame2.Active = false
		frame2.ClipsDescendants = true
		frame2.Parent = screenGui
		v17 = frame2
		TweenService:Create(frame2, TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { BackgroundTransparency = 0.42 }):Play()
		local uiGradient = Instance.new("UIGradient")
		local colorSequence = ColorSequence.new
		local tbl9 = {}
		local v19 = ColorSequenceKeypoint.new(0, Color3.fromRGB(8, 12, 24))
		local v20 = ColorSequenceKeypoint.new(0.35, Color3.fromRGB(4, 6, 14))
		local v21 = ColorSequenceKeypoint.new(0.7, Color3.fromRGB(14, 6, 22))
		local new = ColorSequenceKeypoint.new
		local color = Color3.fromRGB
		tbl9[1] = v19
		tbl9[2] = v20
		tbl9[3] = v21

		do
			local values = table.pack(new(1, color(6, 10, 18)))
			table.move(values, 1, values.n, 4, tbl9)
		end

		uiGradient.Color = colorSequence(tbl9)
		uiGradient.Rotation = 35
		uiGradient.Parent = frame2
		local imageLabel = Instance.new("ImageLabel")
		imageLabel.Name = "Vignette"
		imageLabel.Size = UDim2.new(1, 0, 1, 0)
		imageLabel.BackgroundTransparency = 1
		imageLabel.Image = "rbxassetid://4576475446"
		imageLabel.ImageColor3 = Color3.fromRGB(0, 0, 0)
		imageLabel.ImageTransparency = 0.25
		imageLabel.ZIndex = 6
		imageLabel.Parent = frame2
		local frame3 = Instance.new("Frame")
		frame3.Name = "AccentStrip"
		frame3.Size = UDim2.new(1, 0, 0, 2)
		frame3.Position = UDim2.new(0, 0, 0, 0)
		frame3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		frame3.BackgroundTransparency = 0.6
		frame3.BorderSizePixel = 0
		frame3.ZIndex = 5
		frame3.Parent = frame2
		local uiGradient2 = Instance.new("UIGradient")
		local colorSequence2 = ColorSequence.new
		local tbl10 = {}
		local v22 = ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 200, 255))
		local v23 = ColorSequenceKeypoint.new(0.33, Color3.fromRGB(200, 80, 255))
		local v24 = ColorSequenceKeypoint.new(0.66, Color3.fromRGB(255, 60, 140))
		local new2 = ColorSequenceKeypoint.new
		local color2 = Color3.fromRGB
		tbl10[1] = v22
		tbl10[2] = v23
		tbl10[3] = v24

		do
			local values = table.pack(new2(1, color2(0, 255, 180)))
			table.move(values, 1, values.n, 4, tbl10)
		end

		uiGradient2.Color = colorSequence2(tbl10)
		uiGradient2.Parent = frame3
		local tbl11 = {}
		local tbl12 = { name = "GlassWave1", height = 180, startY = -0.25, rotation = -18, speed = 0.1 }
		local colors = {}
		local color3 = Color3.fromRGB(0, 180, 255)
		local color4 = Color3.fromRGB(140, 60, 220)
		local color5 = Color3.fromRGB
		colors[1] = color3
		colors[2] = color4

		do
			local values = table.pack(color5(0, 220, 200))
			table.move(values, 1, values.n, 3, colors)
		end

		tbl12.colors = colors
		tbl12.alphaMid = 0.82
		local tbl13 = { name = "GlassWave2", height = 120, startY = 0.35, rotation = -30, speed = 0.07 }
		local colors2 = {}
		local color6 = Color3.fromRGB(200, 60, 255)
		local color7 = Color3.fromRGB(0, 255, 160)
		colors2[1] = color6
		colors2[2] = color7

		do
			local values = table.pack(Color3.fromRGB(0, 160, 255))
			table.move(values, 1, values.n, 3, colors2)
		end

		tbl13.colors = colors2
		tbl13.alphaMid = 0.88
		local tbl14 = { name = "GlassWave3", height = 90, startY = 0.65, rotation = -12, speed = 0.05 }
		local colors3 = {}
		local color8 = Color3.fromRGB(255, 80, 160)
		local color9 = Color3.fromRGB(255, 160, 60)
		local color10 = Color3.fromRGB
		colors3[1] = color8
		colors3[2] = color9

		do
			local values = table.pack(color10(200, 60, 255))
			table.move(values, 1, values.n, 3, colors3)
		end

		tbl14.colors = colors3
		tbl14.alphaMid = 0.92
		tbl11[1] = tbl12
		tbl11[2] = tbl13
		tbl11[3] = tbl14
		local tbl15 = {}

		for _, v25 in ipairs(tbl11) do
			local frame4 = Instance.new("Frame")
			frame4.Name = v25.name
			frame4.Size = UDim2.new(2.8, 0, 0, v25.height)
			frame4.Position = UDim2.new(-0.9, 0, v25.startY, 0)
			frame4.Rotation = v25.rotation
			frame4.BackgroundTransparency = 1
			frame4.BorderSizePixel = 0
			frame4.ZIndex = 2
			frame4.Parent = frame2
			local uiGradient3 = Instance.new("UIGradient")
			local colorSequence3 = ColorSequence.new
			local tbl16 = {}
			local v26 = ColorSequenceKeypoint.new(0, v25.colors[1])
			local v27 = ColorSequenceKeypoint.new(0.5, v25.colors[2])
			local new3 = ColorSequenceKeypoint.new
			local v28 = v25.colors[3]
			tbl16[1] = v26
			tbl16[2] = v27

			do
				local values = table.pack(new3(1, v28))
				table.move(values, 1, values.n, 3, tbl16)
			end

			uiGradient3.Color = colorSequence3(tbl16)
			local numberSequence = NumberSequence.new
			local tbl17 = {}
			local v29 = NumberSequenceKeypoint.new(0, 1)
			local v30 = NumberSequenceKeypoint.new(0.5, v25.alphaMid)
			local new4 = NumberSequenceKeypoint.new
			tbl17[1] = v29
			tbl17[2] = v30

			do
				local values = table.pack(new4(1, 1))
				table.move(values, 1, values.n, 3, tbl17)
			end

			uiGradient3.Transparency = numberSequence(tbl17)
			uiGradient3.Parent = frame4
			table.insert(tbl15, { frame = frame4, speed = v25.speed, progress = math.random() })
		end

		local frame4 = Instance.new("Frame")
		frame4.Name = "GlossSweep"
		frame4.Size = UDim2.new(0.4, 0, 2.5, 0)
		frame4.Position = UDim2.new(-0.5, 0, -0.5, 0)
		frame4.Rotation = 25
		frame4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		frame4.BackgroundTransparency = 0.94
		frame4.BorderSizePixel = 0
		frame4.ZIndex = 4
		frame4.Parent = frame2
		local uiGradient3 = Instance.new("UIGradient")
		local numberSequence = NumberSequence.new
		local tbl16 = {}
		local v25 = NumberSequenceKeypoint.new(0, 1)
		local v26 = NumberSequenceKeypoint.new(0.4, 0.92)
		local v27 = NumberSequenceKeypoint.new(0.6, 0.92)
		local new3 = NumberSequenceKeypoint.new
		tbl16[1] = v25
		tbl16[2] = v26
		tbl16[3] = v27

		do
			local values = table.pack(new3(1, 1))
			table.move(values, 1, values.n, 4, tbl16)
		end

		uiGradient3.Transparency = numberSequence(tbl16)
		uiGradient3.Parent = frame4
		local tbl17 = {}
		local color11 = Color3.fromRGB(0, 200, 255)
		local color12 = Color3.fromRGB(160, 80, 255)
		local color13 = Color3.fromRGB(255, 60, 140)
		local color14 = Color3.fromRGB(0, 255, 180)
		local color15 = Color3.fromRGB(255, 180, 60)
		local color16 = Color3.fromRGB
		tbl17[1] = color11
		tbl17[2] = color12
		tbl17[3] = color13
		tbl17[4] = color14
		tbl17[5] = color15

		do
			local values = table.pack(color16(100, 140, 255))
			table.move(values, 1, values.n, 6, tbl17)
		end

		for i = 1, 2 do
			local frame5 = Instance.new("Frame")
			local n24 = math.random(80, 200)
			frame5.Size = UDim2.fromOffset(n24, n24)
			frame5.Position = UDim2.new(math.random() * 0.8 + 0.1, 0, math.random() * 0.8 + 0.1, 0)
			frame5.BackgroundColor3 = tbl17[i]
			frame5.BackgroundTransparency = 0.88 + math.random() * 0.08
			frame5.BorderSizePixel = 0
			frame5.ZIndex = 2
			frame5.Parent = frame2
			local uiCorner = Instance.new("UICorner")
			uiCorner.CornerRadius = UDim.new(1, 0)
			uiCorner.Parent = frame5

			table.insert(tbl8, {
				frame = frame5,
				driftX = (math.random() - 0.5) * 8,
				driftY = (math.random() - 0.5) * 6,
				pulseSpeed = 0.8 + math.random() * 1.2,
				pulseOffset = math.random() * 3.1415926535897931 * 2,
				baseAlpha = frame5.BackgroundTransparency,
			})
		end

		local tbl18 = {}
		local color17 = Color3.fromRGB(0, 229, 255)
		local color18 = Color3.fromRGB(255, 60, 160)
		local color19 = Color3.fromRGB(170, 90, 255)
		local color20 = Color3.fromRGB(255, 255, 255)
		local color21 = Color3.fromRGB(0, 255, 180)
		local color22 = Color3.fromRGB(255, 200, 80)
		local color23 = Color3.fromRGB
		tbl18[1] = color17
		tbl18[2] = color18
		tbl18[3] = color19
		tbl18[4] = color20
		tbl18[5] = color21
		tbl18[6] = color22

		do
			local values = table.pack(color23(120, 160, 255))
			table.move(values, 1, values.n, 7, tbl18)
		end

		for i = 1, 10 do
			local frame5 = Instance.new("Frame")
			local n24 = math.random(2, 10)
			frame5.Size = UDim2.fromOffset(n24, n24)
			frame5.Position = UDim2.new(math.random(), 0, math.random(), 0)
			frame5.BackgroundColor3 = tbl18[math.random(1, #tbl18)]
			frame5.BackgroundTransparency = 0.25 + math.random() * 0.45
			frame5.BorderSizePixel = 0
			frame5.ZIndex = 3
			local uiCorner = Instance.new("UICorner")
			uiCorner.CornerRadius = UDim.new(1, 0)
			uiCorner.Parent = frame5
			frame5.Parent = frame2

			table.insert(tbl6, {
				frame = frame5,
				speedY = math.random(10, 50),
				swaySpeed = 0.5 + math.random() * 3,
				swayWidth = math.random(8, 30),
				offset = math.random() * 10,
				baseAlpha = frame5.BackgroundTransparency,
				flickerSpeed = 1 + math.random() * 3,
			})
		end

		for i = 1, 3 do
			local imageLabel2 = Instance.new("ImageLabel")
			local n24 = math.random(8, 20)
			imageLabel2.Size = UDim2.fromOffset(n24, n24)
			imageLabel2.Position = UDim2.new(math.random(), 0, math.random(), 0)
			imageLabel2.BackgroundTransparency = 1
			imageLabel2.Image = "rbxassetid://10709791437"
			imageLabel2.ImageColor3 = tbl18[math.random(1, #tbl18)]
			imageLabel2.ImageTransparency = 0.4
			imageLabel2.ZIndex = 3
			imageLabel2.Parent = frame2

			table.insert(tbl7, {
				frame = imageLabel2,
				rotSpeed = (math.random() > 0.5 and 1 or -1) * math.random(20, 70),
				pulseSpeed = 1.5 + math.random() * 3,
				pulseOffset = math.random() * 5,
			})
		end

		local n24 = 0
		local sin = math.sin
		local clock = os.clock
		local clamp = math.clamp
		local n25 = 0

		connection = RunService.RenderStepped:Connect(function(deltaTime)
			if not frame2 or not frame2.Parent then
				fn14()
				return
			end
			local v28 = clock()
			if v28 - n25 < 0.033 then
				return
			end
			n25 = v28

			for _, v29 in ipairs(tbl15) do
				v29.progress = (v29.progress + deltaTime * v29.speed * 2) % 1
				v29.frame.Position = UDim2.new(-0.9, 0, -0.3 + v29.progress * 1.6, 0)
			end

			n24 = (n24 + deltaTime * 0.06 * 2) % 1
			frame4.Position = UDim2.new(-0.5 + n24 * 1.5, 0, -0.5, 0)

			for _, v29 in ipairs(tbl8) do
				local n26 = v29.frame.Position.X.Scale + v29.driftX * deltaTime * 0.006
				local n27 = v29.frame.Position.Y.Scale + v29.driftY * deltaTime * 0.006

				if n26 > 1.1 or n26 < -0.2 then
					v29.driftX = -v29.driftX
				end

				if n27 > 1.1 or n27 < -0.2 then
					v29.driftY = -v29.driftY
				end

				v29.frame.Position = UDim2.new(n26, 0, n27, 0)
				v29.frame.BackgroundTransparency = clamp(v29.baseAlpha + sin(v28 * v29.pulseSpeed + v29.pulseOffset) * 0.06, 0.82, 0.98)
			end

			for _, v29 in ipairs(tbl6) do
				v29.offset = v29.offset + deltaTime * 2
				local n26 = v29.frame.Position.Y.Offset - v29.speedY * deltaTime * 2
				local swayWidth = v29.swayWidth
				local n27 = v29.frame.Position.X.Offset + sin(v29.offset * v29.swaySpeed) * swayWidth * deltaTime * 2

				if n26 < -20 then
					v29.frame.Position = UDim2.new(math.random(), 0, 1, 10)
				else
					v29.frame.Position = UDim2.new(v29.frame.Position.X.Scale, n27, v29.frame.Position.Y.Scale, n26)
				end

				v29.frame.BackgroundTransparency = clamp(v29.baseAlpha + sin(v29.offset * v29.flickerSpeed) * 0.18, 0.1, 0.95)
			end

			for _, v29 in ipairs(tbl7) do
				v29.frame.Rotation = (v29.frame.Rotation + v29.rotSpeed * deltaTime * 2) % 360
				v29.frame.ImageTransparency = clamp(0.4 + sin(v28 * v29.pulseSpeed + v29.pulseOffset) * 0.35, 0.1, 0.9)
			end
		end)
	end

	task.spawn(function()
		local v19 = nil

		while flag10 and task.wait(0.08) do
			if typeof(lib) == "table" and type(lib.Toggled) == "boolean" then
				local toggled = lib.Toggled

				if toggled ~= v19 or toggled and not v16 then
					if toggled then
						fn15()
						v19 = toggled
					else
						fn14()
						v19 = toggled
					end
				end
			end
		end

		fn14(true)
	end)

	MainTab = Window:AddTab("Main", "sword")
	KillAllTab = Window:AddTab("Kill All", "skull")
	LockOnTab = Window:AddTab("Lock-On", "crosshair")
	BFCTab = Window:AddTab("BFC", "zap")
	CharacterTab = Window:AddTab("Characters", "user")
	AutoFarmTab = Window:AddTab("Auto Farm", "leaf")
	DestructionTab = Window:AddTab("Destruction", "bomb")
	SideDashTab = Window:AddTab("Side Dash", "wind")
	MovementTab = Window:AddTab("Movement", "activity")
	VisualTab = Window:AddTab("Visuals", "eye")
	TuningTab = Window:AddTab("Tuning", "sliders-horizontal")
	ThemeTab = Window:AddTab("Themes", "palette")
	TeleportTab = Window:AddTab("Teleport", "map-pin")
	MiscTab = Window:AddTab("Misc", "wrench")
	ConfigTab = Window:AddTab("Settings", "settings")

	local function fn16()
		if ElopezLoading then
			ElopezLoading:SetCurrentStep(2)
		end

		if ElopezLoading then
			ElopezLoading:SetMessage("Loading services...")
		end

		if ElopezLoading then
			task.wait(0.7)
		end

		Players = game:GetService("Players")
		RunService = game:GetService("RunService")
		ReplicatedStorage = game:GetService("ReplicatedStorage")
		Workspace = game:GetService("Workspace")
		UserInputService = game:GetService("UserInputService")
		ContextActionService = game:GetService("ContextActionService")
		TweenService = game:GetService("TweenService")
		UserGameSettings = UserSettings():GetService("UserGameSettings")
		VirtualInputManager = game:GetService("VirtualInputManager")
		Stats = Stats
		LocalPlayer = Players.LocalPlayer
		Camera = workspace.CurrentCamera
		math_abs = math.abs
		math_clamp = math.clamp
		math_acos = math.acos
		math_floor = math.floor
		math_max = math.max
		math_exp = math.exp
		math_sin = math.sin
		math_cos = math.cos
		math_sqrt = math.sqrt
		math_random = math.random
		Vector3_new = Vector3.new
		Vector2_new = Vector2.new
		CFrame_new = CFrame.new
		RaycastParams_new = RaycastParams.new
		Enum_RaycastFilterType_Exclude = Enum.RaycastFilterType.Exclude
		os_clock = os.clock
		string_find = string.find
		string_lower = string.lower
		table_insert = table.insert
		table_sort = table.sort
		table_clear = table.clear
		local tbl9
		tbl9 = {}
		local humanoidRootPart
		humanoidRootPart = nil
		local humanoid
		humanoid = nil

		local function fn17()
			local character = LocalPlayer and LocalPlayer.Character

			if character then
				humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
				humanoid = character:FindFirstChildOfClass("Humanoid")
			else
				humanoidRootPart = nil
				humanoid = nil
			end
		end

		if LocalPlayer then
			LocalPlayer.CharacterAdded:Connect(function(character)
				task.wait(0.1)
				fn17()
				character:WaitForChild("Humanoid", 5):GetPropertyChangedSignal("WalkSpeed"):Connect(fn17)
			end)

			if LocalPlayer.Character then
				fn17()
			end
		end

		local tbl10
		tbl10 = {}
		AlwaysDownslamActive = false
		AlwaysUppercutActive = false
		InfiniteParkourActive = false
		AutoParkourActive = false
		InfiniteDashActive = false
		SpeedValue = 50
		SpeedEnabled = false
		NoStunActive = false
		NoRagdollActive = false
		AntiDomainActive = false
		NoclipActive = false
		WalkIntoDomainsActive = false
		DETECTION_DISTANCE = 3.5
		CLIMB_SPEED = 40
		FORWARD_SPEED = 12
		glideInProgress = false
		positionHistory = {}
		ghostModel = nil
		ghostPartsCache = {}
		MAX_HISTORY = 150
		local flag11
		flag11 = true
		local tbl11
		tbl11 = nil
		local fn18
		fn18 = nil
		local tbl12
		tbl12 = nil
		local tbl13
		tbl13 = nil
		local tbl14
		tbl14 = nil
		local n24
		n24 = 0
		local n25
		n25 = 0
		local connection2, fn19, dashRequest, useTool, fn20, fn21, tbl15, fn22

		do
			local tbl16 = { "Loading animations..." }

			local tbl17 = {
				"run",
				"chase",
				"down",
				"fall",
				"ragdoll",
				"idle",
				"walk",
				"jump",
				"dash",
				"climb",
				"getup",
				"land",
				"sprint",
				"movement",
				"turn",
				"halt",
				"hover",
				"sleep",
				"emote",
				"spawn",
				"dance",
				"wave",
				"sit",
				"block",
			}

			connection2 = nil
			local tbl18 = {}

			local tbl19 = {
				"idle",
				"run",
				"walk",
				"sprint",
				"jump",
				"fall",
				"land",
				"dash",
				"block",
				"charge",
				"stun",
				"ragdoll",
				"pose",
				"taunt",
				"emote",
				"spawn",
				"select",
				"intro",
				"outro",
				"menu",
				"lobby",
				"freecam",
				"fly",
				"reaction",
				"target",
				"hit",
				"hurt",
				"knockback",
				"getup",
				"lie",
				"downed",
				"trip",
				"dead",
				"death",
				"dodge",
				"parkour",
				"roll",
				"shop",
				"arcade",
				"piano",
				"rebound",
				"bounce",
				"tumble",
				"flinch",
				"pain",
				"hitted",
			}

			local tbl20 = {}

			local function fn23(arg)
				if tbl20[arg] ~= nil then
					return tbl20[arg]
				end
				local str5 = arg:lower()

				for _, v19 in ipairs(tbl19) do
					if str5:find(v19) then
						tbl20[arg] = true
						return true
					end
				end

				tbl20[arg] = false
				return false
			end

			task.spawn(function()
				local animations = ReplicatedStorage:WaitForChild("Animations", 15)

				if animations then
					for _, child in ipairs(animations:GetChildren()) do
						if child:IsA("Folder") then
							for _, descendant in ipairs(child:GetDescendants()) do
								if descendant:IsA("Animation") and not fn23(descendant.Name) then
									local match = descendant.AnimationId:match("%d+")

									if match then
										tbl18[match] = descendant.Name
									end
								end
							end
						end
					end
				end
			end)

			local tbl21 = {
				"melee",
				"attack",
				"slash",
				"strike",
				"kick",
				"punch",
				"slam",
				"cut",
				"shoot",
				"throw",
				"fire",
			}

			local tbl22 = {}

			local function fn24(arg)
				if tbl22[arg] ~= nil then
					return tbl22[arg]
				end
				local str5 = arg:lower()
				local flag12 = false

				for _, v19 in ipairs(tbl21) do
					if str5:find(v19) then
						flag12 = true
						break
					end
				end

				flag12 = flag12 and not fn23(arg)
				tbl22[arg] = flag12
				return flag12
			end

			fn19 = function(arg, arg2)
				if not toggles.AutoYutaCounter or not toggles.AutoYutaCounter.Value then
					return
				end

				if not arg2 or not arg2.Animation then
					return
				end
				local character = LocalPlayer.Character
				if not character then
					return
				end
				local humanoidRootPart2 = character:FindFirstChild("HumanoidRootPart")
				local humanoidRootPart3 = arg:FindFirstChild("HumanoidRootPart")
				if not humanoidRootPart2 or not humanoidRootPart3 then
					return
				end

				if (humanoidRootPart2.Position - humanoidRootPart3.Position).Magnitude > 22 then
					return
				end
				local match = arg2.Animation.AnimationId:match("%d+")
				local flag12

				if match and tbl18[match] then
					flag12 = true
				else
					flag12 = false

					if fn24(arg2.Name) then
						flag12 = true
					end
				end

				if flag12 then
					if toggles.YutaFacingCheck and toggles.YutaFacingCheck.Value then
						local lookVector = humanoidRootPart3.CFrame.LookVector
						local unit = Vector2.new(lookVector.X, lookVector.Z).Unit
						local n26 = humanoidRootPart2.Position - humanoidRootPart3.Position
						if unit:Dot(Vector2.new(n26.X, n26.Z).Unit) < (options.YutaFacingThreshold and options.YutaFacingThreshold.Value or 0.6) then
							return
						end
					end

					local outburst = character:FindFirstChild("Moveset") and character.Moveset:FindFirstChild("Outburst")

					if outburst then
						local ok, result = pcall(function()
							return require(game.ReplicatedStorage.Knit.Knit)
						end)

						if not ok or not result then
							return
						end
						local ToolController = result.GetController("ToolController")
						if not ToolController then
							return
						end
						ToolController:UseTool(outburst, "Activated")

						if toggles.YutaInstantMode and toggles.YutaInstantMode.Value then
							task.wait(0.01)
							ToolController:UseTool(outburst, "Deactivated")
						end
					end
				end
			end

			local useSetService = nil
			dashRequest = nil
			useTool = nil

			task.spawn(function()
				local ok, result = pcall(function()
					return require(game.ReplicatedStorage.Knit.Knit)
				end)

				if not ok or not result then
					return
				end
				local ToolController = result.GetController("ToolController")
				local MovementController = result.GetController("MovementController")
				local MovementService = result.GetService("MovementService")

				if ToolController then
					if not useSetService then
						useSetService = ToolController.UseSetService
					end

					ToolController.UseSetService = function(arg, arg2, ...)
						local tbl23 = { ... }

						if arg2 == "Activated" then
							if AlwaysUppercutActive then
								tbl23[1] = "Up"
							elseif AlwaysDownslamActive then
								tbl23[1] = "Down"
							end
						end

						return useSetService(arg, arg2, (table.unpack or unpack)(tbl23))
					end

					if not ToolController.OriginalUseTool then
						local toolController = LocalPlayer:WaitForChild("PlayerScripts", 10) and LocalPlayer.PlayerScripts:WaitForChild("Controllers", 5) and LocalPlayer.PlayerScripts.Controllers:WaitForChild("Character", 5) and LocalPlayer.PlayerScripts.Controllers.Character:WaitForChild("ToolController", 5)

						if toolController then
							local createController = result.CreateController
							local v19 = nil

							result.CreateController = function(arg)
								v19 = arg
								return setmetatable(arg, { __index = result })
							end

							local clone = toolController:Clone()
							clone.Parent = toolController.Parent
							local ok2 = pcall(require, clone)

							pcall(function()
								clone:Destroy()
							end)

							result.CreateController = createController

							if ok2 and v19 and v19.UseTool then
								local useTool2 = v19.UseTool

								pcall(function()
									debug.setupvalue(useTool2, 2, result.GetController("HandicapController"))
									debug.setupvalue(useTool2, 4, ToolController)
								end)

								ToolController.OriginalUseTool = useTool2
							end
						end

						if not ToolController.OriginalUseTool and ToolController.UseTool then
							ToolController.OriginalUseTool = ToolController.UseTool
						end
					end

					useTool = function(arg, arg2, arg3, ...)
						local character = LocalPlayer.Character

						if character and arg3 == "Activated" and toggles.AlwaysAirVariant and toggles.AlwaysAirVariant.Value and arg2 and typeof(arg2) == "Instance" and (arg2.Name == "Cursed Strikes" or arg2.Name == "Crushing Blow") then
							local humanoid2 = character:FindFirstChildOfClass("Humanoid")
							local humanoidRootPart2 = character:FindFirstChild("HumanoidRootPart")

							if humanoid2 and humanoidRootPart2 and humanoid2.FloorMaterial ~= Enum.Material.Air then
								humanoid2.Jump = true
								humanoid2:ChangeState(Enum.HumanoidStateType.Jumping)
								humanoidRootPart2.AssemblyLinearVelocity = Vector3.new(humanoidRootPart2.AssemblyLinearVelocity.X, 48, humanoidRootPart2.AssemblyLinearVelocity.Z)
								local now2 = tick()

								while humanoid2.FloorMaterial ~= Enum.Material.Air and tick() - now2 < 0.5 do
									task.wait()
								end

								task.wait(0.05)
							end
						end

						if ToolController.OriginalUseTool then
							local originalUseTool = ToolController.OriginalUseTool
							local v19 = table.pack(...)
							v19.n = 4 + v19.n - 1
							table.move(v19, 1, v19.n, 4, v19)
							v19[1] = arg
							v19[2] = arg2
							v19[3] = arg3
							return originalUseTool(table.unpack(v19, 1, v19.n))
						end
					end
				end

				if MovementController then
					if not _G.OriginalDashRequest then
						_G.OriginalDashRequest = MovementController.DashRequest
					end

					dashRequest = function(arg)
						local character = LocalPlayer.Character
						if not character then
							return
						end
						local humanoid2 = character:FindFirstChildOfClass("Humanoid")
						local humanoidRootPart2 = character:FindFirstChild("HumanoidRootPart")
						if not humanoid2 or not humanoidRootPart2 then
							return
						end
						local lookVector = workspace.CurrentCamera.CFrame.LookVector
						local cframe = CFrame.lookAt(humanoidRootPart2.Position, humanoidRootPart2.Position + Vector3.new(lookVector.X, 0, lookVector.Z))
						local v19 = humanoid2.MoveDirection:Dot(cframe.LookVector)
						local v20 = humanoid2.MoveDirection:Dot(cframe.RightVector)
						local v21 = math.round(v19)
						local v22 = math.round(v20)
						local str5

						if v21 == 1 then
							str5 = "Front"
						elseif v21 == -1 then
							str5 = "Back"
						elseif v22 == 1 then
							str5 = "Right"
						else
							str5 = "Front"

							if v22 == -1 then
								str5 = "Left"
							end
						end

						local info = character:FindFirstChild("Info")

						if info and (info:FindFirstChild("Knockback") or character:GetAttribute("Burst") and not info:GetAttribute("Burst") or info:FindFirstChild("ForceEsc") and info.ForceEsc.Value) then
							if MovementService and MovementService.Dash then
								MovementService.Dash:Fire(str5, true)
							end

							return
						end

						if info and (info:FindFirstChild("Block") or info:FindFirstChild("Stun")) or character:GetAttribute("Ragdoll") and character:GetAttribute("Ragdoll") > 0 then
							return
						end

						if str5 == "Front" then
							if ToolController and ToolController.UseSetService then
								ToolController:UseSetService("Chase", humanoid2.FloorMaterial == Enum.Material.Air)
							end
						else
							if MovementService and MovementService.Dash then
								MovementService.Dash:Fire(str5)
							end

							if arg and arg.Dash then
								arg:Dash(LocalPlayer, character, str5)
							end
						end
					end
				end
			end)

			fn20 = function(arg)
				if connection2 then
					connection2:Disconnect()
					connection2 = nil
				end

				if not arg then
					return
				end
				local humanoid2 = arg:WaitForChild("Humanoid", 5)
				if not humanoid2 then
					return
				end
				local animator = humanoid2:WaitForChild("Animator", 5)
				if not animator then
					return
				end

				connection2 = animator.AnimationPlayed:Connect(function(arg2)
					if not toggles.AutoMahitoBlackflash or not toggles.AutoMahitoBlackflash.Value then
						return
					end

					if string.find(arg2.Animation and arg2.Animation.AnimationId or "", "72475960800126", 1, true) then
						task.spawn(function()
							task.wait(0.2)

							pcall(function()
								local activated = ReplicatedStorage:WaitForChild("Knit", 3):WaitForChild("Knit", 3):WaitForChild("Services", 3):WaitForChild("FocusStrikeService", 3):WaitForChild("RE", 3):WaitForChild("Activated", 3)
								local focusStrike = arg:WaitForChild("Moveset", 3):WaitForChild("Focus Strike", 3)
								activated:FireServer(focusStrike)
							end)
						end)
					end
				end)

				table.insert(tbl9, connection2)
			end

			local services = nil

			fn21 = function()
				if services then
					return services
				end
				local knit = ReplicatedStorage:FindFirstChild("Knit")
				if not knit then
					return nil
				end
				local knit2 = knit:FindFirstChild("Knit")
				if not knit2 then
					return nil
				end
				services = knit2:FindFirstChild("Services")
				return services
			end

			local n26 = 0.06

			task.spawn(function()
				local v19 = Stats

				while task.wait(1.5) do
					pcall(function()
						local dataPing = v19.Network.ServerStatsItem["Data Ping"]

						if dataPing then
							local num = tonumber(dataPing:GetValueString():match("%d+"))

							if num then
								n26 = num / 1000
							end
						end
					end)
				end
			end)

			local v19 = RaycastParams_new()
			v19.FilterType = Enum_RaycastFilterType_Exclude
			v19.IgnoreWater = true
			tbl15 = {}

			local function fn25(arg)
				if tbl15[arg] then
					return
				end
				tbl15[arg] = true
				local v20 = string.lower(arg)

				for i = 1, #tbl17 do
					if string.find(v20, tbl17[i]) then
						return
					end
				end

				if not table.find(tbl16, arg) then
					if tbl16[1] == "Loading animations..." then
						table.remove(tbl16, 1)
					end

					table.insert(tbl16, arg)
					table.sort(tbl16)

					if options.AnimationsList then
						options.AnimationsList:SetValues(tbl16)
					end
				end
			end

			local function fn26(arg)
				local v20 = Players
				local v21 = LocalPlayer
				if v20:GetPlayerFromCharacter(arg) == v21 then
					return
				end
				local humanoid2 = arg:WaitForChild("Humanoid", 5)

				if humanoid2 then
					local connection3 = nil
					local connection4 = nil

					connection4 = arg.AncestryChanged:Connect(function(child, parent)
						if not parent then
							if connection3 then
								connection3:Disconnect()
							end

							if connection4 then
								connection4:Disconnect()
							end
						end
					end)

					connection3 = humanoid2.AnimationPlayed:Connect(function(arg2)
						if arg2.Animation then
							fn25(arg2.Animation.Name)
						end
					end)

					table.insert(tbl9, connection3)
					table.insert(tbl9, connection4)
				end
			end

			fn22 = function()
				local characters = Workspace:WaitForChild("Characters", 10) or Workspace:FindFirstChild("Characters")
				if not characters then
					return
				end

				for _, child in pairs(characters:GetChildren()) do
					fn26(child)
				end

				local connection3 = characters.ChildAdded:Connect(function(child)
					task.wait(0.5)
					fn26(child)
				end)

				table.insert(tbl9, connection3)
			end
		end

		local fn23

		fn23 = function(name, image, arg, position)
			if not UserInputService.TouchEnabled then
				return
			end

			if tbl10[name] then
				tbl10[name]:Destroy()
				tbl10[name] = nil
			end

			local jump = LocalPlayer:WaitForChild("PlayerGui", 10):WaitForChild("Controls", 5):WaitForChild("Mobile", 5):WaitForChild("Jump", 5)
			if not jump then
				return
			end
			local clone = jump:FindFirstChild("Block") and jump.Block:Clone() or jump:Clone()
			clone.Name = name
			clone.Position = position or UDim2.new(-0.7, 0, -2.4, 0)
			clone.Parent = jump
			clone.Visible = true
			local imageLabel = clone:FindFirstChildWhichIsA("ImageLabel", true)

			if imageLabel then
				imageLabel.Image = image
			end

			local connection3 = clone.MouseButton1Click:Connect(arg)
			table.insert(tbl9, connection3)

			clone.InputBegan:Connect(function()
				if toggles and toggles.LockAllButtons and toggles.LockAllButtons.Value then
					return
				end
			end)

			tbl10[name] = clone
		end

		local fn24

		fn24 = function(arg)
			if tbl10[arg] then
				tbl10[arg]:Destroy()
				tbl10[arg] = nil
			end
		end

		local fn25, fn26

		do
			local flag12 = false
			local connection3 = nil

			local function fn27(arg)
				if not arg then
					return
				end

				if getconnections then
					for _, v19 in ipairs({ "MouseButton1Down", "MouseButton1Click", "Activated" }) do
						local v20 = arg[v19]

						if v20 then
							for _, v21 in ipairs(getconnections(v20)) do
								pcall(function()
									v21:Fire()
									v21:Fire()
									v21:Fire()
								end)
							end
						end
					end
				else
					pcall(function()
						arg:Activate()
					end)
				end
			end

			local function fn28()
				local playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
				if not playerGui then
					return
				end
				local qte = playerGui:FindFirstChild("QTE")

				if qte then
					local touchEnabled = UserInputService.TouchEnabled

					for i = 1, 3 do
						if touchEnabled then
							local qteMobile = qte:FindFirstChild("QTE_MOBILE")

							if qteMobile then
								fn27(qteMobile)
							end
						else
							local qtePc = qte:FindFirstChild("QTE_PC")

							if qtePc and qtePc:IsA("TextLabel") then
								local text = qtePc.Text

								if text and text ~= "" then
									local v19 = Enum.KeyCode[text]

									if v19 then
										VirtualInputManager:SendKeyEvent(true, v19, false, game)
										VirtualInputManager:SendKeyEvent(false, v19, false, game)
									end
								end
							end
						end
					end
				end
			end

			fn25 = function()
				flag12 = true
				local n26 = 0

				connection3 = RunService.Heartbeat:Connect(function()
					if not flag12 then
						return
					end
					local now2 = os.clock()

					if now2 - n26 >= 0.08 then
						n26 = now2
						fn28()
					end
				end)
			end

			fn26 = function()
				flag12 = false

				if connection3 then
					connection3:Disconnect()
					connection3 = nil
				end
			end
		end

		local v19
		v19 = nil
		local fn27

		do
			local v20 = nil
			local connection3 = nil

			local function createBillboardGui()
				if v20 and v20.Parent and v20.Parent.Parent then
					return v20
				end

				pcall(function()
					if v20 then
						v20:Destroy()
					end
				end)

				local billboardGui = Instance.new("BillboardGui")
				billboardGui.Name = "LockOnIndicator"
				billboardGui.Adornee = nil
				billboardGui.Size = UDim2.new(0, 50, 0, 50)
				billboardGui.AlwaysOnTop = true
				billboardGui.Enabled = false
				billboardGui.ResetOnSpawn = false
				local imageLabel = Instance.new("ImageLabel")
				imageLabel.BackgroundTransparency = 1
				imageLabel.Size = UDim2.new(1, 0, 1, 0)
				imageLabel.Image = "rbxassetid://263401222"
				imageLabel.ImageColor3 = Color3.fromRGB(0, 170, 255)
				imageLabel.Parent = billboardGui
				billboardGui.Parent = gethui and gethui() or v15 or LocalPlayer:FindFirstChild("PlayerGui")
				return billboardGui
			end

			if LocalPlayer:WaitForChild("PlayerGui", 5) then
				v20 = createBillboardGui()
			end

			local function fn28()
				local character = LocalPlayer.Character
				local humanoidRootPart2 = character and character:FindFirstChild("HumanoidRootPart")
				if not humanoidRootPart2 then
					return nil
				end
				local n26 = options.AimlockRange and options.AimlockRange.Value or 80
				local mouse = LocalPlayer:GetMouse()
				local v21 = nil
				local huge = math.huge
				local currentCamera = workspace.CurrentCamera

				local function fn29(arg)
					if not arg or arg == character or not arg:IsA("Model") then
						return
					end
					local humanoidRootPart3 = arg:FindFirstChild("HumanoidRootPart")
					local humanoid2 = arg:FindFirstChildOfClass("Humanoid")
					if not humanoidRootPart3 or not humanoid2 or humanoid2.Health <= 0 or arg:GetAttribute("Dead") == true then
						return
					end
					local magnitude = (humanoidRootPart3.Position - humanoidRootPart2.Position).Magnitude
					if magnitude > n26 then
						return
					end
					local v22, v23 = currentCamera:WorldToViewportPoint(humanoidRootPart3.Position)
					local n27

					if v23 and mouse then
						local vector2 = Vector2.new(mouse.X, mouse.Y)
						n27 = (Vector2.new(v22.X, v22.Y) - vector2).Magnitude * 0.4 + magnitude * 0.6
					else
						n27 = magnitude + 150
					end

					if n27 < huge then
						huge = n27
						v21 = arg
					end
				end

				for _, player in ipairs(Players:GetPlayers()) do
					if player ~= LocalPlayer and player.Character then
						fn29(player.Character)
					end
				end

				local characters = Workspace:FindFirstChild("Characters")

				if characters then
					for _, child in ipairs(characters:GetChildren()) do
						fn29(child)
					end
				end

				for _, child in ipairs(Workspace:GetChildren()) do
					if child:IsA("Model") and (child.Name:lower():find("dummy") or child:FindFirstChild("Enemy") or child:FindFirstChild("Humanoid")) then
						fn29(child)
					end
				end

				return v21
			end

			local function fn29()
				v19 = nil

				if connection3 then
					connection3:Disconnect()
					connection3 = nil
				end

				workspace.CurrentCamera.CameraType = Enum.CameraType.Custom

				pcall(function()
					local movementRelative = Enum.RotationType.MovementRelative
					UserSettings().GameSettings.RotationType = movementRelative
				end)

				pcall(function()
					UserInputService.MouseBehavior = Enum.MouseBehavior.Default
				end)

				if LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
					LocalPlayer.Character:FindFirstChildOfClass("Humanoid").AutoRotate = true
				end

				if v20 then
					v20.Adornee = nil
					v20.Enabled = false
				end

				RunService:UnbindFromRenderStep("LockOnCam")

				if toggles.AimlockEnabled and toggles.AimlockEnabled.Value then
					toggles.AimlockEnabled:SetValue(false)
				end
			end

			local fn30 = nil

			fn30 = function(arg)
				if not arg or not arg:FindFirstChild("HumanoidRootPart") then
					return
				end
				v19 = arg

				if not v20 or not v20.Parent or not v20.Parent.Parent then
					v20 = createBillboardGui()
				end

				if v20 then
					v20.Adornee = arg:FindFirstChild("HumanoidRootPart") or arg:FindFirstChild("Head")
					v20.Enabled = true
				end

				if connection3 then
					connection3:Disconnect()
					connection3 = nil
				end

				local humanoid2 = arg:FindFirstChildOfClass("Humanoid")

				if humanoid2 then
					connection3 = humanoid2.Died:Connect(function()
						local v21 = fn28()

						if v21 then
							fn30(v21)
						else
							fn29()
						end
					end)
				end

				RunService:BindToRenderStep("LockOnCam", Enum.RenderPriority.Camera.Value + 1, function(...) end)
			end

			fn27 = function()
				if v20 and not v20.Parent then
					if LocalPlayer:FindFirstChild("PlayerGui") then
						v20.Parent = LocalPlayer.PlayerGui
					end
				end

				toggles.AimlockEnabled:OnChanged(function(arg)
					if arg then
						local v21 = fn28()

						if v21 then
							fn30(v21)
						else
							toggles.AimlockEnabled:SetValue(false)
						end
					else
						fn29()
					end
				end)

				LocalPlayer.CharacterAdded:Connect(function()
					fn29()
				end)
			end
		end

		local t
		t = Enum.KeyCode.T
		local n26
		n26 = 75
		local flag12, v20, screenGui, imageButton, fn28

		do
			local v21 = Vector3_new(3, 1, 22)
			flag12 = false
			v20 = nil
			local v22 = nil
			local connection3 = nil
			local connection4 = nil
			local connection5 = nil
			local connection6 = nil
			local position = nil
			local unit = nil
			local fieldOfView = nil
			screenGui = Instance.new("ScreenGui")
			screenGui.Name = "LockOnGui"
			screenGui.ResetOnSpawn = false
			screenGui.IgnoreGuiInset = true
			screenGui.Parent = LocalPlayer.PlayerGui
			local n27 = 64
			imageButton = Instance.new("ImageButton")
			imageButton.Name = "LockButton"
			imageButton.Size = UDim2.new(0, 64, 0, 64)
			imageButton.Position = UDim2.new(1, -n27 - 20, 1, -n27 - 120)
			imageButton.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
			imageButton.BackgroundTransparency = 0.35
			imageButton.Visible = false
			imageButton.Parent = screenGui
			Instance.new("UICorner", imageButton).CornerRadius = UDim.new(1, 0)
			local uiStroke = Instance.new("UIStroke", imageButton)
			uiStroke.Color = Color3.fromRGB(0, 170, 255)
			uiStroke.Thickness = 2
			uiStroke.Transparency = 0.2
			local imageLabel = Instance.new("ImageLabel", imageButton)
			imageLabel.Name = "Icon"
			imageLabel.Size = UDim2.new(0.65, 0, 0.65, 0)
			imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
			imageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
			imageLabel.BackgroundTransparency = 1
			imageLabel.Image = "rbxassetid://11738355467"
			imageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
			local frame2 = Instance.new("Frame", imageButton)
			frame2.Name = "StatusDot"
			frame2.Size = UDim2.new(0, 12, 0, 12)
			frame2.Position = UDim2.new(1, -14, 0, 2)
			frame2.BackgroundColor3 = Color3.fromRGB(0, 255, 128)
			Instance.new("UICorner", frame2).CornerRadius = UDim.new(1, 0)
			local uiStroke2 = Instance.new("UIStroke", frame2)
			uiStroke2.Color = Color3.fromRGB(10, 10, 15)
			uiStroke2.Thickness = 1.5
			local flag13 = false
			local vector2 = Vector2.new(0, 0)
			local vector22 = Vector2.new(0, 0)
			local v23 = nil

			imageButton.InputBegan:Connect(function(input)
				if toggles and toggles.LockAllButtons and toggles.LockAllButtons.Value then
					return
				end

				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					v23 = input
					vector2 = Vector2.new(input.Position.X, input.Position.Y)
					vector22 = Vector2.new(imageButton.AbsolutePosition.X, imageButton.AbsolutePosition.Y)
					flag13 = false
				end
			end)

			UserInputService.InputChanged:Connect(function(input)
				local flag14 = input == v23
				local flag15

				if flag14 then
					flag15 = input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch
				else
					flag15 = flag14
				end

				if flag15 then
					local n28 = Vector2.new(input.Position.X, input.Position.Y) - vector2

					if not flag13 and n28.Magnitude > 6 then
						flag13 = true
					end

					if flag13 then
						local n29 = math.clamp(vector22.X + n28.X, 0, screenGui.AbsoluteSize.X - n27)
						local n30 = math.clamp(vector22.Y + n28.Y, 0, screenGui.AbsoluteSize.Y - n27)
						imageButton.Position = UDim2.new(0, n29, 0, n30)
					end
				end
			end)

			UserInputService.InputEnded:Connect(function(input)
				if input == v23 then
					v23 = nil

					task.defer(function()
						flag13 = false
					end)
				end
			end)

			local function fn29()
				local color = flag12 and Color3.fromRGB(255, 60, 60) or Color3.fromRGB(0, 170, 255)
				local color2 = flag12 and Color3.fromRGB(255, 60, 60) or Color3.fromRGB(0, 255, 128)
				local color3 = flag12 and Color3.fromRGB(255, 60, 60) or Color3.fromRGB(255, 255, 255)
				TweenService:Create(uiStroke, TweenInfo.new(0.15), { Color = color }):Play()
				TweenService:Create(frame2, TweenInfo.new(0.15), { BackgroundColor3 = color2 }):Play()
				TweenService:Create(imageLabel, TweenInfo.new(0.15), { ImageColor3 = color3 }):Play()
			end

			local function fn30()
				if v22 then
					v22:Destroy()
					v22 = nil
				end
			end

			local function fn31(adornee)
				fn30()
				local billboardGui = Instance.new("BillboardGui")
				billboardGui.Name = "LockIndicator"
				billboardGui.Adornee = adornee
				billboardGui.Size = UDim2.new(0, 65, 0, 65)
				billboardGui.AlwaysOnTop = true
				billboardGui.ResetOnSpawn = false
				local hui = gethui and gethui() or v15 or LocalPlayer:FindFirstChild("PlayerGui")
				if not hui then
					return
				end
				billboardGui.Parent = hui
				local imageLabel2 = Instance.new("ImageLabel", billboardGui)
				imageLabel2.Name = "Icon"
				imageLabel2.Size = UDim2.new(1, 0, 1, 0)
				imageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
				imageLabel2.Position = UDim2.new(0.5, 0, 0.5, 0)
				imageLabel2.BackgroundTransparency = 1
				imageLabel2.Image = "rbxthumb://type=Asset&id=93123295644340&w=420&h=420"
				imageLabel2.ImageColor3 = Color3.fromRGB(255, 60, 60)
				v22 = billboardGui
			end

			local function fn32()
				if connection3 then
					connection3:Disconnect()
					connection3 = nil
				end

				if connection4 then
					connection4:Disconnect()
					connection4 = nil
				end

				if connection5 then
					connection5:Disconnect()
					connection5 = nil
				end

				if connection6 then
					connection6:Disconnect()
					connection6 = nil
				end
			end

			fn28 = function()
				fn32()
				fn30()
				local character = LocalPlayer.Character
				local humanoid2 = character and character:FindFirstChildOfClass("Humanoid")

				if humanoid2 then
					humanoid2.AutoRotate = true
				end

				local currentCamera = workspace.CurrentCamera
				currentCamera.CameraType = Enum.CameraType.Custom

				if fieldOfView then
					currentCamera.FieldOfView = fieldOfView
					fieldOfView = nil
				end

				flag12 = false
				v20 = nil
				position = nil
				unit = nil
				TweenService:Create(imageLabel, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Rotation = 0 }):Play()
				fn29()
			end

			local function fn33(arg)
				fn28()
				if not arg then
					return
				end
				local humanoidRootPart2 = arg:FindFirstChild("HumanoidRootPart")
				local humanoid2 = arg:FindFirstChildOfClass("Humanoid")
				if not humanoidRootPart2 or not humanoid2 or humanoid2.Health <= 0 then
					return
				end
				local character = LocalPlayer.Character
				local humanoid3 = character and character:FindFirstChildOfClass("Humanoid")
				local humanoidRootPart3 = character and character:FindFirstChild("HumanoidRootPart")
				if not character or not humanoid3 or not humanoidRootPart3 then
					return
				end
				v20 = humanoidRootPart2
				flag12 = true
				fn31(humanoidRootPart2)
				fn29()
				local currentCamera = workspace.CurrentCamera
				fieldOfView = currentCamera.FieldOfView
				currentCamera.CameraType = Enum.CameraType.Scriptable
				local tbl16 = { FieldOfView = n26 }
				TweenService:Create(currentCamera, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), tbl16):Play()
				humanoid3.AutoRotate = false
				connection5 = humanoid3.Died:Connect(fn28)
				connection6 = humanoid2.Died:Connect(fn28)
				position = currentCamera.CFrame.Position
				local lookVector = humanoidRootPart3.CFrame.LookVector
				local vector = Vector3.new(lookVector.X, 0, lookVector.Z)
				unit = vector.Magnitude > 0.001 and vector.Unit or Vector3.new(0, 0, -1)
				connection4 = RunService.Heartbeat:Connect(function(...) end)
				connection3 = RunService.RenderStepped:Connect(function(...) end)
			end

			local function fn34()
				local character = LocalPlayer.Character
				local humanoidRootPart2 = character and character:FindFirstChild("HumanoidRootPart")
				if not humanoidRootPart2 then
					return nil
				end
				local mouse = LocalPlayer:GetMouse()
				local v24 = nil
				local huge = math.huge
				local n28 = options.AimlockRange and options.AimlockRange.Value or 80

				local function fn35(arg)
					if arg == character then
						return
					end
					local humanoidRootPart3 = arg:FindFirstChild("HumanoidRootPart")
					local humanoid2 = arg:FindFirstChildOfClass("Humanoid")
					if not humanoidRootPart3 or not humanoid2 or humanoid2.Health <= 0 or arg:GetAttribute("Dead") == true then
						return
					end
					local magnitude = (humanoidRootPart3.Position - humanoidRootPart2.Position).Magnitude
					if n28 < magnitude then
						return
					end
					local v25, v26 = Camera:WorldToViewportPoint(humanoidRootPart3.Position)
					if not v26 then
						return
					end
					local vector23 = Vector2.new(mouse.X, mouse.Y)
					local n29 = (Vector2.new(v25.X, v25.Y) - vector23).Magnitude + magnitude * 0.5

					if n29 < huge then
						huge = n29
						v24 = arg
					end
				end

				local characters = workspace:FindFirstChild("Characters")

				if characters then
					for _, child in ipairs(characters:GetChildren()) do
						if child:IsA("Model") then
							fn35(child)
						end
					end
				end

				for _, player in ipairs(Players:GetPlayers()) do
					if player ~= LocalPlayer and player.Character then
						fn35(player.Character)
					end
				end

				return v24
			end

			local function fn35()
				if flag13 then
					return
				end

				if flag12 then
					fn28()
				else
					local v24 = fn34()

					if v24 then
						fn33(v24)
					end
				end
			end

			ContextActionService:BindAction("LockOn", function(arg, arg2)
				if arg2 ~= Enum.UserInputState.Begin then
					return
				end
				fn35()
			end, false, t)

			imageButton.Activated:Connect(fn35)

			imageButton.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.Touch then
					TweenService:Create(imageButton, TweenInfo.new(0.1), { Size = UDim2.new(0, n27 * 0.9, 0, n27 * 0.9) }):Play()
				end
			end)
		end

		imageButton.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.Touch then
				TweenService:Create(imageButton, TweenInfo.new(0.1), { Size = UDim2.new(0, 64, 0, 64) }):Play()
			end
		end)

		LocalPlayer.CharacterAdded:Connect(function()
			fn28()
		end)

		LocalPlayer.CharacterRemoving:Connect(function()
			fn28()
		end)

		local fn29
		fn29 = nil
		local fn30
		fn30 = nil
		local fn31
		fn31 = nil
		local fn32

		do
			local fn33 = nil
			fn32 = nil

			local function fn34()
				local tbl16 = {}
				local tbl17 = { Box = {}, Corner = {}, Skeleton = {}, Name = {}, Tracer = {}, ItemEsp = {}, ItemTracer = {} }

				fn33 = function(arg)
					local color, v21, v22 = Color3.toHSV(arg)
					local n27 = options.GradientHueShift and options.GradientHueShift.Value or 0.08
					local n28 = options.GradientSatShift and options.GradientSatShift.Value or 1
					local n29 = options.GradientValueShift and options.GradientValueShift.Value or 0.4
					local clamp = math.clamp
					local color2 = Color3.fromHSV((color + n27) % 1, math.clamp(v21 * n28, 0, 1), clamp(v22 * n29, 0.1, 1))
					local new = ColorSequenceKeypoint.new
					return ColorSequence.new({ ColorSequenceKeypoint.new(0, arg), new(1, color2) })
				end

				fn32 = function()
					local tbl18 = {
						Box = "BoxEspColor",
						Corner = "CornerEspColor",
						Skeleton = "SkeletonEspColor",
						Name = "NameEspColor",
						Tracer = "TracerColor",
						ItemEsp = "ItemEspColor",
						ItemTracer = "ItemTracerColor",
					}

					for _, v21 in ipairs({ "Box", "Corner", "Skeleton", "Name", "Tracer", "ItemEsp", "ItemTracer" }) do
						local v22 = tbl18[v21]

						if v22 and options[v22] then
							fn31(v21, options[v22].Value)
						end
					end
				end

				local function fn35(arg)
					local value = ({
						Box = Color3.fromRGB(0, 200, 255),
						Corner = Color3.fromRGB(255, 50, 150),
						Skeleton = Color3.fromRGB(255, 50, 150),
						Name = Color3.fromRGB(0, 200, 255),
						Tracer = Color3.fromRGB(0, 200, 255),
						ItemEsp = Color3.fromRGB(0, 200, 255),
						ItemTracer = Color3.fromRGB(255, 50, 150),
					})[arg]

					local v21 = ({
						Box = "BoxEspColor",
						Corner = "CornerEspColor",
						Skeleton = "SkeletonEspColor",
						Name = "NameEspColor",
						Tracer = "TracerColor",
						ItemEsp = "ItemEspColor",
						ItemTracer = "ItemTracerColor",
					})[arg]

					if v21 and options[v21] then
						value = options[v21].Value
					end

					return fn33(value)
				end

				local function fn36(arg, arg2)
					table.insert(tbl17[arg2], arg)

					arg.Destroying:Connect(function()
						for i, v21 in ipairs(tbl17[arg2]) do
							if v21 == arg then
								table.remove(tbl17[arg2], i)
								break
							end
						end
					end)
				end

				fn31 = function(arg, arg2)
					local v21 = fn33(arg2)

					for _, v22 in ipairs(tbl17[arg]) do
						pcall(function()
							v22.Color = v21
						end)
					end
				end

				local function createUIGradient(parent, arg)
					local uiGradient = Instance.new("UIGradient")
					uiGradient.Color = fn35(arg)
					uiGradient.Rotation = 90
					uiGradient.Parent = parent
					fn36(uiGradient, arg)
					return uiGradient
				end

				local screenGui2 = Instance.new("ScreenGui")
				screenGui2.Name = "ENI_ESP_Overlay"
				screenGui2.ResetOnSpawn = false
				screenGui2.IgnoreGuiInset = true

				pcall(function()
					screenGui2.Parent = v15
				end)

				if not screenGui2.Parent then
					screenGui2.Parent = LocalPlayer:WaitForChild("PlayerGui")
				end

				local n27 = 57.295779513082323
				local sqrt = math.sqrt
				local atan2 = math.atan2
				local udim2 = UDim2.new
				local function fn37(l,I,D,S,u,j,A)local K=u-D;local h=j-S;local R= sqrt (K*K+h*h);local W=(D+u)*0.5;local D=(S+j)*0.5;if I.len~=R or I.th~=A then I.len=R;I.th=A;l.Size= udim2 (0,A,0,R);end;if I.mx~=W or I.my~=D then I.mx=W;I.my=D;l.Position= udim2 (0,W,0,D);end;R= atan2 (h,K)* n27 -90;if I.rot~=R then I.rot=R;l.Rotation=R;end;end

				local function fn38(adornee)
					if tbl16[adornee] then
						return
					end
					local humanoidRootPart2 = adornee:FindFirstChild("HumanoidRootPart")
					local head = adornee:FindFirstChild("Head")
					local humanoid2 = adornee:FindFirstChildOfClass("Humanoid")
					if not humanoidRootPart2 or not head or not humanoid2 then
						return
					end
					local playerFromCharacter = Players:GetPlayerFromCharacter(adornee)
					local flag13 = playerFromCharacter == nil and (adornee.Name:lower():find("dummy") ~= nil or adornee:FindFirstChild("Enemy") ~= nil or adornee:FindFirstChild("Dummy") ~= nil)

					local tbl18 = {
						Root = humanoidRootPart2,
						Head = head,
						Humanoid = humanoid2,
						Player = playerFromCharacter,
						IsDummy = flag13,
						DisplayName = playerFromCharacter and playerFromCharacter.DisplayName or flag13 and "Dummy" or adornee.Name,
						Gradients = {},
					}

					local function fn39(arg, arg2)
						table.insert(tbl18.Gradients, { grad = createUIGradient(arg, arg2), cat = arg2 })
					end

					local frame2 = Instance.new("Frame")
					frame2.Name = "ESPBox"
					frame2.BackgroundTransparency = 1
					frame2.BorderSizePixel = 0
					frame2.Visible = false
					frame2.Parent = screenGui2
					tbl18.Frame = frame2
					local frame3 = Instance.new("Frame")
					frame3.Name = "BoxFill"
					frame3.Size = UDim2.new(1, 0, 1, 0)
					frame3.Position = UDim2.new(0, 0, 0, 0)
					frame3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					frame3.BackgroundTransparency = 0.75
					frame3.BorderSizePixel = 0
					frame3.ZIndex = 0
					frame3.Visible = false
					frame3.Parent = frame2
					fn39(frame3, "Box")
					tbl18.BoxFill = frame3
					local boxLines = {}
					local n28 = options.EspThickness and options.EspThickness.Value or 2

					for k, v21 in pairs({
						Top = { Size = UDim2.new(1, 0, 0, n28), Pos = UDim2.new(0, 0, 0, 0) },
						Bottom = { Size = UDim2.new(1, 0, 0, n28), Pos = UDim2.new(0, 0, 1, -n28) },
						Left = { Size = UDim2.new(0, n28, 1, 0), Pos = UDim2.new(0, 0, 0, 0) },
						Right = { Size = UDim2.new(0, n28, 1, 0), Pos = UDim2.new(1, -n28, 0, 0) },
					}) do
						local frame4 = Instance.new("Frame")
						frame4.Name = k
						frame4.Size = v21.Size
						frame4.Position = v21.Pos
						frame4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						frame4.BorderSizePixel = 0
						frame4.Parent = frame2
						fn39(frame4, "Box")
						boxLines[k] = frame4
					end

					tbl18.BoxLines = boxLines
					local corners = {}
					local tbl19 = {}
					local tbl20 = { Size = UDim2.new(0, 12, 0, 2), Pos = UDim2.new(0, 0, 0, 0) }
					local tbl21 = { Size = UDim2.new(0, 2, 0, 12), Pos = UDim2.new(0, 0, 0, 0) }
					local tbl22 = { Size = UDim2.new(0, 12, 0, 2), Pos = UDim2.new(1, -12, 0, 0) }
					local tbl23 = { Size = UDim2.new(0, 2, 0, 12), Pos = UDim2.new(1, -2, 0, 0) }
					local tbl24 = { Size = UDim2.new(0, 12, 0, 2), Pos = UDim2.new(0, 0, 1, -2) }
					local tbl25 = { Size = UDim2.new(0, 2, 0, 12), Pos = UDim2.new(0, 0, 1, -12) }
					local tbl26 = { Size = UDim2.new(0, 12, 0, 2), Pos = UDim2.new(1, -12, 1, -2) }
					local tbl27 = { Size = UDim2.new(0, 2, 0, 12), Pos = UDim2.new(1, -2, 1, -12) }
					tbl19[1] = tbl20
					tbl19[2] = tbl21
					tbl19[3] = tbl22
					tbl19[4] = tbl23
					tbl19[5] = tbl24
					tbl19[6] = tbl25
					tbl19[7] = tbl26
					tbl19[8] = tbl27

					for _, v21 in ipairs(tbl19) do
						local frame4 = Instance.new("Frame")
						frame4.Size = v21.Size
						frame4.Position = v21.Pos
						frame4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						frame4.BorderSizePixel = 0
						frame4.Parent = frame2
						fn39(frame4, "Corner")
						table.insert(corners, frame4)
					end

					tbl18.Corners = corners
					local frame4 = Instance.new("Frame")
					frame4.Name = "ESPTracer"
					frame4.AnchorPoint = Vector2.new(0.5, 0.5)
					frame4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					frame4.BorderSizePixel = 0
					frame4.Visible = false
					frame4.Parent = screenGui2
					fn39(frame4, "Tracer")
					tbl18.TracerLine = frame4
					local frame5 = Instance.new("Frame")
					frame5.Name = "ESPSkeleton"
					frame5.BackgroundTransparency = 1
					frame5.Size = UDim2.new(1, 0, 1, 0)
					frame5.Visible = false
					frame5.Parent = screenGui2
					tbl18.SkeletonFrame = frame5
					local skeletonLines = {}

					for i = 1, 14 do
						local frame6 = Instance.new("Frame")
						frame6.AnchorPoint = Vector2.new(0.5, 0.5)
						frame6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						frame6.BorderSizePixel = 0
						frame6.Visible = false
						frame6.Parent = frame5
						fn39(frame6, "Skeleton")
						table.insert(skeletonLines, frame6)
					end

					tbl18.SkeletonLines = skeletonLines
					local textLabel = Instance.new("TextLabel")
					textLabel.Name = "NameLabel"
					textLabel.BackgroundTransparency = 1
					textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					textLabel.TextSize = 13
					textLabel.Font = Enum.Font.GothamBold
					textLabel.TextStrokeTransparency = 0
					textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
					textLabel.Size = UDim2.new(0, 200, 0, 20)
					textLabel.AnchorPoint = Vector2.new(0.5, 0.5)
					textLabel.Visible = false
					textLabel.Parent = screenGui2
					fn39(textLabel, "Name")
					tbl18.NameLabel = textLabel
					local highlight = Instance.new("Highlight")
					highlight.Name = "ENI_DummyCham"
					highlight.Adornee = adornee
					highlight.Enabled = false
					highlight.Parent = adornee
					tbl18.DummyCham = highlight
					local frame6 = Instance.new("Frame")
					frame6.Name = "CS2HealthBg"
					frame6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
					frame6.BackgroundTransparency = 0.3
					frame6.BorderSizePixel = 0
					frame6.Visible = false
					frame6.Parent = frame2
					tbl18.HealthBarBg = frame6
					local frame7 = Instance.new("Frame")
					frame7.Name = "CS2Health"
					frame7.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
					frame7.BorderSizePixel = 0
					frame7.Visible = false
					frame7.Parent = frame2
					tbl18.HealthBar = frame7
					tbl16[adornee] = tbl18
				end

				local function fn39(child)
					local v21 = tbl16[child]

					if v21 then
						if v21.Frame then
							v21.Frame:Destroy()
						end

						if v21.TracerLine then
							v21.TracerLine:Destroy()
						end

						if v21.SkeletonFrame then
							v21.SkeletonFrame:Destroy()
						end

						if v21.NameLabel then
							v21.NameLabel:Destroy()
						end

						if v21.DummyCham then
							v21.DummyCham:Destroy()
						end

						tbl16[child] = nil
					end
				end

				local function fn40(...) end
				local function fn41(...) end

				local function fn42(arg)
					if tbl16[arg] then
						return
					end

					if arg == LocalPlayer.Character then
						return
					end
					local humanoid2 = arg:FindFirstChildOfClass("Humanoid")
					if not humanoid2 or humanoid2.Health <= 0 then
						return
					end

					if not arg:FindFirstChild("HumanoidRootPart") then
						return
					end
					local connection3 = nil
					local connection4 = nil

					connection3 = humanoid2.Died:Connect(function()
						fn39(arg)

						if connection3 then
							connection3:Disconnect()
							connection3 = nil
						end

						if connection4 then
							connection4:Disconnect()
							connection4 = nil
						end
					end)

					connection4 = arg.AncestryChanged:Connect(function(child, parent)
						if not parent then
							fn39(arg)

							if connection3 then
								connection3:Disconnect()
								connection3 = nil
							end

							if connection4 then
								connection4:Disconnect()
								connection4 = nil
							end
						end
					end)

					fn38(arg)
				end

				local function fn43(child)
					if child:IsA("Model") then
						task.defer(fn42, child)
					end
				end

				local function fn44()
					local characters = workspace:FindFirstChild("Characters")

					if characters then
						for _, child in ipairs(characters:GetChildren()) do
							if child:IsA("Model") and not tbl16[child] then
								task.spawn(fn42, child)
							end
						end
					end

					for _, child in ipairs(workspace:GetChildren()) do
						local flag13 = child:IsA("Model") and not tbl16[child]
						local pos

						if flag13 then
							pos = child.Name:lower():find("dummy") or child:FindFirstChild("Humanoid")
						else
							pos = flag13
						end

						if pos then
							task.spawn(fn42, child)
						end
					end
				end

				local tbl18 = {}
				local tbl19 = {}
				Color3.fromRGB(255, 50, 80)
				Color3.fromRGB(120, 40, 255)
				Color3.fromRGB(255, 255, 255)
				local n28 = 1.5

				local function fn45(arg)
					if tbl18[arg] then
						return
					end
					local tbl20 = {}
					local textLabel = Instance.new("TextLabel")
					textLabel.Name = "ItemName"
					textLabel.BackgroundTransparency = 1
					textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					textLabel.TextSize = 12
					textLabel.Font = Enum.Font.GothamBold
					textLabel.TextStrokeTransparency = 0
					textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
					textLabel.Size = UDim2.new(0, 200, 0, 20)
					textLabel.AnchorPoint = Vector2.new(0.5, 0.5)
					textLabel.Visible = false
					textLabel.Parent = screenGui2
					createUIGradient(textLabel, "ItemEsp")
					tbl20.nameLabel = textLabel
					local frame2 = Instance.new("Frame")
					frame2.Name = "ItemTracer"
					frame2.AnchorPoint = Vector2.new(0.5, 0.5)
					frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					frame2.BorderSizePixel = 0
					frame2.Visible = false
					frame2.Parent = screenGui2
					createUIGradient(frame2, "ItemTracer")
					tbl20.tracer = frame2
					tbl18[arg] = tbl20
					return tbl20
				end

				local function fn46(arg)
					local v21 = tbl18[arg]

					if v21 then
						if v21.nameLabel then
							v21.nameLabel:Destroy()
						end

						if v21.tracer then
							v21.tracer:Destroy()
						end

						tbl18[arg] = nil
					end
				end

				local tbl20 = {}
				local function fn47(...) end
				local connection3 = nil
				local connection4 = nil
				local connection5 = nil
				local connection6 = nil

				fn29 = function()
					connection3 = RunService.RenderStepped:Connect(function(...) end)
					local characters = workspace:FindFirstChild("Characters")

					if characters then
						connection5 = characters.ChildAdded:Connect(fn43)
						connection6 = characters.ChildRemoved:Connect(fn39)
					end

					connection4 = workspace.ChildAdded:Connect(fn43)

					task.spawn(function()
						while flag11 do
							pcall(fn44)
							task.wait(3)
						end
					end)

					local items = workspace:FindFirstChild("Items")

					if items then
						local function fn48(child)
							task.wait()
							fn45(child)
						end

						local function fn49(child)
							fn46(child)
						end

						for _, child in ipairs(items:GetChildren()) do
							task.spawn(fn48, child)
						end

						table.insert(tbl19, items.ChildAdded:Connect(fn48))
						table.insert(tbl19, items.ChildRemoved:Connect(fn49))
					end
				end

				fn30 = function()
					if connection3 then
						connection3:Disconnect()
						connection3 = nil
					end

					if connection4 then
						connection4:Disconnect()
						connection4 = nil
					end

					if connection5 then
						connection5:Disconnect()
						connection5 = nil
					end

					if connection6 then
						connection6:Disconnect()
						connection6 = nil
					end

					for k in pairs(tbl16) do
						fn39(k)
					end

					table.clear(tbl16)

					for k in pairs(tbl18) do
						fn46(k)
					end

					table.clear(tbl18)

					for _, v21 in ipairs(tbl19) do
						pcall(function()
							v21:Disconnect()
						end)
					end

					table.clear(tbl19)

					if screenGui2 then
						screenGui2:Destroy()
					end

					for _, v21 in pairs(tbl17) do
						table.clear(v21)
					end
				end
			end

			fn34()
		end

		local fn33

		do
			local tbl16 = { Nue = {}, Frog = {} }

			local function fn34(arg)
				for _, v21 in ipairs(arg) do
					if v21.Disconnect then
						v21:Disconnect()
					end
				end

				table.clear(arg)
			end

			local function fn35(arg)
				local humanoid2 = arg:WaitForChild("Humanoid", 5)
				if not humanoid2 then
					return
				end

				table.insert(tbl16.Nue, humanoid2.AnimationPlayed:Connect(function(arg2)
					if toggles.AutoNueVariant and toggles.AutoNueVariant.Value and arg2.Animation and arg2.Animation.AnimationId == "rbxassetid://111077341852080" then
						local megumiService = fn21():FindFirstChild("MegumiService")

						if megumiService and megumiService:FindFirstChild("RE") then
							megumiService.RE.RightActivated:FireServer()
						end
					end
				end))
			end

			local function fn36(arg)
				local humanoid2 = arg:WaitForChild("Humanoid", 5)
				if not humanoid2 then
					return
				end

				table.insert(tbl16.Frog, humanoid2.AnimationPlayed:Connect(function(arg2)
					if toggles.AutoFrogVariant and toggles.AutoFrogVariant.Value and arg2.Animation and arg2.Animation.AnimationId == "rbxassetid://116432619539029" then
						local moveset = arg:FindFirstChild("Moveset")

						if moveset and moveset:FindFirstChild("Nue") then
							local nueService = fn21():FindFirstChild("NueService")

							if nueService and nueService:FindFirstChild("RE") then
								nueService.RE.Activated:FireServer(moveset.Nue)
							end
						end
					end
				end))
			end

			fn33 = function(character)
				fn34(tbl16.Nue)
				fn34(tbl16.Frog)
				fn35(character)
				fn36(character)
			end
		end

		local fn34

		do
			local n27 = -3

			local tbl16 = {
				"rbxassetid://131358603583212",
				"rbxassetid://91074768993486",
				"rbxassetid://116040503139675",
			}

			local tbl17 = { Active = false }

			local function fn35(arg)
				if toggles.ShowNotifications and toggles.ShowNotifications.Value then
					lib:Notify({ Title = "Clap TP", Description = arg, Time = 2 })
				end
			end

			local function fn36()
				local character = LocalPlayer.Character
				return character and character:FindFirstChild("HumanoidRootPart")
			end

			local function fn37()
				local character = LocalPlayer.Character
				return character and character:FindFirstChildOfClass("Humanoid")
			end

			local function fn38(arg)
				return arg and arg.Character and arg.Character:FindFirstChild("HumanoidRootPart") and arg.Character
			end

			local function fn39()
				local tbl18 = {}

				for _, player in ipairs(Players:GetPlayers()) do
					if player ~= LocalPlayer and player.Character then
						local humanoidRootPart2 = player.Character:FindFirstChild("HumanoidRootPart")
						local humanoid2 = player.Character:FindFirstChildOfClass("Humanoid")

						if humanoidRootPart2 and humanoid2 and humanoid2.Health > 0 then
							table.insert(tbl18, player)
						end
					end
				end

				return tbl18
			end

			local function fn40(arg)
				local str5 = options.ClapTPMode and options.ClapTPMode.Value or "Behind"
				local n28 = options.ClapTPBehindOffset and options.ClapTPBehindOffset.Value or 4
				local value = options.ClapTPBelowOffset and options.ClapTPBelowOffset.Value or n27
				local n29 = options.ClapTPAboveOffset and options.ClapTPAboveOffset.Value or 5
				if str5 == "Behind" then
					return arg.CFrame * CFrame.new(0, 0, n28)
				end

				if str5 == "Below" then
					return arg.CFrame * CFrame.new(0, value, 0)
				end
				return arg.CFrame * CFrame.new(0, n29, 0)
			end

			local function fn41(arg)
				local clap = ReplicatedStorage:FindFirstChild("Utils") and ReplicatedStorage.Utils:FindFirstChild("Todo") and ReplicatedStorage.Utils.Todo:FindFirstChild("Clap")
				if not clap then
					return
				end
				local clone = clap:Clone()
				clone.Size = Vector3_new(0, 0, 0)
				clone.Position = arg.Position
				clone.Parent = Workspace:FindFirstChild("Effects") or Workspace
				v14:AddItem(clone, 1.5)
				local attachment = clone:FindFirstChild("Attachment")

				if attachment then
					local sparks = attachment:FindFirstChild("Sparks")

					if sparks and sparks:IsA("ParticleEmitter") then
						sparks:Emit(20)
					end
				end

				TweenService:Create(clone, TweenInfo.new(0.25), { Size = Vector3_new(2.5, 2.5, 2.5), Transparency = 1 }):Play()
			end

			local function fn42(parent)
				local clap = ReplicatedStorage:FindFirstChild("Sounds") and ReplicatedStorage.Sounds:FindFirstChild("Todo") and ReplicatedStorage.Sounds.Todo:FindFirstChild("Clap")
				if not clap then
					return
				end

				for _, child in ipairs(clap:GetChildren()) do
					if child:IsA("Sound") then
						local clone = child:Clone()
						clone.Parent = parent
						clone:Play()
						v14:AddItem(clone, 2)
						return
					end
				end
			end

			local function fn43()
				local v21 = fn37()
				if not v21 then
					return
				end
				local animation = Instance.new("Animation")
				animation.AnimationId = tbl16[math.random(1, #tbl16)]
				v21:LoadAnimation(animation):Play()
				v14:AddItem(animation, 3)
			end

			local function fn44()
				local knit = ReplicatedStorage:FindFirstChild("Knit") and ReplicatedStorage.Knit:FindFirstChild("Knit")
				if not knit then
					return nil
				end
				local services = knit:FindFirstChild("Services")
				if not services then
					return nil
				end
				local todoService = services:FindFirstChild("TodoService")
				if not todoService then
					return nil
				end
				local re = todoService:FindFirstChild("RE")
				if not re then
					return nil
				end
				return re:FindFirstChild("RightActivated")
			end

			local v21 = nil

			fn34 = function()
				if tbl17.Active then
					return
				end

				if toggles.ClapTPEnabled and not toggles.ClapTPEnabled.Value then
					return
				end
				local clapTPTarget = options.ClapTPTarget
				clapTPTarget = clapTPTarget and clapTPTarget.Value
				if not clapTPTarget or clapTPTarget == "" or clapTPTarget == "None" then
					fn35("Select target")
					return
				end
				v21 = Players:FindFirstChild(clapTPTarget)
				if not v21 then
					fn35("Target unavailable")
					return
				end
				local v22 = fn38(v21)
				local v23 = fn36()
				if not v22 or not v23 then
					fn35("Character unavailable")
					return
				end
				local humanoidRootPart2 = v22:FindFirstChild("HumanoidRootPart")
				if not humanoidRootPart2 then
					fn35("Target unavailable")
					return
				end
				tbl17.Active = true
				local cFrame = v23.CFrame
				v23.CFrame = fn40(humanoidRootPart2)
				fn41(CFrame_new(v23.Position))
				fn41(CFrame_new(humanoidRootPart2.Position))
				fn43()
				fn42(v23)
				task.wait(options.ClapTPPreWait and options.ClapTPPreWait.Value or 0.4)
				local v24 = fn44()

				if v24 then
					pcall(function()
						v24:FireServer(v22)
					end)
				else
					fn35("Activation error")
				end

				task.wait(options.ClapTPSnapWait and options.ClapTPSnapWait.Value or 0.1)

				if v23 and v23.Parent then
					v23.CFrame = cFrame
				end

				task.wait(options.ClapTPFollowWait and options.ClapTPFollowWait.Value or 2)
				local v25 = fn38(v21)

				if v25 and v25:FindFirstChild("HumanoidRootPart") and v23 and v23.Parent then
					v23.CFrame = v25.HumanoidRootPart.CFrame * CFrame_new(0, 0, 3)
				end

				task.wait(0.2)
				tbl17.Active = false
			end

			local function fn45()
				if not options.ClapTPTarget then
					return
				end
				local tbl18 = {}

				for _, v22 in ipairs(fn39()) do
					table.insert(tbl18, v22.Name)
				end

				table.sort(tbl18)
				table.insert(tbl18, 1, "None")
				options.ClapTPTarget:SetValues(tbl18)

				if not table.find(tbl18, options.ClapTPTarget.Value) then
					options.ClapTPTarget:SetValue("None")
				end
			end

			task.spawn(function()
				while flag11 do
					pcall(function()
						if options and options.ClapTPTarget then
							fn45()
						end
					end)

					task.wait(3)
				end
			end)
		end

		local fn35, fn36, fn37
		local tbl16 = { PerfectSwap = nil, AutoRatio = nil, AutoDomain = nil }

		fn35 = function(arg)
			local v21 = fn21()

			if arg then
				local todoService = v21 and v21:WaitForChild("TodoService", 5)

				if todoService and todoService:FindFirstChild("RE") then
					tbl16.PerfectSwap = todoService.RE.Effects.OnClientEvent:Connect(function(...)
						local tbl17 = { ... }

						if tbl17[1] == "Swap" or tbl17[1] == "Swap2" or tbl17[1] == "Fakeout" then
							todoService.RE.Activated:FireServer(false)
						end
					end)
				end
			elseif tbl16.PerfectSwap then
				tbl16.PerfectSwap:Disconnect()
				tbl16.PerfectSwap = nil
			end
		end

		fn36 = function(arg)
			local v21 = fn21()

			if arg then
				local nanamiService = v21 and v21:WaitForChild("NanamiService", 5)

				if nanamiService and nanamiService:FindFirstChild("RE") then
					tbl16.AutoRatio = nanamiService.RE.Effects.OnClientEvent:Connect(function(...)
						local tbl17 = { ... }

						if tbl17[1] == "SpawnRatio" and tbl17[2] == LocalPlayer then
							local value = Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
							task.wait((type(tbl17[6]) == "number" and tbl17[6] or 1) * math.clamp(0.56 - (math.floor(value) - 100) / 1000 * 0.9, 0.25, 0.85))
							nanamiService.RE.RightActivated:FireServer()
						end
					end)
				end
			elseif tbl16.AutoRatio then
				tbl16.AutoRatio:Disconnect()
				tbl16.AutoRatio = nil
			end
		end

		fn37 = function(arg)
			if arg then
				local n27 = 0
				local flag13 = false

				tbl16.AutoDomain = RunService.Heartbeat:Connect(function()
					if not toggles.AutoDomain or not toggles.AutoDomain.Value then
						return
					end

					if os.clock() - n27 < 0.2 then
						return
					end
					n27 = os.clock()
					local playerGui = LocalPlayer:FindFirstChild("PlayerGui")
					if not playerGui then
						return
					end
					local choose = playerGui:FindFirstChild("Choose")
					if not choose then
						return
					end
					local timer = choose:FindFirstChild("Timer")
					if not timer or timer.Text ~= "1" then
						flag13 = false
						return
					end

					if flag13 then
						return
					end
					local domains = workspace:FindFirstChild("Domains")
					if not domains then
						return
					end
					local domain = domains:FindFirstChild("Domain")
					if not domain then
						return
					end

					if domain:GetAttribute("UI2") == true then
						return
					end
					local attribute2 = domain:GetAttribute("ConfessCount") or 0
					local attribute3 = domain:GetAttribute("DenialCount") or 0
					local attribute4 = domain:GetAttribute("SilenceCount") or 0
					if not (attribute2 == -1 and attribute3 == -1 and attribute4 == -1) then
						return
					end
					local guiButton = choose:FindFirstChildWhichIsA("GuiButton")

					if guiButton and type(getconnections) == "function" then
						pcall(function()
							for _, v21 in ipairs(getconnections(guiButton.MouseButton1Down)) do
								pcall(function()
									v21:Fire()
								end)
							end
						end)

						pcall(function()
							for _, v21 in ipairs(getconnections(guiButton.Activated)) do
								pcall(function()
									v21:Fire()
								end)
							end
						end)

						pcall(function()
							for _, v21 in ipairs(getconnections(guiButton.MouseButton1Click)) do
								pcall(function()
									v21:Fire()
								end)
							end
						end)

						flag13 = true
					end
				end)
			elseif tbl16.AutoDomain then
				tbl16.AutoDomain:Disconnect()
				tbl16.AutoDomain = nil
			end
		end

		local fn38

		local function fn39(arg)
			local n27 = arg or 50
			local character = LocalPlayer.Character
			local humanoidRootPart2 = character and character:FindFirstChild("HumanoidRootPart")
			if not humanoidRootPart2 then
				return nil
			end
			local position = humanoidRootPart2.Position
			local v21 = nil
			local v22 = n27

			local function fn40(arg2)
				if arg2 == character then
					return
				end
				local humanoid2 = arg2:FindFirstChildOfClass("Humanoid")
				local humanoidRootPart3 = arg2:FindFirstChild("HumanoidRootPart")

				if humanoid2 and humanoid2.Health > 0 and humanoidRootPart3 and not arg2:GetAttribute("Dead") then
					local magnitude = (position - humanoidRootPart3.Position).Magnitude

					if magnitude < v22 then
						v22 = magnitude
						v21 = arg2
					end
				end
			end

			for _, player in ipairs(Players:GetPlayers()) do
				if player ~= LocalPlayer and player.Character then
					fn40(player.Character)
				end
			end

			local characters = workspace:FindFirstChild("Characters")

			if characters then
				for _, child in ipairs(characters:GetChildren()) do
					if child:IsA("Model") then
						fn40(child)
					end
				end
			end

			return v21
		end

		fn38 = function(arg)
			local humanoid2 = arg:WaitForChild("Humanoid", 5)
			humanoid2 = humanoid2 and humanoid2:WaitForChild("Animator", 5)
			if not humanoid2 then
				return
			end

			local connection3 = humanoid2.AnimationPlayed:Connect(function(arg2)
				local animationId = arg2.Animation and arg2.Animation.AnimationId or ""

				if toggles.AutoWCS and toggles.AutoWCS.Value and string.find(animationId, "131506102901134", 1, true) then
					task.spawn(function()
						pcall(function()
							local v21 = fn21()
							local moveset = arg:FindFirstChild("Moveset")
							if not v21 or not moveset then
								return
							end
							local rushService = v21:FindFirstChild("RushService")
							local activated = rushService and rushService:FindFirstChild("RE") and rushService.RE:FindFirstChild("Activated")
							local flameArrowService = v21:FindFirstChild("FlameArrowService")
							local activated2 = flameArrowService and flameArrowService:FindFirstChild("RE") and flameArrowService.RE:FindFirstChild("Activated")
							local itadoriService = v21:FindFirstChild("ItadoriService")
							local rightActivated = itadoriService and itadoriService:FindFirstChild("RE") and itadoriService.RE:FindFirstChild("RightActivated")
							local rush = moveset:FindFirstChild("Rush")
							local open = moveset:FindFirstChild("Open")

							if activated and rush then
								activated:FireServer(rush)
							end

							task.wait(0.05)

							if activated2 and open then
								activated2:FireServer(open)
							end

							task.wait(1.1)

							if rightActivated then
								for i = 1, 8 do
									rightActivated:FireServer()
									task.wait(0.05)
								end
							end
						end)
					end)
				end

				if toggles.AutoDoor and toggles.AutoDoor.Value and string.find(animationId, "82541714192027", 1, true) then
					task.spawn(function()
						task.wait(0.2)

						pcall(function()
							local v21 = fn21()
							local moveset = arg:FindFirstChild("Moveset")
							if not v21 or not moveset then
								return
							end
							local shutterDoors = moveset:FindFirstChild("Shutter Doors")
							if not shutterDoors then
								return
							end
							local shutterDoorService = v21:FindFirstChild("ShutterDoorService")
							local activated = shutterDoorService and shutterDoorService:FindFirstChild("RE") and shutterDoorService.RE:FindFirstChild("Activated")

							if activated then
								activated:FireServer(shutterDoors)
								activated:FireServer(shutterDoors)
							end
						end)
					end)
				end

				if toggles.FeverCrusher and toggles.FeverCrusher.Value and string.find(animationId, "108123475959041", 1, true) then
					task.spawn(function()
						task.wait(0.2)

						pcall(function()
							local v21 = fn21()
							local moveset = arg:FindFirstChild("Moveset")
							if not v21 or not moveset then
								return
							end
							local shutterDoors = moveset:FindFirstChild("Shutter Doors")
							if not shutterDoors then
								return
							end
							local shutterDoorService = v21:FindFirstChild("ShutterDoorService")
							local activated = shutterDoorService and shutterDoorService:FindFirstChild("RE") and shutterDoorService.RE:FindFirstChild("Activated")

							if activated then
								activated:FireServer(shutterDoors)
								activated:FireServer(shutterDoors)
							end
						end)
					end)
				end

				if toggles.GarudaRebound and toggles.GarudaRebound.Value and string.find(animationId, "115097960689033", 1, true) then
					task.spawn(function()
						local v21 = fn39(50)
						local moveset = arg:FindFirstChild("Moveset")
						if not moveset then
							return
						end
						local garudaRebound = moveset:FindFirstChild("Garuda Rebound")
						if not garudaRebound then
							return
						end
						local n27 = options.GarudaDelay and options.GarudaDelay.Value or 1

						if n27 > 0 then
							task.wait(n27)
						end

						pcall(function()
							local v22 = fn21()
							if not v22 then
								return
							end
							local garudaReboundService = v22:FindFirstChild("GarudaReboundService")
							if not garudaReboundService then
								return
							end
							local activated = garudaReboundService:FindFirstChild("RE") and garudaReboundService.RE:FindFirstChild("Activated")
							local deactivated = garudaReboundService:FindFirstChild("RE") and garudaReboundService.RE:FindFirstChild("Deactivated")

							if activated then
								activated:FireServer(garudaRebound, v21)
							end

							if deactivated then
								deactivated:FireServer(garudaRebound, v21)
							end
						end)
					end)
				end
			end)

			table.insert(tbl9, connection3)
		end

		local fn40

		do
			local tbl17 = { GlideInProgress = false, TriggerCooldown = false }

			local function fn41(arg)
				if arg then
					arg = arg:FindFirstChild("HumanoidRootPart") or arg:FindFirstChild("Torso") or arg:FindFirstChild("UpperTorso")
				end

				return arg
			end

			local function fn42(arg, arg2)
				if not (arg and arg2) then
					return false
				end
				local vector = Vector3.new(arg2.CFrame.LookVector.X, 0, arg2.CFrame.LookVector.Z)
				if vector.Magnitude < 0.001 then
					return false
				end
				local unit = vector.Unit
				local n27 = arg.Position - arg2.Position
				if n27.Magnitude < 0.001 then
					return false
				end
				return unit:Dot(n27.Unit) > 0.1
			end

			local function fn43()
				local character = LocalPlayer.Character
				local v21 = fn41(character)
				if not v21 then
					return nil
				end
				local v22 = nil
				local n27 = options.BlackflashMaxRange and options.BlackflashMaxRange.Value or 25

				local function fn44(arg)
					if arg == character then
						return
					end
					local humanoid2 = arg:FindFirstChildOfClass("Humanoid")
					local v23 = fn41(arg)

					if humanoid2 and humanoid2.Health > 0 and v23 then
						local magnitude = (v21.Position - v23.Position).Magnitude

						if magnitude < n27 then
							if fn42(v21, v23) then
								n27 = magnitude
								v22 = arg
							end
						end
					end
				end

				if toggles.BlackflashTargetPlayers and toggles.BlackflashTargetPlayers.Value then
					for _, player in ipairs(Players:GetPlayers()) do
						if player ~= LocalPlayer and player.Character then
							fn44(player.Character)
						end
					end
				end

				if toggles.BlackflashTargetDummies and toggles.BlackflashTargetDummies.Value then
					local characters = workspace:FindFirstChild("Characters") or workspace:FindFirstChild("NPCs")

					if characters then
						for _, child in ipairs(characters:GetChildren()) do
							if child:IsA("Model") then
								fn44(child)
							end
						end
					else
						for _, child in ipairs(workspace:GetChildren()) do
							if child:IsA("Model") and child:FindFirstChildOfClass("Humanoid") and not Players:GetPlayerFromCharacter(child) then
								fn44(child)
							end
						end
					end
				end

				return v22
			end

			local v21 = nil

			local function fn44()
				if v21 and v21.Parent then
					return v21
				end

				for _, v22 in ipairs({
					function()
						return ReplicatedStorage:WaitForChild("Knit", 5):WaitForChild("Knit", 5):WaitForChild("Services", 5):WaitForChild("DivergentFistService", 5):WaitForChild("RE", 5):WaitForChild("Activated", 5)
					end,
					function()
						return ReplicatedStorage:WaitForChild("Knit", 5):WaitForChild("Services", 5):WaitForChild("DivergentFistService", 5):WaitForChild("RE", 5):WaitForChild("Activated", 5)
					end,
					function()
						return ReplicatedStorage:WaitForChild("KnitServices", 5):WaitForChild("DivergentFistService", 5):WaitForChild("RE", 5):WaitForChild("Activated", 5)
					end,
				}) do
					local ok, result = pcall(v22)
					if ok and result then
						v21 = result
						return result
					end
				end

				for _, descendant in ipairs(ReplicatedStorage:GetDescendants()) do
					if descendant:IsA("RemoteEvent") and descendant.Name == "Activated" then
						if string.find(descendant:GetFullName(), "Divergent") then
							v21 = descendant
							return descendant
						end
					end
				end

				return nil
			end

			local v22 = nil

			local function fn45()
				if v22 and v22.Parent then
					return v22
				end

				for _, v23 in ipairs({
					function()
						return ReplicatedStorage:WaitForChild("Knit", 5):WaitForChild("Knit", 5):WaitForChild("Services", 5):WaitForChild("SpecialService", 5):WaitForChild("RE", 5):WaitForChild("Activated", 5)
					end,
					function()
						return ReplicatedStorage:WaitForChild("Knit", 5):WaitForChild("Services", 5):WaitForChild("SpecialService", 5):WaitForChild("RE", 5):WaitForChild("Activated", 5)
					end,
					function()
						return ReplicatedStorage:WaitForChild("KnitServices", 5):WaitForChild("SpecialService", 5):WaitForChild("RE", 5):WaitForChild("Activated", 5)
					end,
				}) do
					local ok, result = pcall(v23)
					if ok and result then
						v22 = result
						return result
					end
				end

				for _, descendant in ipairs(ReplicatedStorage:GetDescendants()) do
					if descendant:IsA("RemoteEvent") and descendant.Name == "Activated" then
						local fullName = descendant:GetFullName()
						if string.find(fullName, "Special") or string.find(fullName, "Feint") or string.find(fullName, "SubMove") then
							v22 = descendant
							return descendant
						end
					end
				end

				return nil
			end

			local function fn46()
				local character = LocalPlayer.Character
				if not character then
					return
				end
				local moveset = character:FindFirstChild("Moveset")
				local special

				if moveset then
					special = moveset:FindFirstChild("Special") or moveset:FindFirstChild("Feint") or moveset:FindFirstChild("Divergent Fist") or moveset:FindFirstChild("SubMove") or moveset:FindFirstChild("R")
				else
					special = moveset
				end

				local flag13 = false

				pcall(function()
					local v23 = fn21()

					if v23 then
						local tbl18 = {}
						local itadoriService = v23:FindFirstChild("ItadoriService")
						local yujiService = v23:FindFirstChild("YujiService")
						local yujiItadoriService = v23:FindFirstChild("YujiItadoriService")
						local specialService = v23:FindFirstChild("SpecialService")
						local divergentFistService = v23:FindFirstChild("DivergentFistService")
						local feintService = v23:FindFirstChild("FeintService")
						local subMoveService = v23:FindFirstChild("SubMoveService")
						tbl18[1] = itadoriService
						tbl18[2] = yujiService
						tbl18[3] = yujiItadoriService
						tbl18[4] = specialService
						tbl18[5] = divergentFistService
						tbl18[6] = feintService
						tbl18[7] = subMoveService

						do
							local values = table.pack(v23:FindFirstChild("ToolService"))
							table.move(values, 1, values.n, 8, tbl18)
						end

						for _, v24 in ipairs(tbl18) do
							if v24 and v24:FindFirstChild("RE") then
								local re = v24.RE

								for _, v25 in ipairs({ "RightActivated", "Activated", "Special", "Feint" }) do
									local v26 = re:FindFirstChild(v25)

									if v26 and v26:IsA("RemoteEvent") then
										if special then
											pcall(function()
												v26:FireServer(special)
											end)
										end

										pcall(function()
											v26:FireServer()
										end)

										flag13 = true
									end
								end
							end
						end
					end
				end)

				if not flag13 then
					pcall(function()
						local v23 = fn45()

						if v23 then
							if special then
								pcall(function()
									v23:FireServer(special)
								end)
							end

							pcall(function()
								v23:FireServer()
							end)
						end
					end)
				end
			end

			local function fn47()
				local character = LocalPlayer.Character
				if not character then
					return
				end
				local moveset = character:FindFirstChild("Moveset")
				if not moveset then
					return
				end
				local divergentFist = moveset:FindFirstChild("Divergent Fist")
				if not divergentFist then
					return
				end
				local v23 = fn44()

				if v23 then
					v23:FireServer(divergentFist)
				end
			end

			local function fn48(arg)
				if tbl17.GlideInProgress then
					return
				end
				tbl17.GlideInProgress = true
				local character = LocalPlayer.Character
				local v23 = fn41(character)
				local humanoid2 = character and character:FindFirstChildOfClass("Humanoid")
				local v24 = fn41(arg)
				if not (v23 and humanoid2 and v24) then
					tbl17.GlideInProgress = false
					return
				end
				local n27 = 0
				local position = v23.Position
				local cFrame = v24.CFrame
				if Vector3.new(cFrame.LookVector.X, 0, cFrame.LookVector.Z).Magnitude < 0.001 then
					tbl17.GlideInProgress = false
					return
				end
				local vector = Vector3.new(cFrame.RightVector.X, 0, cFrame.RightVector.Z)
				if vector.Magnitude < 0.001 then
					tbl17.GlideInProgress = false
					return
				end
				local unit = vector.Unit
				local n28 = (position - v24.Position):Dot(unit) >= 0 and 1 or -1
				local n29 = 3.2
				local n30 = v24.Position + unit * (options.BlackflashCurveStrength and options.BlackflashCurveStrength.Value or 10) * n28
				local autoRotate = humanoid2.AutoRotate
				local cameraType = Camera.CameraType
				local anchored = v23.Anchored
				local devEnableMouseLock = LocalPlayer.DevEnableMouseLock
				humanoid2.AutoRotate = false
				v23.Anchored = true
				local str5 = options.BlackflashLockType and options.BlackflashLockType.Value or "Camera"

				if toggles.BlackflashCameraLock and toggles.BlackflashCameraLock.Value then
					if str5 == "Camera" then
						Camera.CameraType = Enum.CameraType.Custom
					elseif str5 == "Character" then
						LocalPlayer.DevEnableMouseLock = false
					end
				end

				local n31 = options.BlackflashDashDuration and options.BlackflashDashDuration.Value or 0.28
				local connection3 = nil

				connection3 = RunService.RenderStepped:Connect(function(deltaTime)
					local v25 = fn41(LocalPlayer.Character)
					local v26 = fn41(arg)
					local flag13 = not v25 or not v26 or not v26.Parent

					if not flag13 then
						flag13 = not (toggles.BlackflashEnabled and toggles.BlackflashEnabled.Value)
					end

					if flag13 then
						connection3:Disconnect()

						pcall(function()
							humanoid2.AutoRotate = autoRotate
							v25.Anchored = anchored
							LocalPlayer.DevEnableMouseLock = devEnableMouseLock
						end)

						Camera.CameraType = cameraType
						tbl17.GlideInProgress = false
						return
					end

					n27 += deltaTime
					local n32 = math.clamp(n27 / n31, 0, 1)
					local n33 = (1 - n32) ^ 2 * position + 2 * (1 - n32) * n32 * n30 + n32 ^ 2 * (v26.Position - Vector3.new(v26.CFrame.LookVector.X, 0, v26.CFrame.LookVector.Z).Unit * n29)
					local y = v25.Position.Y
					local vector2 = Vector3.new(n33.X, y, n33.Z)
					v25.CFrame = v25.CFrame:Lerp(CFrame.new(vector2, Vector3.new(v26.Position.X, y, v26.Position.Z)), 0.6)

					if toggles.BlackflashCameraLock and toggles.BlackflashCameraLock.Value then
						if str5 == "Camera" then
							Camera.CFrame = Camera.CFrame:Lerp(CFrame.new(v25.Position + v25.CFrame.LookVector * -7 + Vector3.new(0, 3.5, 0), v26.Position + Vector3.new(0, 1.5, 0)), 0.5)
						elseif str5 == "Character" then
							v25.CFrame = CFrame.new(vector2, Vector3.new(v26.Position.X, y, v26.Position.Z))
						end
					end

					if n32 >= 1 then
						connection3:Disconnect()

						pcall(function()
							humanoid2.AutoRotate = autoRotate
							v25.Anchored = anchored
							LocalPlayer.DevEnableMouseLock = devEnableMouseLock
						end)

						Camera.CameraType = cameraType
						tbl17.GlideInProgress = false
					end
				end)

				table.insert(tbl9, connection3)
			end

			local function fn49()
				if tbl17.TriggerCooldown then
					return
				end
				tbl17.TriggerCooldown = true

				task.delay(0.5, function()
					tbl17.TriggerCooldown = false
				end)

				local v23 = fn43()

				if toggles.BlackflashDashBehind and toggles.BlackflashDashBehind.Value and v23 then
					task.spawn(function()
						fn48(v23)
					end)
				end

				task.spawn(function()
					local n27 = options.BlackflashAutoFireDelay and options.BlackflashAutoFireDelay.Value or 0.23
					local n28 = 0

					while n28 < n27 do
						n28 += RunService.RenderStepped:Wait()
					end

					if toggles.BlackflashEnabled and toggles.BlackflashEnabled.Value then
						fn47()
					end
				end)
			end

			fn40 = function(arg)
				local humanoid2 = arg:WaitForChild("Humanoid", 5)
				humanoid2 = humanoid2 and humanoid2:WaitForChild("Animator", 5)
				if not humanoid2 then
					return
				end
				local n27 = 0.3
				local n28 = 0

				local connection3 = humanoid2.AnimationPlayed:Connect(function(arg2)
					if not (toggles.BlackflashEnabled and toggles.BlackflashEnabled.Value) then
						return
					end
					local str5 = tostring(arg2.Animation.AnimationId or "")
					local v23 = string.lower(arg2.Name or "")

					if string.find(str5, "123171106092050") or string.find(str5, "72475960800126") or v23:find("divergent") or v23:find("straight") or v23:find("4c") then
						if toggles.BlackflashAutoFeint and toggles.BlackflashAutoFeint.Value then
							fn46()
						end
					end

					if string.find(str5, "100962226150441") or string.find(str5, "95852624447551") or string.find(str5, "74145636023952") or string.find(str5, "72475960800126") then
						local now2 = os.clock()

						if now2 - n28 > n27 then
							n28 = now2
							fn49()
						end
					end
				end)

				table.insert(tbl9, connection3)
			end

			local connection3 = UserInputService.InputBegan:Connect(function(input, gameProcessed)
				if gameProcessed then
					return
				end

				if options.BlackflashKeybind and input.KeyCode == options.BlackflashKeybind.Value then
					if toggles.BlackflashEnabled and toggles.BlackflashEnabled.Value then
						fn49()
					end
				end
			end)

			table.insert(tbl9, connection3)
		end

		local v21, fn41, fn42

		do
			local tbl17 = {
				Active = false,
				Connections = {},
				FakeTorso = nil,
				MeditationTrack = nil,
				OriginalCameraSubject = nil,
				Hologram = nil,
				HologramHumanoid = nil,
				IsJumping = false,
				HologramTracks = {},
			}

			v21 = tbl17

			local function fn43(arg)
				StarterGui:SetCore("SendNotification", { Title = "Invisibility", Text = arg, Duration = 3 })
			end

			local function fn44()
				local character = LocalPlayer.Character
				if not character then
					return nil, nil, nil, nil
				end
				local humanoidRootPart2 = character:FindFirstChild("HumanoidRootPart")
				local humanoid2 = character:FindFirstChildOfClass("Humanoid")
				return character, humanoidRootPart2, humanoid2, humanoid2 and humanoid2:FindFirstChildOfClass("Animator")
			end

			local function fn45()
				for k, connection3 in pairs(tbl17.Connections) do
					if connection3 and typeof(connection3) == "RBXScriptConnection" then
						connection3:Disconnect()
					end

					tbl17.Connections[k] = nil
				end

				for k, hologramTrack in pairs(tbl17.HologramTracks) do
					pcall(function()
						hologramTrack:Stop()
					end)

					tbl17.HologramTracks[k] = nil
				end
			end

			local function fn46(arg)
				local clone = arg:Clone()
				clone.Name = "Hologram"
				clone.Parent = workspace

				for _, descendant in ipairs(clone:GetDescendants()) do
					if descendant:IsA("Script") or descendant:IsA("LocalScript") then
						descendant:Destroy()
					end
				end

				local humanoid2 = clone:FindFirstChildOfClass("Humanoid")
				if not humanoid2 then
					clone:Destroy()
					return nil
				end
				humanoid2.AutoRotate = false
				humanoid2.WalkSpeed = 16
				humanoid2.JumpPower = 50
				humanoid2.PlatformStand = false
				humanoid2:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
				humanoid2:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)

				for _, descendant in ipairs(clone:GetDescendants()) do
					if descendant:IsA("BasePart") then
						descendant.Anchored = false
						descendant.CanCollide = false
						descendant.Transparency = 0.3
						descendant.Material = Enum.Material.ForceField
					end
				end

				local highlight = Instance.new("Highlight")
				highlight.Name = "HoloOutline"
				highlight.FillTransparency = 1
				highlight.OutlineTransparency = 0
				highlight.OutlineColor = Color3.fromRGB(0, 150, 255)
				highlight.Adornee = clone
				highlight.Parent = clone
				local humanoidRootPart2 = clone:FindFirstChild("HumanoidRootPart")

				if humanoidRootPart2 then
					local particleEmitter = Instance.new("ParticleEmitter")
					particleEmitter.Name = "HoloParticles"
					particleEmitter.Texture = "rbxassetid://16893897676"
					particleEmitter.Rate = 15
					particleEmitter.Lifetime = NumberRange.new(1, 2)
					particleEmitter.Speed = NumberRange.new(0.5, 1)
					particleEmitter.Size = NumberSequence.new(0.1, 0.2)
					particleEmitter.Transparency = NumberSequence.new(0.6, 1)
					local color = Color3.fromRGB
					particleEmitter.Color = ColorSequence.new(Color3.fromRGB(0, 255, 255), color(0, 100, 255))
					particleEmitter.LockedToPart = false
					particleEmitter.SpreadAngle = Vector2.new(360, 360)
					particleEmitter:Emit(5)
					particleEmitter.Parent = humanoidRootPart2
				end

				local humanoidRootPart3 = clone:FindFirstChild("HumanoidRootPart")

				if humanoidRootPart3 then
					clone.PrimaryPart = humanoidRootPart3
				end

				return clone
			end

			fn41 = function()
				if tbl17.Active then
					return
				end
				local v22, v23, v24, v25 = fn44()
				if not v22 or not v23 or not v24 or not v25 then
					fn43("No valid character found")
					return
				end
				tbl17.Active = true
				tbl17.OriginalCameraSubject = Camera.CameraSubject
				v24.AutoRotate = false
				v23.Anchored = true
				tbl17.Connections.Noclip = RunService.Stepped:Connect(function(...) end)
				local part2 = Instance.new("Part")
				part2.Name = "InvisibleFakeTorso"
				part2.Size = Vector3.new(2, 2, 1)
				part2.Transparency = 1
				part2.CanCollide = false
				part2.Anchored = true
				part2.Parent = workspace
				tbl17.FakeTorso = part2
				tbl17.Hologram = fn46(v22)

				if tbl17.Hologram then
					tbl17.HologramHumanoid = tbl17.Hologram:FindFirstChildOfClass("Humanoid")

					if tbl17.HologramHumanoid then
						tbl17.Connections.HologramLanded = tbl17.HologramHumanoid.StateChanged:Connect(function(old, new)
							if new == Enum.HumanoidStateType.Landed then
								tbl17.IsJumping = false
							end
						end)
					end
				end

				local character = ReplicatedStorage:WaitForChild("Modules", 5) and ReplicatedStorage.Modules:WaitForChild("MVP", 5) and ReplicatedStorage.Modules.MVP:WaitForChild("Meditation", 5) and ReplicatedStorage.Modules.MVP.Meditation:FindFirstChild("Character")

				if character then
					local v26 = v25:LoadAnimation(character)
					v26.Priority = Enum.AnimationPriority.Action4
					v26:Play()
					task.wait(0.1)
					v26.TimePosition = 0.1
					v26:AdjustSpeed(0)
					tbl17.MeditationTrack = v26
				else
					fn43("Meditation animation not found – visual hide may not work")
				end

				Camera.CameraType = Enum.CameraType.Custom
				Camera.CameraSubject = part2
				RunService:BindToRenderStep("InvisCameraSync", Enum.RenderPriority.Camera.Value - 1, function(...) end)

				tbl17.Connections.JumpInput = UserInputService.InputBegan:Connect(function(input, gameProcessed)
					if gameProcessed then
						return
					end

					if input.KeyCode == Enum.KeyCode.Space and tbl17.Active and tbl17.HologramHumanoid then
						tbl17.IsJumping = true
						tbl17.HologramHumanoid:ChangeState(Enum.HumanoidStateType.Jumping)
					end
				end)

				fn43("Invisibility Enabled")
			end

			fn42 = function()
				if not tbl17.Active then
					return
				end
				tbl17.Active = false
				fn45()

				pcall(function()
					RunService:UnbindFromRenderStep("InvisCameraSync")
				end)

				local v22, v23, v24 = fn44()

				if v22 then
					for _, descendant in ipairs(v22:GetDescendants()) do
						if descendant:IsA("BasePart") then
							descendant.CanCollide = true
						end
					end
				end

				if v23 then
					v23.Anchored = false
				end

				if v24 then
					v24.AutoRotate = true
					Camera.CameraSubject = v24
				elseif tbl17.OriginalCameraSubject then
					Camera.CameraSubject = tbl17.OriginalCameraSubject
				end

				if tbl17.FakeTorso then
					tbl17.FakeTorso:Destroy()
					tbl17.FakeTorso = nil
				end

				if tbl17.Hologram then
					tbl17.Hologram:Destroy()
					tbl17.Hologram = nil
					tbl17.HologramHumanoid = nil
				end

				if tbl17.MeditationTrack then
					pcall(function()
						tbl17.MeditationTrack:Stop(0)
					end)

					pcall(function()
						tbl17.MeditationTrack:Destroy()
					end)

					tbl17.MeditationTrack = nil
				end

				tbl17.IsJumping = false
				tbl17.HologramTracks = {}
				fn43("Invisibility Disabled")
			end

			local function fn47()
				if tbl17.Active then
					fn42()
				else
					fn41()
				end
			end

			_G.RefreshInvisibility = function()
				if tbl17.Active then
					fn42()
					task.wait(0.1)
					fn41()
				end
			end

			LocalPlayer.CharacterAdded:Connect(function()
				if tbl17.Active then
					task.wait(1)
					fn42()

					if toggles.Invisibility then
						toggles.Invisibility:SetValue(false)
					end
				end
			end)

			UserInputService.InputBegan:Connect(function(input, gameProcessed)
				if gameProcessed then
					return
				end

				if input.KeyCode == Enum.KeyCode.P then
					if toggles.Invisibility then
						toggles.Invisibility:SetValue(not toggles.Invisibility.Value)
					else
						fn47()
					end
				end
			end)
		end

		local createSideDashMobileButton, removeSideDashMobileButton, fn43

		do
			local sideDashCFG = {
				Range = 60,
				DistanceBehind = 6.5,
				CurveOffset = 13,
				Duration = 0.28,
				Side = "Auto",
				Enabled = true,
			}

			local function fn44(...) end
			local flag13 = false
			local n27 = 0
			local v22 = nil
			local function fn45(o,l,I,D)return o:Lerp(l,D):Lerp(l:Lerp(I,D),D);end

			local function fn46(arg)
				if not arg then
					if toggles and toggles.SideDashEnabled and not toggles.SideDashEnabled.Value then
						return
					end
				end

				if flag13 then
					return
				end
				local n28 = options and options.SideDashCooldown and options.SideDashCooldown.Value or 0.55
				if not InfiniteDashActive and os.clock() - n27 < n28 then
					return
				end
				local character = LocalPlayer.Character
				if not character or not character:FindFirstChild("HumanoidRootPart") then
					return
				end
				local humanoid2 = character:FindFirstChildOfClass("Humanoid")
				if not humanoid2 or humanoid2.Health <= 0 or character:GetAttribute("Dead") then
					return
				end
				local attribute2 = character:GetAttribute("Ragdoll")
				if not NoRagdollActive and not NoStunActive and attribute2 and attribute2 > 0 then
					return
				end
				local v23 = fn44()
				if not v23 then
					return
				end
				local humanoidRootPart2 = character.HumanoidRootPart
				local humanoidRootPart3 = v23:FindFirstChild("HumanoidRootPart")
				if not humanoidRootPart3 then
					return
				end
				local distanceBehind = options and options.SideDashDistance and options.SideDashDistance.Value or sideDashCFG.DistanceBehind
				local curveOffset = options and options.SideDashArcWidth and options.SideDashArcWidth.Value or options and options.SideDashCurveOffset and options.SideDashCurveOffset.Value or sideDashCFG.CurveOffset
				local duration = options and options.SideDashDuration and options.SideDashDuration.Value or sideDashCFG.Duration
				local flag14 = toggles and toggles.SideDashCamLock and toggles.SideDashCamLock.Value ~= false
				local flag15 = toggles and toggles.SideDashCharLock and toggles.SideDashCharLock.Value ~= false
				local side = options and options.SideDashSide and options.SideDashSide.Value or sideDashCFG.Side or "Auto"
				flag13 = true
				v22 = v23
				n27 = os.clock()
				local position = humanoidRootPart2.Position
				local n29 = humanoidRootPart3.Position - humanoidRootPart3.CFrame.LookVector * distanceBehind
				local rightVector = humanoidRootPart3.CFrame.RightVector
				local str5 = side

				if str5 == "Auto" then
					if (humanoidRootPart2.Position - (position + n29) / 2 - rightVector * curveOffset).Magnitude < (humanoidRootPart2.Position - (position + n29) / 2 + rightVector * curveOffset).Magnitude then
						str5 = "Left"
					else
						str5 = "Right"
					end
				elseif str5 == "Random" then
					str5 = math.random() > 0.5 and "Left" or "Right"
				end

				pcall(function()
					local ReplicatedStorage_ = game:GetService("ReplicatedStorage")
					local knit = ReplicatedStorage_:FindFirstChild("Knit")

					if knit then
						knit = knit:FindFirstChild("Knit") or knit
					end

					knit = knit and require(knit)

					if knit then
						local MovementService = knit.GetService and knit.GetService("MovementService")

						if MovementService and MovementService.Dash then
							MovementService.Dash:Fire(str5)
						elseif MovementService and MovementService.DashRequest then
							MovementService.DashRequest:Fire(str5)
						end

						local CustomService = knit.GetService and knit.GetService("CustomService")

						if CustomService and CustomService.Chase then
							CustomService.Chase:Fire(str5)
						end

						local FXController = knit.GetController and knit.GetController("FXController")

						if FXController and FXController.PlaySound and ReplicatedStorage_:FindFirstChild("Sounds") and ReplicatedStorage_.Sounds:FindFirstChild("Misc") and ReplicatedStorage_.Sounds.Misc:FindFirstChild("Dash") then
							FXController:PlaySound(ReplicatedStorage_.Sounds.Misc.Dash, humanoidRootPart2, game.SoundService.Effect)
						end
					else
						local dash = ReplicatedStorage_.Knit.Knit.Services.MovementService.RE:FindFirstChild("Dash")

						if dash then
							dash:FireServer(str5)
						end
					end
				end)

				pcall(function()
					local animations = game:GetService("ReplicatedStorage"):FindFirstChild("Animations")

					if animations then
						local movement = animations:FindFirstChild("Misc") and animations.Misc:FindFirstChild("Movement")
						local v24 = movement and movement:FindFirstChild("Dash" .. str5)

						if v24 and humanoid2 then
							local v25 = humanoid2:LoadAnimation(v24)
							v25.Priority = Enum.AnimationPriority.Movement
							v25:Play()
						end
					end
				end)

				local n30 = 0
				local connection3 = nil

				connection3 = RunService.Heartbeat:Connect(function(deltaTime)
					if not humanoidRootPart3.Parent or not humanoidRootPart2.Parent then
						if connection3 then
							connection3:Disconnect()
						end

						flag13 = false
						v22 = nil
						return
					end

					n30 += deltaTime
					local n31 = math.clamp(n30 / duration, 0, 1)
					local value = TweenService:GetValue(n31, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out)
					local n32 = humanoidRootPart3.Position - humanoidRootPart3.CFrame.LookVector * distanceBehind
					local n33

					if str5 == "Left" then
						n33 = (position + n32) / 2 - humanoidRootPart3.CFrame.RightVector * curveOffset
					else
						n33 = (position + n32) / 2 + humanoidRootPart3.CFrame.RightVector * curveOffset
					end

					local v24 = fn45(position, n33, n32, value)

					if flag15 then
						humanoidRootPart2.CFrame = CFrame.new(v24, Vector3.new(humanoidRootPart3.Position.X, v24.Y, humanoidRootPart3.Position.Z))
					else
						humanoidRootPart2.CFrame = CFrame.new(v24)
					end

					if flag14 then
						pcall(function()
							local currentCamera = workspace.CurrentCamera
							currentCamera.CFrame = CFrame.new(currentCamera.CFrame.Position, humanoidRootPart3.Position)
						end)
					end

					if n31 >= 1 then
						if connection3 then
							connection3:Disconnect()
						end

						humanoidRootPart2.AssemblyLinearVelocity = Vector3.zero
						flag13 = false
						v22 = nil

						pcall(function()
							if fn18 then
								fn18(v23)
							end
						end)
					end
				end)

				task.delay(duration + 0.3, function()
					if connection3 then
						pcall(function()
							connection3:Disconnect()
						end)
					end

					flag13 = false
					v22 = nil
				end)
			end

			local v23 = nil
			local v24 = nil
			local v25 = nil

			local function fn47()
				if v23 then
					pcall(function()
						v23:Destroy()
					end)

					v23 = nil
					v24 = nil
					v25 = nil
				end

				pcall(function()
					local playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")

					if playerGui then
						local sideDashAssist = playerGui:FindFirstChild("SideDashAssist")

						if sideDashAssist then
							sideDashAssist:Destroy()
						end

						local sideDashAssistGui = playerGui:FindFirstChild("SideDashAssistGui")

						if sideDashAssistGui then
							sideDashAssistGui:Destroy()
						end

						local sideDashMobileGui = playerGui:FindFirstChild("SideDashMobileGui")

						if sideDashMobileGui then
							sideDashMobileGui:Destroy()
						end
					end
				end)
			end

			fn47()

			createSideDashMobileButton = function()
				local playerGui = nil

				pcall(function()
					if LocalPlayer then
						playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui") or LocalPlayer:WaitForChild("PlayerGui", 3)
					end
				end)

				local flag14 = not playerGui

				if flag14 then
					pcall(function()
						playerGui = typeof(gethui) == "function" and gethui()
					end)
				end

				if flag14 then
					pcall(function()
						playerGui = game:GetService("CoreGui")
					end)
				end

				if flag14 then
					return
				end

				if v23 and v23.Parent then
					v23.Enabled = true
					return
				end
				local screenGui2 = Instance.new("ScreenGui")
				screenGui2.Name = "SideDashMobileGui"
				screenGui2.ResetOnSpawn = false
				screenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				screenGui2.DisplayOrder = 99999
				screenGui2.IgnoreGuiInset = true
				screenGui2.Enabled = true
				local frame2 = Instance.new("Frame")
				frame2.Name = "Container"
				frame2.Size = UDim2.new(0, 52, 0, 52)
				frame2.Position = UDim2.new(0.85, -60, 0.6, -26)
				frame2.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
				frame2.BackgroundTransparency = 0.25
				frame2.BorderSizePixel = 0
				frame2.Active = true
				frame2.Draggable = true
				frame2.Parent = screenGui2
				local uiCorner = Instance.new("UICorner")
				uiCorner.CornerRadius = UDim.new(0, 14)
				uiCorner.Parent = frame2
				local uiStroke = Instance.new("UIStroke")
				uiStroke.Color = Color3.fromRGB(65, 65, 85)
				uiStroke.Thickness = 1.2
				uiStroke.Parent = frame2
				local imageLabel = Instance.new("ImageLabel")
				imageLabel.Name = "DashIcon"
				imageLabel.Size = UDim2.new(0, 26, 0, 26)
				imageLabel.Position = UDim2.new(0.5, -13, 0.5, -13)
				imageLabel.BackgroundTransparency = 1
				imageLabel.Image = "rbxassetid://10709791437"
				imageLabel.ImageColor3 = Color3.fromRGB(240, 240, 255)
				imageLabel.Parent = frame2
				local textButton = Instance.new("TextButton")
				textButton.Name = "DashButton"
				textButton.Size = UDim2.new(1, 0, 1, 0)
				textButton.Position = UDim2.new(0, 0, 0, 0)
				textButton.BackgroundTransparency = 1
				textButton.Text = ""
				textButton.Parent = frame2
				local flag15 = false
				local position = nil
				local position2 = nil

				frame2.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
						flag15 = true
						position = input.Position
						position2 = frame2.Position

						input.Changed:Connect(function()
							if input.UserInputState == Enum.UserInputState.End then
								flag15 = false
							end
						end)
					end
				end)

				frame2.InputChanged:Connect(function(input)
					if flag15 and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
						local n28 = input.Position - position
						frame2.Position = UDim2.new(position2.X.Scale, position2.X.Offset + n28.X, position2.Y.Scale, position2.Y.Offset + n28.Y)
					end
				end)

				UserInputService.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
						flag15 = false
					end
				end)

				textButton.MouseButton1Down:Connect(function()
					frame2.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
				end)

				textButton.MouseButton1Up:Connect(function()
					frame2.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
				end)

				textButton.MouseButton1Click:Connect(function()
					fn46(true)
				end)

				screenGui2.Parent = playerGui
				v23 = screenGui2
				v24 = textButton
				v25 = nil

				if toggles and toggles.SideDashMobileButton then
					screenGui2.Enabled = toggles.SideDashMobileButton.Value
				end
			end

			removeSideDashMobileButton = function()
				if v23 then
					v23.Enabled = false
				end
			end

			_G.createSideDashMobileButton = createSideDashMobileButton
			_G.removeSideDashMobileButton = removeSideDashMobileButton

			task.spawn(function()
				while flag11 do
					task.wait(0.1)

					if v23 and v23.Enabled and v25 then
						local v26, v27 = fn44()

						if v26 then
							v25.Text = v26.Name .. " (" .. math.floor(v27) .. "m)"
						else
							v25.Text = "Target: None"
						end
					end
				end
			end)

			fn43 = function(arg)
				fn46(arg)
			end

			local function fn48()
				flag13 = false
				n27 = 0
				v22 = nil
			end

			_G.executeSideDash = function()
				fn46(true)
			end

			_G.sideDashCFG = sideDashCFG
			createSideDashMobileButton()

			if toggles and toggles.SideDashMobileButton then
				if v23 then
					v23.Enabled = toggles.SideDashMobileButton.Value
				end

				toggles.SideDashMobileButton:OnChanged(function(enabled)
					if v23 then
						v23.Enabled = enabled
					end
				end)
			elseif v23 then
				v23.Enabled = false
			end

			local connection3 = UserInputService.InputBegan:Connect(function(input, gameProcessed)
				if not input then
					return
				end

				if gameProcessed then
					return
				end

				if not toggles.SideDashEnabled or not toggles.SideDashEnabled.Value then
					return
				end
				local sideDashKeybind = options.SideDashKeybind
				if not sideDashKeybind then
					return
				end
				local value = sideDashKeybind.Value

				if value and input.KeyCode == value then
					fn43()
				end
			end)

			table.insert(tbl9, connection3)
			_G.AC_BYPASSED = false

			table.insert(tbl9, LocalPlayer.CharacterAdded:Connect(function(character)
				if fn48 then
					fn48()
				end

				_G.AC_BYPASSED = false

				if _G.updateBypassStatusText then
					_G.updateBypassStatusText()
				end

				if toggles and toggles.GojoKillAllEnabled and toggles.GojoKillAllEnabled.Value then
					toggles.GojoKillAllEnabled:SetValue(false)

					if lib then
						lib:Notify({ Title = "AC Check", Description = "Bypass Reset on Respawn", Time = 3 })
					end
				end

				local humanoid2 = character:WaitForChild("Humanoid", 10)

				if humanoid2 then
					humanoid2.Died:Connect(function()
						_G.AC_BYPASSED = false

						if _G.updateBypassStatusText then
							_G.updateBypassStatusText()
						end

						if toggles and toggles.GojoKillAllEnabled and toggles.GojoKillAllEnabled.Value then
							toggles.GojoKillAllEnabled:SetValue(false)
						end
					end)
				end
			end))
		end

		local function fn44()
			local clamp = math.clamp
			local max = math.max
			local floor = math.floor
			local huge = math.huge
			local insert = table.insert
			local clear = table.clear
			local sort = table.sort
			local v22 = pairs
			local v23 = ipairs
			local v24 = pcall
			local v25 = tonumber
			local lower = string.lower
			local find = string.find
			local spawn_ = task.spawn
			local wait_ = task.wait
			local v26 = setmetatable
			flag11 = true
			tbl11 = { _blockService = nil, _resolved = false, _lastResolveAttempt = 0 }

			tbl11.Resolve = function(arg)
				if arg._resolved and arg._blockService then
					return true
				end
				local now2 = os.clock()
				if now2 - arg._lastResolveAttempt < 0.5 then
					return false
				end
				arg._lastResolveAttempt = now2

				local v27, v28 = v24(function()
					local knit = ReplicatedStorage:FindFirstChild("Knit")

					if knit then
						local module = require(knit:FindFirstChild("Knit") or knit)
						if module and module.GetService then
							return module.GetService("BlockService")
						end
					end
				end)

				if v27 and v28 then
					arg._blockService = v28
					arg._resolved = true
					return true
				end

				local v29, v30 = v24(function()
					return require(ReplicatedStorage:WaitForChild("Knit", 2):WaitForChild("Knit", 2)).GetService("BlockService")
				end)

				if v29 and v30 then
					arg._blockService = v30
					arg._resolved = true
					return true
				end

				return arg._resolved
			end

			tbl11.FireActivated = function(arg, arg2)
				if not arg._resolved then
					arg:Resolve()
				end

				if arg._blockService then
					v24(function()
						arg._blockService.Activated:Fire(arg2)
					end)
				end
			end

			tbl11.FireDeactivated = function(arg)
				if not arg._resolved then
					arg:Resolve()
				end

				if arg._blockService then
					v24(function()
						arg._blockService.Deactivated:Fire()
					end)
				end
			end

			local tbl17 = {
				_knit = nil,
				_toolController = nil,
				_customService = nil,
				_domainService = nil,
				Resolve = function(arg)
					if not arg._knit then
						v24(function()
							local knit = ReplicatedStorage:FindFirstChild("Knit")

							if knit then
								arg._knit = require(knit:FindFirstChild("Knit") or knit)
							end
						end)

						if not arg._knit then
							v24(function()
								arg._knit = require(ReplicatedStorage:WaitForChild("Knit", 1):WaitForChild("Knit", 1))
							end)
						end
					end

					if arg._knit then
						if not arg._toolController and arg._knit.GetController then
							v24(function()
								arg._toolController = arg._knit.GetController("ToolController")
							end)
						end

						if not arg._customService and arg._knit.GetService then
							v24(function()
								arg._customService = arg._knit.GetService("CustomService")
							end)
						end

						if not arg._domainService and arg._knit.GetService then
							v24(function()
								arg._domainService = arg._knit.GetService("DomainService")
							end)
						end
					end
				end,
			}

			task.spawn(function()
				tbl17:Resolve()
			end)

			fn18 = function(arg)
				local character = LocalPlayer.Character
				if not character then
					return
				end
				local humanoid2 = character:FindFirstChildOfClass("Humanoid")
				if not humanoid2 or humanoid2.Health <= 0 then
					return
				end
				local v27 = tbl17
				local knit

				if tbl17 then
					knit = tbl17._knit
				else
					knit = v27
				end

				local flag13 = not knit

				if flag13 then
					v24(function()
						knit = require(ReplicatedStorage.Knit.Knit)
					end)
				end

				if flag13 then
					v24(function()
						knit = require(ReplicatedStorage.Packages.Knit)
					end)
				end

				if flag13 then
					v24(function()
						knit = require(ReplicatedStorage:WaitForChild("Knit", 2):WaitForChild("Knit", 2))
					end)
				end

				if character:FindFirstChild("Info") and character.Info:FindFirstChild("DomainClash") then
					local v28 = tbl17
					local domainService

					if tbl17 then
						domainService = tbl17._domainService
					else
						domainService = v28
					end

					if not domainService and knit and knit.GetService then
						v24(function()
							domainService = knit.GetService("DomainService")
						end)
					end

					if domainService and domainService.Activated then
						v24(function()
							domainService.Activated:Fire()
						end)
					end

					return
				end

				if character:FindFirstChild("CustomM1") then
					local v28 = tbl17
					local customService

					if tbl17 then
						customService = tbl17._customService
					else
						customService = v28
					end

					if not customService and knit and knit.GetService then
						v24(function()
							customService = knit.GetService("CustomService")
						end)
					end

					if customService and customService.Melee then
						v24(function()
							local ControlModule = nil

							v24(function()
								ControlModule = require(LocalPlayer.PlayerScripts.PlayerModule.ControlModule)
							end)

							local moveVector = ControlModule and ControlModule:GetMoveVector() or Vector3.zero
							local flag14 = humanoid2.FloorMaterial == Enum.Material.Air
							local v29 = tbl17
							local toolController

							if tbl17 then
								toolController = tbl17._toolController
							else
								toolController = v29
							end

							if not toolController and knit and knit.GetController then
								v24(function()
									toolController = knit.GetController("ToolController")
								end)
							end

							customService.Melee:Fire({ flag14, toolController and toolController.GetTarget and toolController:GetTarget() or arg, moveVector, humanoid2.Jump == true })
						end)
					end

					return
				end

				local toolController = tbl17 and tbl17._toolController

				if not toolController and knit and knit.GetController then
					v24(function()
						toolController = knit.GetController("ToolController")
					end)
				end

				local flag14 = humanoid2.Jump == true
				local flag15 = humanoid2.FloorMaterial == Enum.Material.Air
				local str5 = flag15 and "Down" or flag14 and "Up" or nil

				if character:GetAttribute("Moveset") == "Hanami" then
					str5 = flag14 and "Up" or flag15 and "Down" or nil
				end

				if toolController and toolController.UseSetService then
					local target = nil

					v24(function()
						target = toolController:GetTarget()
					end)

					target = target or arg

					v24(function()
						toolController:UseSetService("Activated", str5, target)
					end)

					v24(function()
						toolController:UseSetService("Activated", str5)
					end)
				else
					v24(function()
						local tool = character:FindFirstChildOfClass("Tool") or LocalPlayer.Backpack and LocalPlayer.Backpack:FindFirstChildOfClass("Tool")

						if tool then
							tool:Activate()
						end
					end)
				end
			end

			tbl12 = {
				_activeReasons = {},
				_nextId = 0,
				_isBlocking = false,
				_lastBlockTime = 0,
				_releaseTime = 0,
				_totalBlocksActivated = 0,
				_totalBlocksReleased = 0,
				_consecutiveBlocks = 0,
				_lastReason = "",
				_blockStartTime = 0,
				_minHoldThread = nil,
				_shouldPunish = false,
				_lastMeleeAttacker = nil,
				_lastMeleeBlockTime = 0,
			}

			tbl12.Request = function(...) end
			tbl12._activateBlock = function(...) end
			tbl12._deactivateBlock = function(...) end

			tbl12.Release = function(arg, arg2)
				if arg2 and arg._activeReasons[arg2] then
					arg._activeReasons[arg2] = nil
				end

				arg:_evaluateState()
			end

			tbl12.ReleaseAll = function(arg)
				clear(arg._activeReasons)

				if arg._isBlocking then
					arg:_deactivateBlock()
				end

				arg._consecutiveBlocks = 0
			end

			tbl12._evaluateState = function(...) end
			tbl12.IsBlocking = function(o)return o._isBlocking;end

			tbl12.GetActiveCount = function(arg)
				local n27 = 0

				for k in v22(arg._activeReasons) do
					n27 += 1
				end

				return n27
			end

			tbl12.GetStats = function(arg)
				local tbl18 = {
					totalActivated = arg._totalBlocksActivated,
					totalReleased = arg._totalBlocksReleased,
					consecutiveBlocks = arg._consecutiveBlocks,
					lastReason = arg._lastReason,
					isBlocking = arg._isBlocking,
					activeReasons = arg:GetActiveCount(),
				}

				local isBlocking = arg._isBlocking
				local blockDuration

				if isBlocking then
					local blockStartTime = arg._blockStartTime
					blockDuration = os.clock() - blockStartTime
				else
					blockDuration = isBlocking
				end

				tbl18.blockDuration = blockDuration or 0
				return tbl18
			end

			tbl12.GetReasonsList = function(arg)
				local tbl18 = {}

				for k, activeReason in v22(arg._activeReasons) do
					local createdAt = activeReason.createdAt
					insert(tbl18, { id = k, reason = activeReason.reason, age = os.clock() - createdAt })
				end

				return tbl18
			end

			local tbl18 = {
				["132748613906344"] = {
					name = "Gojo.HollowPurple",
					range = 80,
					duration = 1.8,
					isProjectile = true,
					priority = 10,
					charClass = "Gojo",
					threatLevel = 5,
				},
				["137654778575373"] = {
					name = "Gojo.ReversalRed",
					range = 60,
					duration = 0.8,
					isProjectile = true,
					priority = 8,
					charClass = "Gojo",
					threatLevel = 4,
				},
				["137865634124104"] = {
					name = "Gojo.LapseBlue",
					range = 50,
					duration = 0.7,
					isProjectile = true,
					priority = 8,
					charClass = "Gojo",
					threatLevel = 4,
				},
				["101162958113766"] = {
					name = "Gojo.LapseBlueMaximum",
					range = 60,
					duration = 1,
					isProjectile = true,
					priority = 9,
					charClass = "Gojo",
					threatLevel = 4,
				},
				["84716311536982"] = {
					name = "Gojo.UltimatePurple",
					range = 100,
					duration = 2,
					isProjectile = true,
					priority = 10,
					charClass = "Gojo",
					threatLevel = 5,
				},
				["132725601768618"] = {
					name = "Gojo.InfiniteVoid",
					range = 100,
					duration = 2,
					isProjectile = true,
					priority = 10,
					charClass = "Gojo",
					threatLevel = 5,
				},
				["95421145178968"] = {
					name = "Gojo.RapidPunches",
					range = 20,
					duration = 1.5,
					isProjectile = false,
					priority = 7,
					charClass = "Gojo",
					threatLevel = 3,
				},
				["127851700400958"] = {
					name = "Gojo.Melee1",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Gojo",
					threatLevel = 1,
				},
				["72548435296350"] = {
					name = "Gojo.Melee2",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Gojo",
					threatLevel = 1,
				},
				["84547415708554"] = {
					name = "Gojo.Melee3",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Gojo",
					threatLevel = 1,
				},
				["124937162378188"] = {
					name = "Gojo.ReversalRedMaximum",
					range = 65,
					duration = 1.2,
					isProjectile = true,
					priority = 9,
					charClass = "Gojo",
					threatLevel = 4,
				},
				["104749346956269"] = {
					name = "Gojo.TwofoldKick",
					range = 20,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Gojo",
					threatLevel = 2,
				},
				["132673356426065"] = {
					name = "Gojo.TwofoldHit",
					range = 20,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Gojo",
					threatLevel = 2,
				},
				["116811846715462"] = {
					name = "Gojo.ShortVoid",
					range = 50,
					duration = 1,
					isProjectile = false,
					priority = 8,
					charClass = "Gojo",
					threatLevel = 4,
				},
				["77200218033775"] = {
					name = "Itadori.CursedStrike",
					range = 18,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Itadori",
					threatLevel = 2,
				},
				["124901309160375"] = {
					name = "Itadori.CrushingBlow",
					range = 18,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Itadori",
					threatLevel = 2,
				},
				["82987093810211"] = {
					name = "Itadori.ManjiKick",
					range = 16,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Itadori",
					threatLevel = 2,
				},
				["121923107958102"] = {
					name = "Itadori.SlaughterDemon",
					range = 18,
					duration = 0.5,
					isProjectile = false,
					priority = 6,
					charClass = "Itadori",
					threatLevel = 2,
				},
				["111593784328268"] = {
					name = "Sukuna.Cleave",
					range = 20,
					duration = 0.6,
					isProjectile = false,
					priority = 7,
					charClass = "Sukuna",
					threatLevel = 3,
				},
				["131506102901134"] = {
					name = "Sukuna.Dismantle",
					range = 45,
					duration = 0.6,
					isProjectile = true,
					priority = 8,
					charClass = "Sukuna",
					threatLevel = 4,
				},
				["137611726964398"] = {
					name = "Sukuna.FlameArrow",
					range = 80,
					duration = 1.5,
					isProjectile = true,
					priority = 9,
					charClass = "Sukuna",
					threatLevel = 5,
				},
				["121984128639453"] = {
					name = "Sukuna.MalevolentShrine",
					range = 100,
					duration = 2,
					isProjectile = false,
					priority = 10,
					charClass = "Sukuna",
					threatLevel = 5,
				},
				["107554693613496"] = {
					name = "Itadori.Rush",
					range = 22,
					duration = 0.8,
					isProjectile = false,
					priority = 6,
					charClass = "Itadori",
					threatLevel = 3,
				},
				["110146909061402"] = {
					name = "Itadori.Melee1",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Itadori",
					threatLevel = 1,
				},
				["123414935051274"] = {
					name = "Itadori.Melee2",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Itadori",
					threatLevel = 1,
				},
				["108636011034323"] = {
					name = "Itadori.Melee3",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Itadori",
					threatLevel = 1,
				},
				["105376952884290"] = {
					name = "Itadori.Melee4",
					range = 15,
					duration = 0.4,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Itadori",
					threatLevel = 1,
				},
				["95295463826732"] = {
					name = "Heian.Melee1",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Heian",
					threatLevel = 1,
				},
				["105077924973072"] = {
					name = "Heian.Melee2",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Heian",
					threatLevel = 1,
				},
				["124862357369335"] = {
					name = "Heian.Melee3",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Heian",
					threatLevel = 1,
				},
				["81630213087988"] = {
					name = "Heian.Melee4",
					range = 15,
					duration = 0.4,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Heian",
					threatLevel = 1,
				},
				["100962226150441"] = {
					name = "Itadori.DivergentFist1",
					range = 16,
					duration = 0.45,
					isProjectile = false,
					priority = 5,
					charClass = "Itadori",
					threatLevel = 2,
				},
				["95852624447551"] = {
					name = "Itadori.DivergentFist2",
					range = 16,
					duration = 0.45,
					isProjectile = false,
					priority = 5,
					charClass = "Itadori",
					threatLevel = 2,
				},
				["74145636023952"] = {
					name = "Itadori.DivergentFist3",
					range = 16,
					duration = 0.45,
					isProjectile = false,
					priority = 5,
					charClass = "Itadori",
					threatLevel = 2,
				},
				["123171106092050"] = {
					name = "Itadori.DivergentFist4",
					range = 16,
					duration = 0.45,
					isProjectile = false,
					priority = 5,
					charClass = "Itadori",
					threatLevel = 2,
				},
				["81633998750531"] = {
					name = "Itadori.UltimateEnchain",
					range = 18,
					duration = 0.5,
					isProjectile = false,
					priority = 7,
					charClass = "Itadori",
					threatLevel = 3,
				},
				["130206074036010"] = {
					name = "Itadori.Instincts",
					range = 20,
					duration = 0.5,
					isProjectile = false,
					priority = 6,
					charClass = "Itadori",
					threatLevel = 2,
				},
				["73243807139765"] = {
					name = "Ryu.GraniteBlast",
					range = 120,
					duration = 1.5,
					isProjectile = true,
					priority = 10,
					charClass = "Ryu",
					threatLevel = 5,
				},
				["70394890117813"] = {
					name = "Ryu.Appetizer",
					range = 20,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Ryu",
					threatLevel = 2,
				},
				["138826705245289"] = {
					name = "Ryu.SecondHelping",
					range = 25,
					duration = 0.7,
					isProjectile = false,
					priority = 6,
					charClass = "Ryu",
					threatLevel = 3,
				},
				["131917532383382"] = {
					name = "Ryu.ThisDessert",
					range = 25,
					duration = 0.7,
					isProjectile = false,
					priority = 6,
					charClass = "Ryu",
					threatLevel = 3,
				},
				["86568794583359"] = {
					name = "Ryu.WhatAreYouAfter",
					range = 20,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Ryu",
					threatLevel = 2,
				},
				["86463226245064"] = {
					name = "Ryu.WerentInvited",
					range = 20,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Ryu",
					threatLevel = 2,
				},
				["116910683335467"] = {
					name = "Ryu.Melee2",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Ryu",
					threatLevel = 1,
				},
				["121322029260156"] = {
					name = "Ryu.Melee3",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Ryu",
					threatLevel = 1,
				},
				["92698956945928"] = {
					name = "Ryu.Melee3_Alt",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Ryu",
					threatLevel = 1,
				},
				["113479860283691"] = {
					name = "Ryu.UltimateBlast",
					range = 100,
					duration = 2,
					isProjectile = true,
					priority = 10,
					charClass = "Ryu",
					threatLevel = 5,
				},
				["127171275866632"] = {
					name = "Choso.PiercingBlood",
					range = 100,
					duration = 1,
					isProjectile = true,
					priority = 9,
					charClass = "Choso",
					threatLevel = 5,
				},
				["85569553424083"] = {
					name = "Choso.Supernova",
					range = 30,
					duration = 0.8,
					isProjectile = true,
					priority = 7,
					charClass = "Choso",
					threatLevel = 3,
				},
				["100446064103831"] = {
					name = "Choso.BloodEdge",
					range = 20,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Choso",
					threatLevel = 2,
				},
				["132928484483887"] = {
					name = "Choso.Hairpin",
					range = 40,
					duration = 0.6,
					isProjectile = true,
					priority = 7,
					charClass = "Choso",
					threatLevel = 3,
				},
				["114321791577837"] = {
					name = "Choso.SlicingExorcism",
					range = 25,
					duration = 0.6,
					isProjectile = false,
					priority = 6,
					charClass = "Choso",
					threatLevel = 3,
				},
				["117371289990421"] = {
					name = "Choso.BloodRain",
					range = 35,
					duration = 0.8,
					isProjectile = false,
					priority = 7,
					charClass = "Choso",
					threatLevel = 3,
				},
				["95097480425566"] = {
					name = "Choso.WingKing",
					range = 50,
					duration = 1.2,
					isProjectile = true,
					priority = 8,
					charClass = "Choso",
					threatLevel = 4,
				},
				["119042572747325"] = {
					name = "Choso.Melee3",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Choso",
					threatLevel = 1,
				},
				["105287938257399"] = {
					name = "Choso.Melee4",
					range = 15,
					duration = 0.4,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Choso",
					threatLevel = 1,
				},
				["72063002791216"] = {
					name = "Hakari.ShutterDoors",
					range = 25,
					duration = 0.6,
					isProjectile = true,
					priority = 6,
					charClass = "Hakari",
					threatLevel = 3,
				},
				["72467492674240"] = {
					name = "Hakari.RoughEnergy",
					range = 20,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Hakari",
					threatLevel = 2,
				},
				["82541714192027"] = {
					name = "Hakari.ReserveBalls",
					range = 40,
					duration = 0.6,
					isProjectile = true,
					priority = 7,
					charClass = "Hakari",
					threatLevel = 3,
				},
				["95901746347992"] = {
					name = "Hakari.LuckyVolley",
					range = 30,
					duration = 0.6,
					isProjectile = false,
					priority = 6,
					charClass = "Hakari",
					threatLevel = 3,
				},
				["108123475959041"] = {
					name = "Hakari.FeverBreaker",
					range = 25,
					duration = 0.7,
					isProjectile = false,
					priority = 6,
					charClass = "Hakari",
					threatLevel = 3,
				},
				["140588454098230"] = {
					name = "Hakari.Melee3",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Hakari",
					threatLevel = 1,
				},
				["138826758216894"] = {
					name = "Hakari.Melee4",
					range = 15,
					duration = 0.4,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Hakari",
					threatLevel = 1,
				},
				["116432619539029"] = {
					name = "Megumi.Toad",
					range = 40,
					duration = 0.6,
					isProjectile = true,
					priority = 7,
					charClass = "Megumi",
					threatLevel = 3,
				},
				["111077341852080"] = {
					name = "Megumi.Nue",
					range = 40,
					duration = 0.7,
					isProjectile = true,
					priority = 7,
					charClass = "Megumi",
					threatLevel = 3,
				},
				["81112033595734"] = {
					name = "Megumi.DivineDog",
					range = 30,
					duration = 0.6,
					isProjectile = true,
					priority = 6,
					charClass = "Megumi",
					threatLevel = 3,
				},
				["75390215999547"] = {
					name = "Megumi.GreatSerpent",
					range = 35,
					duration = 0.6,
					isProjectile = false,
					priority = 6,
					charClass = "Megumi",
					threatLevel = 3,
				},
				["115683433001643"] = {
					name = "Megumi.DivinePummel",
					range = 25,
					duration = 0.8,
					isProjectile = false,
					priority = 7,
					charClass = "Megumi",
					threatLevel = 3,
				},
				["138852224035589"] = {
					name = "Megumi.GroundPitch",
					range = 30,
					duration = 0.6,
					isProjectile = false,
					priority = 6,
					charClass = "Megumi",
					threatLevel = 3,
				},
				["85024950165903"] = {
					name = "Megumi.Earthquake",
					range = 30,
					duration = 0.7,
					isProjectile = false,
					priority = 7,
					charClass = "Megumi",
					threatLevel = 3,
				},
				["131219281339199"] = {
					name = "Megumi.MaxElephant",
					range = 40,
					duration = 0.8,
					isProjectile = true,
					priority = 8,
					charClass = "Megumi",
					threatLevel = 4,
				},
				["138489871864252"] = {
					name = "Megumi.Melee2",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Megumi",
					threatLevel = 1,
				},
				["89092734635186"] = {
					name = "Mahito.Soulfire",
					range = 30,
					duration = 0.6,
					isProjectile = true,
					priority = 7,
					charClass = "Mahito",
					threatLevel = 3,
				},
				["127727754867974"] = {
					name = "Mahito.SpikeWrath",
					range = 25,
					duration = 0.7,
					isProjectile = false,
					priority = 6,
					charClass = "Mahito",
					threatLevel = 3,
				},
				["105068005007692"] = {
					name = "Mahito.FaceBlitz",
					range = 20,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Mahito",
					threatLevel = 2,
				},
				["108319980293313"] = {
					name = "Mahito.BodyRepel",
					range = 30,
					duration = 0.7,
					isProjectile = false,
					priority = 6,
					charClass = "Mahito",
					threatLevel = 3,
				},
				["76313364850487"] = {
					name = "Mahito.WideStrike",
					range = 25,
					duration = 0.6,
					isProjectile = false,
					priority = 6,
					charClass = "Mahito",
					threatLevel = 3,
				},
				["94223344057046"] = {
					name = "Mahito.HeartPiercer",
					range = 22,
					duration = 0.6,
					isProjectile = false,
					priority = 6,
					charClass = "Mahito",
					threatLevel = 3,
				},
				["128779949980528"] = {
					name = "Mahito.DrillSplit",
					range = 20,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Mahito",
					threatLevel = 2,
				},
				["86073608599582"] = {
					name = "Mahito.HeadSplitter",
					range = 20,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Mahito",
					threatLevel = 2,
				},
				["94720627091769"] = {
					name = "Todo.SwiftKick",
					range = 18,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Todo",
					threatLevel = 2,
				},
				["111720035828971"] = {
					name = "Todo.PebbleThrow",
					range = 50,
					duration = 0.6,
					isProjectile = true,
					priority = 7,
					charClass = "Todo",
					threatLevel = 3,
				},
				["136536827155962"] = {
					name = "Todo.BruteForce",
					range = 15,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Todo",
					threatLevel = 2,
				},
				["121343824534765"] = {
					name = "Todo.ElbowDrop",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Todo",
					threatLevel = 2,
				},
				["107029561762376"] = {
					name = "Todo.Melee2",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Todo",
					threatLevel = 1,
				},
				["117831239064143"] = {
					name = "Todo.Melee3",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Todo",
					threatLevel = 1,
				},
				["124340599144108"] = {
					name = "Hiromi.TwirlingStrikes",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Hiromi",
					threatLevel = 2,
				},
				["132754851925571"] = {
					name = "Hiromi.Verdict",
					range = 20,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Hiromi",
					threatLevel = 2,
				},
				["86362077638309"] = {
					name = "Hiromi.GavelThrow",
					range = 40,
					duration = 0.6,
					isProjectile = true,
					priority = 7,
					charClass = "Hiromi",
					threatLevel = 3,
				},
				["124243904748268"] = {
					name = "Hiromi.TripleSentence",
					range = 22,
					duration = 0.7,
					isProjectile = false,
					priority = 6,
					charClass = "Hiromi",
					threatLevel = 3,
				},
				["124759375124281"] = {
					name = "Hiromi.JudgeReach",
					range = 25,
					duration = 0.6,
					isProjectile = false,
					priority = 6,
					charClass = "Hiromi",
					threatLevel = 3,
				},
				["122573730331631"] = {
					name = "Hiromi.Melee2",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Hiromi",
					threatLevel = 1,
				},
				["82400997593751"] = {
					name = "Hiromi.Melee3",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Hiromi",
					threatLevel = 1,
				},
				["118634493886688"] = {
					name = "Hiromi.Melee4",
					range = 15,
					duration = 0.4,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Hiromi",
					threatLevel = 1,
				},
				["80465501985014"] = {
					name = "Mechamaru.MiracleCannon",
					range = 80,
					duration = 1,
					isProjectile = true,
					priority = 9,
					charClass = "Mechamaru",
					threatLevel = 5,
				},
				["118652212972529"] = {
					name = "Mechamaru.GunShot",
					range = 60,
					duration = 0.6,
					isProjectile = true,
					priority = 8,
					charClass = "Mechamaru",
					threatLevel = 4,
				},
				["93901924492394"] = {
					name = "Mechamaru.UltraCannon",
					range = 100,
					duration = 1.5,
					isProjectile = true,
					priority = 10,
					charClass = "Mechamaru",
					threatLevel = 5,
				},
				["137638103122538"] = {
					name = "Mechamaru.AbsoluteDestruction",
					range = 100,
					duration = 2,
					isProjectile = true,
					priority = 10,
					charClass = "Mechamaru",
					threatLevel = 5,
				},
				["89009042593684"] = {
					name = "Mechamaru.PigeonViola",
					range = 70,
					duration = 1,
					isProjectile = true,
					priority = 8,
					charClass = "Mechamaru",
					threatLevel = 4,
				},
				["114277419400774"] = {
					name = "Mechamaru.HeatEmission",
					range = 30,
					duration = 0.7,
					isProjectile = false,
					priority = 6,
					charClass = "Mechamaru",
					threatLevel = 3,
				},
				["85148168523745"] = {
					name = "Mechamaru.Melee2",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Mechamaru",
					threatLevel = 1,
				},
				["108686045412945"] = {
					name = "Mechamaru.Melee3",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Mechamaru",
					threatLevel = 1,
				},
				["104793932628579"] = {
					name = "Yuki.MassBreaker",
					range = 25,
					duration = 0.7,
					isProjectile = false,
					priority = 6,
					charClass = "Yuki",
					threatLevel = 3,
				},
				["94347210073500"] = {
					name = "Yuki.RisingStar",
					range = 20,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Yuki",
					threatLevel = 2,
				},
				["77833820443705"] = {
					name = "Yuki.GarudaStab",
					range = 20,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Yuki",
					threatLevel = 2,
				},
				["115097960689033"] = {
					name = "Yuki.GarudaRebound",
					range = 25,
					duration = 0.6,
					isProjectile = false,
					priority = 6,
					charClass = "Yuki",
					threatLevel = 3,
				},
				["72575786212990"] = {
					name = "Yuki.Melee2",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Yuki",
					threatLevel = 1,
				},
				["119248903710146"] = {
					name = "Yuki.Melee3",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Yuki",
					threatLevel = 1,
				},
				["81971779090581"] = {
					name = "Goku.Kamehameha",
					range = 120,
					duration = 1.5,
					isProjectile = true,
					priority = 10,
					charClass = "Goku",
					threatLevel = 5,
				},
				["87481059409847"] = {
					name = "Goku.StaffExtend",
					range = 50,
					duration = 0.6,
					isProjectile = true,
					priority = 7,
					charClass = "Goku",
					threatLevel = 3,
				},
				["128537969081721"] = {
					name = "Goku.KiSpam",
					range = 80,
					duration = 1.5,
					isProjectile = true,
					priority = 9,
					charClass = "Goku",
					threatLevel = 5,
				},
				["117318845383884"] = {
					name = "Goku.StaffUppercut",
					range = 20,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Goku",
					threatLevel = 2,
				},
				["97215638330770"] = {
					name = "Goku.Melee2",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Goku",
					threatLevel = 1,
				},
				["100474683542881"] = {
					name = "Goku.Melee3",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Goku",
					threatLevel = 1,
				},
				["89582140026963"] = {
					name = "Yuta.ResoluteSlash",
					range = 25,
					duration = 0.6,
					isProjectile = false,
					priority = 6,
					charClass = "Yuta",
					threatLevel = 3,
				},
				["116737527523542"] = {
					name = "Yuta.LoveBeam",
					range = 80,
					duration = 1.2,
					isProjectile = true,
					priority = 9,
					charClass = "Yuta",
					threatLevel = 5,
				},
				["74676954665401"] = {
					name = "Yuta.Slam",
					range = 25,
					duration = 0.6,
					isProjectile = false,
					priority = 6,
					charClass = "Yuta",
					threatLevel = 3,
				},
				["95169958463123"] = {
					name = "Yuta.Throw",
					range = 20,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Yuta",
					threatLevel = 2,
				},
				["140288981168553"] = {
					name = "Yuta.Smash",
					range = 25,
					duration = 0.6,
					isProjectile = false,
					priority = 6,
					charClass = "Yuta",
					threatLevel = 3,
				},
				["73482562876920"] = {
					name = "Yuta.JacobLadder",
					range = 60,
					duration = 1.5,
					isProjectile = true,
					priority = 9,
					charClass = "Yuta",
					threatLevel = 5,
				},
				["88005970155216"] = {
					name = "Yuta.CursedSpeech",
					range = 35,
					duration = 0.8,
					isProjectile = false,
					priority = 7,
					charClass = "Yuta",
					threatLevel = 3,
				},
				["130806585141471"] = {
					name = "Yuta.Melee2",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Yuta",
					threatLevel = 1,
				},
				["131967150738931"] = {
					name = "Yuta.Melee3",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Yuta",
					threatLevel = 1,
				},
				["105121164520635"] = {
					name = "Naoya.ProjectionBreaker",
					range = 25,
					duration = 0.6,
					isProjectile = false,
					priority = 6,
					charClass = "Naoya",
					threatLevel = 3,
				},
				["122607727974119"] = {
					name = "Naoya.Flicker",
					range = 20,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Naoya",
					threatLevel = 2,
				},
				["86045680364061"] = {
					name = "Naoya.DecisiveStrike",
					range = 20,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Naoya",
					threatLevel = 2,
				},
				["129944486689528"] = {
					name = "Naoya.Acceleration",
					range = 30,
					duration = 0.8,
					isProjectile = false,
					priority = 7,
					charClass = "Naoya",
					threatLevel = 3,
				},
				["108708446862011"] = {
					name = "Naoya.Melee2",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Naoya",
					threatLevel = 1,
				},
				["77583711129628"] = {
					name = "Naoya.Melee3",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Naoya",
					threatLevel = 1,
				},
				["100811576955331"] = {
					name = "Nanami.BluntCut",
					range = 18,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Nanami",
					threatLevel = 2,
				},
				["122015481201264"] = {
					name = "Nanami.Collapse",
					range = 25,
					duration = 0.7,
					isProjectile = false,
					priority = 6,
					charClass = "Nanami",
					threatLevel = 3,
				},
				["130957217409359"] = {
					name = "Nanami.SeveranceKick",
					range = 20,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Nanami",
					threatLevel = 2,
				},
				["79436586236026"] = {
					name = "Nanami.Melee2",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Nanami",
					threatLevel = 1,
				},
				["102285403332509"] = {
					name = "Nanami.Melee3",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Nanami",
					threatLevel = 1,
				},
				["103960582499076"] = {
					name = "Haruta.AnkleCutter",
					range = 15,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Haruta",
					threatLevel = 2,
				},
				["118326207788271"] = {
					name = "Haruta.Jawbreaker",
					range = 15,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Haruta",
					threatLevel = 2,
				},
				["133303451091615"] = {
					name = "Haruta.Backstab",
					range = 16,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Haruta",
					threatLevel = 2,
				},
				["113963875117859"] = {
					name = "Haruta.Melee2",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Haruta",
					threatLevel = 1,
				},
				["139956651661073"] = {
					name = "MeiMei.Bounding",
					range = 20,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "MeiMei",
					threatLevel = 2,
				},
				["99180695169591"] = {
					name = "MeiMei.BirdCall",
					range = 50,
					duration = 0.7,
					isProjectile = true,
					priority = 7,
					charClass = "MeiMei",
					threatLevel = 3,
				},
				["108449614447004"] = {
					name = "MeiMei.Melee2",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "MeiMei",
					threatLevel = 1,
				},
				["113722638806911"] = {
					name = "Hanami.RootSwarm",
					range = 35,
					duration = 0.7,
					isProjectile = false,
					priority = 6,
					charClass = "Hanami",
					threatLevel = 3,
				},
				["96466374346823"] = {
					name = "Hanami.BudShot",
					range = 50,
					duration = 0.6,
					isProjectile = true,
					priority = 7,
					charClass = "Hanami",
					threatLevel = 3,
				},
				["92595499555055"] = {
					name = "Hanami.SurgingThorns",
					range = 30,
					duration = 0.7,
					isProjectile = false,
					priority = 6,
					charClass = "Hanami",
					threatLevel = 3,
				},
				["88849926869776"] = {
					name = "Hanami.Melee2",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Hanami",
					threatLevel = 1,
				},
				["116119661056362"] = {
					name = "Kurourushi.RoachSwarm",
					range = 40,
					duration = 0.8,
					isProjectile = true,
					priority = 7,
					charClass = "Kurourushi",
					threatLevel = 3,
				},
				["83430571986421"] = {
					name = "Kurourushi.FesteringStrikes",
					range = 20,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Kurourushi",
					threatLevel = 2,
				},
				["93751660565233"] = {
					name = "Kurourushi.EarthenTrance",
					range = 30,
					duration = 0.7,
					isProjectile = false,
					priority = 6,
					charClass = "Kurourushi",
					threatLevel = 3,
				},
				["86519781516542"] = {
					name = "Kurourushi.Melee2",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Kurourushi",
					threatLevel = 1,
				},
				["134243365075812"] = {
					name = "Itadori.UpAttack",
					range = 15,
					duration = 0.4,
					isProjectile = false,
					priority = 4,
					charClass = "Itadori",
					threatLevel = 2,
				},
				["92966188946988"] = {
					name = "Itadori.DownAttack",
					range = 15,
					duration = 0.4,
					isProjectile = false,
					priority = 4,
					charClass = "Itadori",
					threatLevel = 2,
				},
				["110978068388232"] = {
					name = "Itadori.Chase",
					range = 16,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Itadori",
					threatLevel = 2,
				},
				["96327114254575"] = {
					name = "Todo.Melee1",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Todo",
					threatLevel = 1,
				},
				["84448423136678"] = {
					name = "Todo.ClimaxJump",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Todo",
					threatLevel = 2,
				},
				["84359513001979"] = {
					name = "Nanami.Melee1",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Nanami",
					threatLevel = 1,
				},
				["104137631480391"] = {
					name = "Nanami.Melee4",
					range = 15,
					duration = 0.4,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Nanami",
					threatLevel = 1,
				},
				["81210313723714"] = {
					name = "Nanami.CleavingWhirl",
					range = 18,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Nanami",
					threatLevel = 2,
				},
				["89891294371787"] = {
					name = "Nanami.Interrogate",
					range = 18,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Nanami",
					threatLevel = 2,
				},
				["126277739156443"] = {
					name = "Mahito.Melee1",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Mahito",
					threatLevel = 1,
				},
				["99710481887795"] = {
					name = "Mahito.Melee2",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Mahito",
					threatLevel = 1,
				},
				["122655618588472"] = {
					name = "Mahito.Melee4",
					range = 15,
					duration = 0.4,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Mahito",
					threatLevel = 1,
				},
				["89888040037257"] = {
					name = "Mahito.CrushingRush",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Mahito",
					threatLevel = 2,
				},
				["72475960800126"] = {
					name = "Mahito.FocusStrike",
					range = 16,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Mahito",
					threatLevel = 2,
				},
				["75337033003776"] = {
					name = "Megumi.Melee1",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Megumi",
					threatLevel = 1,
				},
				["96185406489877"] = {
					name = "Megumi.Melee3",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Megumi",
					threatLevel = 1,
				},
				["72424828296871"] = {
					name = "Megumi.ShadowSwarm",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Megumi",
					threatLevel = 2,
				},
				["94588892125071"] = {
					name = "Hakari.Melee1",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Hakari",
					threatLevel = 1,
				},
				["97868312130612"] = {
					name = "Hakari.Melee2",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Hakari",
					threatLevel = 1,
				},
				["132281807148575"] = {
					name = "Hakari.LuckyRush",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Hakari",
					threatLevel = 2,
				},
				["107067953428369"] = {
					name = "Choso.PlasmaWave",
					range = 30,
					duration = 0.7,
					isProjectile = true,
					priority = 7,
					charClass = "Choso",
					threatLevel = 3,
				},
				["120319825505172"] = {
					name = "Choso.Convergence",
					range = 30,
					duration = 0.7,
					isProjectile = true,
					priority = 7,
					charClass = "Choso",
					threatLevel = 3,
				},
				["133240987753043"] = {
					name = "Yuta.Melee1",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Yuta",
					threatLevel = 1,
				},
				["84442064935420"] = {
					name = "Yuta.Melee4",
					range = 15,
					duration = 0.4,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Yuta",
					threatLevel = 1,
				},
				["88911658010897"] = {
					name = "Yuta.Revolve",
					range = 16,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Yuta",
					threatLevel = 2,
				},
				["104824728032437"] = {
					name = "Yuta.SeveringPath",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Yuta",
					threatLevel = 2,
				},
				["93796567192197"] = {
					name = "Yuta.ElbowBeatdown",
					range = 16,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Yuta",
					threatLevel = 2,
				},
				["131031842057158"] = {
					name = "Yuta.EnergyRipple",
					range = 25,
					duration = 0.6,
					isProjectile = false,
					priority = 6,
					charClass = "Yuta",
					threatLevel = 3,
				},
				["72914783159396"] = {
					name = "Yuta.RunSlash",
					range = 18,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Yuta",
					threatLevel = 2,
				},
				["71783955283661"] = {
					name = "Yuta.Beam",
					range = 80,
					duration = 1.2,
					isProjectile = true,
					priority = 9,
					charClass = "Yuta",
					threatLevel = 5,
				},
				["101283990868172"] = {
					name = "Naoya.Melee1",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Naoya",
					threatLevel = 1,
				},
				["118607369830566"] = {
					name = "Naoya.Bleedout",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Naoya",
					threatLevel = 2,
				},
				["119211164876773"] = {
					name = "Naoya.CursoryImpact",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Naoya",
					threatLevel = 2,
				},
				["115589615022077"] = {
					name = "Naoya.FlashFreezing",
					range = 30,
					duration = 0.7,
					isProjectile = true,
					priority = 7,
					charClass = "Naoya",
					threatLevel = 3,
				},
				["133936641185614"] = {
					name = "Hiromi.Melee1",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Hiromi",
					threatLevel = 1,
				},
				["89652378115594"] = {
					name = "Hiromi.ExtendSwing",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Hiromi",
					threatLevel = 2,
				},
				["106649604455931"] = {
					name = "Hiromi.FinalJudgement",
					range = 20,
					duration = 0.7,
					isProjectile = false,
					priority = 6,
					charClass = "Hiromi",
					threatLevel = 3,
				},
				["132704398648016"] = {
					name = "Hiromi.Execution",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Hiromi",
					threatLevel = 2,
				},
				["133447840605824"] = {
					name = "Haruta.Melee1",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Haruta",
					threatLevel = 1,
				},
				["106282708121342"] = {
					name = "Haruta.Melee3",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Haruta",
					threatLevel = 1,
				},
				["101681158700275"] = {
					name = "Haruta.Melee4",
					range = 15,
					duration = 0.4,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Haruta",
					threatLevel = 1,
				},
				["76957377224584"] = {
					name = "Haruta.CheapShot",
					range = 16,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Haruta",
					threatLevel = 2,
				},
				["120914276661831"] = {
					name = "Haruta.Ambush",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Haruta",
					threatLevel = 2,
				},
				["108865650924154"] = {
					name = "Haruta.DirtyPlay",
					range = 16,
					duration = 0.5,
					isProjectile = false,
					priority = 5,
					charClass = "Haruta",
					threatLevel = 2,
				},
				["95494223368246"] = {
					name = "Haruta.Stinger",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Haruta",
					threatLevel = 2,
				},
				["102053631728986"] = {
					name = "Haruta.Trip",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Haruta",
					threatLevel = 2,
				},
				["106892235857467"] = {
					name = "Reggie.Melee1",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Reggie",
					threatLevel = 1,
				},
				["93623649598782"] = {
					name = "Reggie.Melee2",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Reggie",
					threatLevel = 1,
				},
				["128057999506702"] = {
					name = "Reggie.Melee3",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Reggie",
					threatLevel = 1,
				},
				["76372421343979"] = {
					name = "Reggie.Melee4",
					range = 15,
					duration = 0.4,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Reggie",
					threatLevel = 1,
				},
				["103659500760745"] = {
					name = "Reggie.BluntTrauma",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Reggie",
					threatLevel = 2,
				},
				["133042937840159"] = {
					name = "Reggie.SpeedCrash",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Reggie",
					threatLevel = 2,
				},
				["80552926761100"] = {
					name = "Reggie.Homerun",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Reggie",
					threatLevel = 2,
				},
				["84063127664904"] = {
					name = "Reggie.Fleche",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Reggie",
					threatLevel = 2,
				},
				["108407413391495"] = {
					name = "Reggie.GarageSale",
					range = 30,
					duration = 0.7,
					isProjectile = true,
					priority = 7,
					charClass = "Reggie",
					threatLevel = 3,
				},
				["132615896981226"] = {
					name = "Reggie.Littering",
					range = 25,
					duration = 0.6,
					isProjectile = true,
					priority = 6,
					charClass = "Reggie",
					threatLevel = 3,
				},
				["111083699259354"] = {
					name = "Hanami.Melee1",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Hanami",
					threatLevel = 1,
				},
				["89537672683114"] = {
					name = "Hanami.Melee3",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Hanami",
					threatLevel = 1,
				},
				["109598602517674"] = {
					name = "Hanami.Melee4",
					range = 15,
					duration = 0.4,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Hanami",
					threatLevel = 1,
				},
				["124427228784862"] = {
					name = "Hanami.RootRampage",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Hanami",
					threatLevel = 2,
				},
				["131904892480473"] = {
					name = "Hanami.Beam",
					range = 80,
					duration = 1.2,
					isProjectile = true,
					priority = 9,
					charClass = "Hanami",
					threatLevel = 5,
				},
				["105961366724096"] = {
					name = "Kurourushi.Melee1",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Kurourushi",
					threatLevel = 1,
				},
				["123591522021548"] = {
					name = "Kurourushi.Melee3",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Kurourushi",
					threatLevel = 1,
				},
				["124726819047447"] = {
					name = "Kurourushi.Melee4",
					range = 15,
					duration = 0.4,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Kurourushi",
					threatLevel = 1,
				},
				["85938446097801"] = {
					name = "Kurourushi.Chokehold",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Kurourushi",
					threatLevel = 2,
				},
				["104087365067491"] = {
					name = "Goku.Melee1",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Goku",
					threatLevel = 1,
				},
				["131279921755936"] = {
					name = "Goku.Melee4",
					range = 15,
					duration = 0.4,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Goku",
					threatLevel = 1,
				},
				["98783064085844"] = {
					name = "Mechamaru.Melee1",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Mechamaru",
					threatLevel = 1,
				},
				["79718433989469"] = {
					name = "Mechamaru.Melee4",
					range = 15,
					duration = 0.4,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Mechamaru",
					threatLevel = 1,
				},
				["131909724908049"] = {
					name = "Yuki.Melee1",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Yuki",
					threatLevel = 1,
				},
				["123168328205349"] = {
					name = "Yuki.Melee4",
					range = 15,
					duration = 0.4,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Yuki",
					threatLevel = 1,
				},
				["85068785050521"] = {
					name = "Locust.Melee1",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Locust",
					threatLevel = 1,
				},
				["79086910454958"] = {
					name = "Locust.Melee2",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Locust",
					threatLevel = 1,
				},
				["108027796023968"] = {
					name = "Locust.Melee3",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Locust",
					threatLevel = 1,
				},
				["99205259396653"] = {
					name = "Locust.Melee4",
					range = 15,
					duration = 0.4,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Locust",
					threatLevel = 1,
				},
				["134777193523837"] = {
					name = "Locust.SnapChomp",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Locust",
					threatLevel = 2,
				},
				["129132347098646"] = {
					name = "Locust.BlackMucus",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Locust",
					threatLevel = 2,
				},
				["114985590391235"] = {
					name = "MeiMei.Melee1",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "MeiMei",
					threatLevel = 1,
				},
				["122170399962557"] = {
					name = "MeiMei.Melee3",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "MeiMei",
					threatLevel = 1,
				},
				["117638619792450"] = {
					name = "MeiMei.Melee4",
					range = 15,
					duration = 0.4,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "MeiMei",
					threatLevel = 1,
				},
				["81007905598407"] = {
					name = "MeiMei.Murmurate",
					range = 30,
					duration = 0.7,
					isProjectile = true,
					priority = 7,
					charClass = "MeiMei",
					threatLevel = 3,
				},
				["96397814657727"] = {
					name = "MeiMei.Flock",
					range = 30,
					duration = 0.7,
					isProjectile = true,
					priority = 7,
					charClass = "MeiMei",
					threatLevel = 3,
				},
				["125689391910002"] = {
					name = "Charles.Melee1",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Charles",
					threatLevel = 1,
				},
				["84080901810314"] = {
					name = "Charles.Melee2",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Charles",
					threatLevel = 1,
				},
				["139833047658617"] = {
					name = "Charles.Melee3",
					range = 15,
					duration = 0.35,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Charles",
					threatLevel = 1,
				},
				["79271374075726"] = {
					name = "Charles.Melee4",
					range = 15,
					duration = 0.4,
					isProjectile = false,
					isM1 = true,
					priority = 3,
					charClass = "Charles",
					threatLevel = 1,
				},
				["72932825817330"] = {
					name = "Charles.Sacrilegious",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Charles",
					threatLevel = 2,
				},
				["79860101129549"] = {
					name = "Charles.ShutUp",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Charles",
					threatLevel = 2,
				},
				["103013818601982"] = {
					name = "Charles.Despair",
					range = 18,
					duration = 0.6,
					isProjectile = false,
					priority = 5,
					charClass = "Charles",
					threatLevel = 2,
				},
			}

			local tbl19 = {
				["132748613906344"] = true,
				["84716311536982"] = true,
				["132725601768618"] = true,
				["137654778575373"] = true,
				["137865634124104"] = true,
				["101162958113766"] = true,
				["124937162378188"] = true,
				["73243807139765"] = true,
				["113479860283691"] = true,
				["127171275866632"] = true,
				["95097480425566"] = true,
				["131506102901134"] = true,
				["137611726964398"] = true,
				["121984128639453"] = true,
				["80465501985014"] = true,
				["93901924492394"] = true,
				["137638103122538"] = true,
				["89009042593684"] = true,
				["118652212972529"] = true,
				["81971779090581"] = true,
				["128537969081721"] = true,
				["116737527523542"] = true,
				["73482562876920"] = true,
				["111720035828971"] = true,
				["86362077638309"] = true,
				["99180695169591"] = true,
				["96466374346823"] = true,
				["116119661056362"] = true,
				["87481059409847"] = true,
				["132928484483887"] = true,
				["82541714192027"] = true,
				["116432619539029"] = true,
				["111077341852080"] = true,
				["81112033595734"] = true,
				["131219281339199"] = true,
				["89092734635186"] = true,
				["85569553424083"] = true,
				["72063002791216"] = true,
			}

			tbl14 = {}
			n24 = 0
			n25 = 0
			local n27 = 2048

			local function fn45()
				local n28 = 0

				for k in v22(tbl14) do
					n28 += 1
				end

				if n28 < n27 then
					return
				end
				local tbl20 = {}

				for k, v27 in v22(tbl14) do
					insert(tbl20, { id = k, lastSeen = v27.lastSeen or 0 })
				end

				sort(tbl20, function(arg, arg2)
					return arg.lastSeen < arg2.lastSeen
				end)

				for i = 1, floor(#tbl20 * 0.3) do
					tbl14[tbl20[i].id] = nil
				end
			end

			local tbl20 = {
				continuousScan = false,
				atkNames = {},
				dummies = {},
				dummyT = 0,
				conts = nil,
				contT = 0,
				cc = v26({}, { __mode = "k" }),
				getKids = function(...) end,
			}

			local function fn46()return LocalPlayer and LocalPlayer.Character;end
			local function fn47(...) end
			local function fn48(...) end
			local n28 = 0

			local tbl21 = {
				[Enum.KeyCode.One] = true,
				[Enum.KeyCode.Two] = true,
				[Enum.KeyCode.Three] = true,
				[Enum.KeyCode.Four] = true,
				[Enum.KeyCode.E] = true,
				[Enum.KeyCode.R] = true,
				[Enum.KeyCode.G] = true,
				[Enum.UserInputType.MouseButton1] = true,
			}

			insert(tbl9, UserInputService.InputBegan:Connect(function(input)
				if tbl21[input.KeyCode] or tbl21[input.UserInputType] then
					n28 = os.clock()
				end
			end))

			local function fn49(...) end
			local function fn50(o)if not o or not o.Parent then return false;end;if o:GetAttribute("Dead")then return false;end;local l=o:FindFirstChildOfClass("Humanoid");if l and l.Health<=0 then return false;end;return true;end
			local function fn51(l,I)if not l or not I then return  huge ;end;return(l.Position-I.Position).Magnitude;end

			local tbl22 = {
				_inCombatWith = {},
				_lastCombatTime = 0,
				_combatTimeout = 5,
				MarkCombat = function(o,l)local I=l.Name;o._inCombatWith[I]=os.clock();o._lastCombatTime=os.clock();end,
				IsInCombatWith = function(arg, arg2)
					local name = arg2.Name
					local v27 = arg._inCombatWith[name]
					if not v27 then
						return false
					end

					if arg._combatTimeout < os.clock() - v27 then
						arg._inCombatWith[name] = nil
						return false
					end
					return true
				end,
				IsInAnyCombat = function(arg)
					local now2 = os.clock()

					for k, v27 in v22(arg._inCombatWith) do
						if now2 - v27 > arg._combatTimeout then
							arg._inCombatWith[k] = nil
							continue
						end
						return true
					end

					return false
				end,
				Cleanup = function(l)local I=os.clock();for D,S in  v22 (l._inCombatWith)do if I-S>l._combatTimeout then l._inCombatWith[D]=nil;end;end;end,
			}

			tbl13 = { _enemies = v26({}, { __mode = "k" }), _totalTracked = 0, _totalReleased = 0 }
			tbl13.TrackAttack = function(...) end

			tbl13.ClearCharacter = function(arg, arg2)
				if not arg2 then
					return
				end
				local v27 = arg._enemies[arg2]

				if v27 then
					for _, blockId in v23(v27.blockIds) do
						tbl12:Release(blockId)
						arg._totalReleased = arg._totalReleased + 1
					end

					arg._enemies[arg2] = nil
				end
			end

			tbl13.GetActiveEnemyCount = function(arg)
				local n29 = 0

				for k in v22(arg._enemies) do
					n29 += 1
				end

				return n29
			end

			tbl13.GetStats = function(arg)
				return {
					activeEnemies = arg:GetActiveEnemyCount(),
					totalTracked = arg._totalTracked,
					totalReleased = arg._totalReleased,
				}
			end

			local function fn52(...) end

			local function fn53()
				local effects = Workspace:WaitForChild("Effects", 10) or Workspace:FindFirstChild("Effects")
				if not effects then
					return
				end

				local connection3 = effects.ChildAdded:Connect(function(child)
					if not flag11 then
						return
					end

					if not toggles.HitGlowBlock or not toggles.HitGlowBlock.Value then
						return
					end

					if not toggles.AutoBlockEnabled.Value then
						return
					end

					if child.Name ~= "HitGlow" and child.Name ~= "BlockHit" then
						return
					end
					local v27 = fn48()
					if v27 and v27.FloorMaterial == Enum.Material.Air then
						return
					end

					if toggles.BlockWhileAttacking and not toggles.BlockWhileAttacking.Value and fn49() then
						return
					end
					local v28 = fn46()
					if not v28 then
						return
					end

					for _, descendant in v23(child:GetDescendants()) do
						if descendant:IsA("Weld") or descendant:IsA("WeldConstraint") then
							local part0 = descendant.Part0
							local part1 = descendant.Part1
							if part0 and part0:IsDescendantOf(v28) or part1 and part1:IsDescendantOf(v28) then
								tbl12:Request("hitglow_weld", 0.25)
								break
							end
						end
					end
				end)

				insert(tbl9, connection3)
			end

			local tbl23 = {
				"projectile",
				"bullet",
				"fireball",
				"arrow",
				"bolt",
				"shuriken",
				"orb",
				"sphere",
				"beam",
				"laser",
				"missile",
				"rocket",
				"bomb",
				"grenade",
				"stone",
				"ice",
				"rock",
				"fire",
				"wind",
				"water",
				"cursed",
				"energy",
				"blast",
				"wave",
				"slab",
				"kunai",
				"spike",
				"thorn",
				"needle",
				"dart",
				"cannon",
				"shot",
				"slug",
				"round",
				"pellet",
				"blood",
				"plasma",
				"void",
				"purple",
				"red",
				"blue",
				"black",
				"white",
				"gold",
				"silver",
			}

			local v27 = v26({}, { __mode = "k" })
			local function fn54(l)if not l or not l:IsA("BasePart")then return false;end;local I= v27 [l];if I~=nil then return I;end;if not LocalPlayer.Character or(l:IsDescendantOf(LocalPlayer.Character))then  v27 [l]=false;return false;end;I=l.Size;if I.Magnitude>100 or I.Magnitude<0.1 then  v27 [l]=false;return false;end;I= lower (l.Name);for D=1,# tbl23 ,1 do if  find (I, tbl23 [D])then  v27 [l]=true;return true;end;end;if l.Material==Enum.Material.Neon or l.Material==Enum.Material.ForceField or l.Material==Enum.Material.Glass then  v27 [l]=true;return true;end;if  find (I,"part")or( find (I,"mesh"))or( find (I,"effect"))or( find (I,"slash"))or( find (I,"orb"))or( find (I,"blood"))then  v27 [l]=true;return true;end; v27 [l]=false;return false;end
			local function fn55(...) end

			local function fn56()
				local tbl24 = {}
				local v28 = Workspace
				local effects = Workspace:FindFirstChild("Effects")
				local projectiles = Workspace:FindFirstChild("Projectiles")
				local v29 = Workspace
				local findFirstChild = v29.FindFirstChild
				tbl24[1] = v28
				tbl24[2] = effects
				tbl24[3] = projectiles

				do
					local values = table.pack(findFirstChild(v29, "Debris"))
					table.move(values, 1, values.n, 4, tbl24)
				end

				for _, v30 in v23(tbl24) do
					if v30 then
						local connection3 = v30.ChildAdded:Connect(function(child)
							if not flag11 or not toggles.ProjectileBlock or not toggles.ProjectileBlock.Value then
								return
							end

							spawn_(function()
								wait_(0.005)
								if not child or not child.Parent then
									return
								end
								local v31 = fn47()
								if not v31 then
									return
								end
								local position = v31.Position
								local now2 = os.clock()

								if child:IsA("BasePart") then
									fn55(child, position, now2, 120)
								elseif child:IsA("Model") then
									for _, child2 in v23(child:GetChildren()) do
										if child2:IsA("BasePart") then
											fn55(child2, position, now2, 120)
										end
									end
								end
							end)
						end)

						insert(tbl9, connection3)
					end
				end
			end

			fn56()
			local health = nil
			local n29 = 0
			insert(tbl9, RunService.Heartbeat:Connect(function(...) end))

			local function fn57(arg)
				if not flag11 then
					return
				end
				local v28 = Players
				local v29 = LocalPlayer
				if v28:GetPlayerFromCharacter(arg) == v29 then
					return
				end
				local humanoid2 = arg:WaitForChild("Humanoid", 5)

				if humanoid2 then
					local connection3 = nil
					local connection4 = nil
					local connection5 = nil

					local function fn58(arg2)
						if not arg2 then
							return
						end

						if connection3 then
							connection3:Disconnect()
						end

						connection3 = arg2.AnimationPlayed:Connect(function(arg3)
							fn52(arg, arg3)
							fn19(arg, arg3)
						end)

						insert(tbl9, connection3)
					end

					local animator = humanoid2:FindFirstChildOfClass("Animator") or humanoid2:WaitForChild("Animator", 3)

					if animator then
						fn58(animator)
					end

					local connection6 = humanoid2.ChildAdded:Connect(function(child)
						if child:IsA("Animator") then
							fn58(child)
						end
					end)

					insert(tbl9, connection6)

					connection5 = arg.AncestryChanged:Connect(function(child, parent)
						if not parent then
							tbl13:ClearCharacter(arg)

							if connection3 then
								connection3:Disconnect()
							end

							if connection4 then
								connection4:Disconnect()
							end

							if connection5 then
								connection5:Disconnect()
							end

							if connection6 then
								connection6:Disconnect()
							end
						end
					end)

					insert(tbl9, connection5)

					connection4 = humanoid2.Died:Connect(function()
						tbl13:ClearCharacter(arg)
					end)

					insert(tbl9, connection4)
				end
			end

			local function fn58()
				local characters = Workspace:WaitForChild("Characters", 10) or Workspace:FindFirstChild("Characters")

				if characters then
					for _, child in v22(characters:GetChildren()) do
						spawn_(fn57, child)
					end

					local connection3 = characters.ChildAdded:Connect(function(child)
						wait_(0.05)
						fn57(child)
					end)

					insert(tbl9, connection3)

					local connection4 = characters.ChildRemoved:Connect(function(child)
						tbl13:ClearCharacter(child)
					end)

					insert(tbl9, connection4)
				end

				for _, player in v23(Players:GetPlayers()) do
					if player ~= LocalPlayer and player.Character then
						spawn_(fn57, player.Character)
					end

					player.CharacterAdded:Connect(function(character)
						wait_(0.05)
						fn57(character)
					end)
				end

				Players.PlayerAdded:Connect(function(player)
					player.CharacterAdded:Connect(function(character)
						wait_(0.05)
						fn57(character)
					end)
				end)

				for _, child in v23(Workspace:GetChildren()) do
					local flag13 = child:IsA("Model") and child ~= LocalPlayer.Character

					if flag13 then
						flag13 = child.Name:lower():find("dummy") or child:FindFirstChild("Enemy") or child:FindFirstChild("Humanoid")
					end

					if flag13 then
						spawn_(fn57, child)
					end
				end

				local connection3 = Workspace.ChildAdded:Connect(function(child)
					if child:IsA("Model") and child ~= LocalPlayer.Character and (child.Name:lower():find("dummy") or child:FindFirstChild("Enemy") or child:FindFirstChild("Humanoid")) then
						wait_(0.1)
						fn57(child)
					end
				end)

				insert(tbl9, connection3)
			end

			local connection3 = nil

			local function fn59()
				local function fn60(character)
					health = nil
					n29 = 0
					tbl12:ReleaseAll()

					if connection3 then
						connection3:Disconnect()
						connection3 = nil
					end

					local function fn61(child)
						if child:IsA("Tool") then
							if connection3 then
								connection3:Disconnect()
							end

							connection3 = child.Activated:Connect(function()
								n28 = os.clock()
							end)
						end
					end

					local connection4 = character.ChildAdded:Connect(fn61)
					insert(tbl9, connection4)
					local tool = character:FindFirstChildOfClass("Tool")

					if tool then
						fn61(tool)
					end

					wait_(0.5)
					local humanoid2 = character:WaitForChild("Humanoid", 5)

					if humanoid2 then
						health = humanoid2.Health
					end
				end

				if LocalPlayer.Character then
					spawn_(fn60, LocalPlayer.Character)
				end

				local connection4 = LocalPlayer.CharacterAdded:Connect(fn60)
				insert(tbl9, connection4)
			end

			local tbl24 = {
				_frameCount = 0,
				_lastFpsCheck = os.clock(),
				_currentFps = 60,
				Update = function(l,I)l._frameCount=l._frameCount+1;local I=os.clock();local D=I-l._lastFpsCheck;if D>=0.5 then l._currentFps= clamp (l._frameCount/D,1,360);l._frameCount=0;l._lastFpsCheck=I;end;end,
				GetFps = function(arg)
					return floor(arg._currentFps + 0.5)
				end,
				GetPing = function()
					local n30 = 0

					v24(function()
						local v28 = string.match(Stats.Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+")

						if v28 then
							n30 = v25(v28)
						end
					end)

					if n30 <= 0 then
						v24(function()
							n30 = Stats.PerformanceStats.Ping:GetValue()
						end)
					end

					return math.max(math.floor(n30 or 0), 1)
				end,
			}

			insert(tbl9, RunService.RenderStepped:Connect(function(l) tbl24 :Update(l);end))

			if ElopezLoading then
				ElopezLoading:SetCurrentStep(3)
			end

			if ElopezLoading then
				ElopezLoading:SetMessage("Building interface...")
			end

			if ElopezLoading then
				task.wait(0.7)
			end

			local Status = MainTab:AddLeftGroupbox("Status")
			local v28 = Status:AddLabel("Block: Inactive")
			local v29 = Status:AddLabel("Threat: None")
			local v30 = Status:AddLabel("FPS: -- | Ping: --")

			spawn_(function()
				local tbl25 = {}

				local function fn60(arg, arg2, arg3)
					if tbl25[arg] ~= arg3 then
						tbl25[arg] = arg3
						arg2:SetText(arg3)
					end
				end

				while flag11 do
					wait_(0.35)
					fn60("HudPerformance", v30, "FPS: " .. tbl24:GetFps() .. " | Ping: " .. tbl24:GetPing() .. "ms")

					if not (toggles.AutoBlockEnabled and toggles.AutoBlockEnabled.Value) and not (toggles.ProjectileBlock and toggles.ProjectileBlock.Value) then
						fn60("HudBlockState", v28, "Block: Disabled")
						fn60("HudClosestEnemy", v29, "Threat: None")
					else
						local stats = tbl12:GetStats()

						if stats.isBlocking then
							fn60("HudBlockState", v28, "Block: <font color=\"#49ff49\">Active</font> (" .. stats.activeReasons .. "r / " .. string.format("%.1f", stats.blockDuration) .. "s)")
						else
							fn60("HudBlockState", v28, "Block: <font color=\"#ff3c3c\">Ready</font>")
						end

						local v31 = fn47()
						local name = nil
						local huge2 = math.huge

						if v31 then
							local characters = Workspace:FindFirstChild("Characters")
							name = nil

							if characters then
								name = nil

								for _, child in v22(characters:GetChildren()) do
									local v32 = LocalPlayer

									if Players:GetPlayerFromCharacter(child) ~= v32 and fn50(child) then
										local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")

										if humanoidRootPart2 then
											local v33 = fn51(v31, humanoidRootPart2)
											local v34 = max(options.DetectionRange and options.DetectionRange.Value or 35, options.ProjectileRange and options.ProjectileRange.Value or 50)

											if v33 < huge2 and v33 <= v34 then
												name = child.Name
												huge2 = v33
											end
										end
									end
								end
							end
						end

						if name then
							fn60("HudClosestEnemy", v29, "Threat: <font color=\"#ffaa00\">" .. name .. "</font> (" .. floor(huge2) .. " studs)")
						else
							fn60("HudClosestEnemy", v29, "Threat: None")
						end
					end
				end
			end)

			local v31 = MainTab:AddLeftGroupbox("Auto Block", "shield")

			v31:AddToggle("AutoBlockEnabled", { Text = "Enable Auto Block", Default = false }):AddKeyPicker("AutoBlockKeybind", {
				Default = "None",
				SyncToggleState = true,
				Mode = "Toggle",
				Text = "Auto Block Keybind",
				NoUI = false,
			})

			v31:AddToggle("BlockM1s", { Text = "Block M1 Attacks", Default = true })
			v31:AddToggle("BlockWhileAttacking", { Text = "Block While Attacking", Default = false })
			v31:AddToggle("FacingCorrectionEnabled", { Text = "Facing Correction", Default = true })
			v31:AddToggle("BlockOnlyToLocked", { Text = "Block Only To Locked", Default = false })
			v31:AddSlider("DetectionRange", { Text = "Block Range (studs)", Min = 5, Max = 100, Default = 30, Rounding = 0 })
			v31:AddSlider("BlockRate", { Text = "Block Rate (%)", Min = 50, Max = 100, Default = 90, Rounding = 0 })
			v31:AddSlider("MaxBlockDuration", { Text = "Max Block Hold (s)", Min = 0.5, Max = 5, Default = 2, Rounding = 1 })
			local v32 = MainTab:AddLeftGroupbox("Projectile Block", "wind")

			v32:AddToggle("ProjectileBlock", { Text = "Projectile Block", Default = false }):AddKeyPicker("ProjectileBlockKeybind", {
				Default = "None",
				SyncToggleState = true,
				Mode = "Toggle",
				Text = "Projectile Block Keybind",
				NoUI = false,
			})

			v32:AddToggle("ProjectileFacingCheck", { Text = "Facing Check", Default = true })
			v32:AddSlider("ProjectileFacingThreshold", { Text = "Facing Sensitivity", Min = 0.1, Max = 1, Default = 0.4, Rounding = 2 })

			local function fn60(arg)
				return {
					Value = arg,
					SetValue = function(arg2, value)
						arg2.Value = value
					end,
					OnChanged = function()
					end,
				}
			end

			local function fn61(arg)
				return {
					Value = arg,
					SetValue = function(arg2, value)
						arg2.Value = value
					end,
				}
			end

			toggles.OnlyBlockLocked = fn60(false)
			toggles.HitGlowBlock = fn60(true)
			toggles.AntiFeintEnabled = fn60(true)
			toggles.DamageReaction = fn60(true)
			toggles.AutoPunishAfterBlock = fn60(true)
			toggles.AutoCounterEnabled = fn60(false)
			toggles.CounterFacingCheck = fn60(false)
			toggles.SmartBlockFilter = fn60(false)
			toggles.AutoDodgeEnabled = fn60(false)
			options.ProjectileRange = fn61(50)
			options.CounterRange = fn61(15)
			options.CounterFacingThreshold = fn61(0.7)
			local v33 = TuningTab:AddLeftGroupbox("Block Timing & Hold", "sliders")

			v33:AddToggle("BlockForAnimation", {
				Text = "Block Full Animation",
				Default = false,
				Callback = function(arg)
					if arg and toggles.BlockForDuration then
						toggles.BlockForDuration:SetValue(false)
					end
				end,
			})

			v33:AddToggle("BlockForDuration", {
				Text = "Block Custom Duration",
				Default = false,
				Callback = function(arg)
					if arg and toggles.BlockForAnimation then
						toggles.BlockForAnimation:SetValue(false)
					end
				end,
			})

			v33:AddSlider("BlockDuration", { Text = "Custom Block Duration", Min = 0.1, Max = 3, Default = 0.5, Rounding = 2 })
			v33:AddSlider("MinBlockHold", { Text = "Min Block Hold", Min = 0.02, Max = 0.3, Default = 0.06, Rounding = 3 })
			v33:AddSlider("BlockCooldown", { Text = "Block Cooldown", Min = 0, Max = 0.5, Default = 0, Rounding = 3 })
			v33:AddSlider("ReleaseBuffer", { Text = "Release Buffer", Min = 0, Max = 0.3, Default = 0.05, Rounding = 3 })
			v33:AddSlider("ReactionMin", { Text = "Reaction Min (s)", Min = 0.001, Max = 0.1, Default = 0.005, Rounding = 3 })
			v33:AddSlider("ReactionMax", { Text = "Reaction Max (s)", Min = 0.005, Max = 0.2, Default = 0.025, Rounding = 3 })
			TuningFiltersGroup = TuningTab:AddRightGroupbox("Facing & Damage Filters", "eye")
			TuningFiltersGroup:AddToggle("FacingCheckEnabled", { Text = "Facing Check", Default = true })
			TuningFiltersGroup:AddSlider("FacingAngleThreshold", { Text = "Facing Sensitivity", Min = 0.1, Max = 1, Default = 0.6, Rounding = 2 })
			TuningFiltersGroup:AddSlider("DamageThreshold", { Text = "Damage Threshold", Min = 1, Max = 50, Default = 5, Rounding = 0 })
			TuningFiltersGroup:AddSlider("DamageReactionHold", { Text = "Damage Reaction Hold", Min = 0.1, Max = 1, Default = 0.4, Rounding = 2 })
			TuningTab:AddLeftGroupbox("Damage Numbers", "clock"):AddSlider("DamageTextSize", { Text = "Damage Text Size", Min = 20, Max = 100, Default = 75, Rounding = 0 })
			local v34 = TuningTab:AddRightGroupbox("Registry Info", "info")
			local v35 = TuningTab:AddLeftGroupbox("ESP Line Style", "sliders")
			v35:AddSlider("EspThickness", { Text = "Line Thickness (All ESP)", Min = 1, Max = 6, Default = 2, Rounding = 0 })
			v35:AddToggle("EspCS2Mode", { Text = "CS2 Legacy Style", Default = false })
			local v36 = v34:AddLabel("Registry Entries: 0")
			local v37 = v34:AddLabel("Dynamic Cache: 0")
			local v38 = v34:AddLabel("Long Range IDs: 0")

			spawn_(function()
				local tbl25 = {}

				local function fn62(arg, arg2, arg3)
					if tbl25[arg] ~= arg3 then
						tbl25[arg] = arg3
						arg2:SetText(arg3)
					end
				end

				while flag11 do
					wait_(2)
					local registryEntries = 0

					for k in v22(tbl18) do
						registryEntries += 1
					end

					fn62("RegistryCountLabel", v36, "Registry Entries: " .. registryEntries)
					local n30 = 0

					for k in v22(tbl14) do
						n30 += 1
					end

					fn62("DynamicCacheLabel", v37, "Dynamic Cache: " .. n30 .. " (H:" .. n24 .. " M:" .. n25 .. ")")
					local longRangeIDs = 0

					for k in v22(tbl19) do
						longRangeIDs += 1
					end

					fn62("LongRangeCountLabel", v38, "Long Range IDs: " .. longRangeIDs)
				end
			end)

			task.spawn(function()
				tbl11:Resolve()
				task.wait(1)
				fn58()
			end)

			task.spawn(fn53)
			task.spawn(fn59)
		end

		fn44()
		local v22 = LockOnTab:AddLeftGroupbox("OP Lock-On", "lock")

		v22:AddToggle("OPLockEnabled", {
			Text = "Enable OP Lock-On",
			Default = false,
			Callback = function(visible)
				imageButton.Visible = visible

				if not visible then
					fn28()
				end
			end,
		}):AddKeyPicker("OPLockKeybind", {
			Default = "T",
			SyncToggleState = true,
			Mode = "Toggle",
			Text = "OP Lock-On Keybind",
			NoUI = false,
		})

		v22:AddLabel("Press T or tap button to lock/unlock")
		local Aimlock = LockOnTab:AddRightGroupbox("Aimlock", "crosshair")

		Aimlock:AddToggle("AimlockEnabled", {
			Text = "Enable Aimlock",
			Default = false,
			Callback = function()
			end,
		}):AddKeyPicker("AimlockToggleKeybind", {
			Default = "None",
			SyncToggleState = true,
			Mode = "Toggle",
			Text = "Aimlock Toggle Keybind",
			NoUI = false,
		})

		Aimlock:AddDropdown("AimlockMode", {
			Values = { "Camera + Character", "Camera", "Character", "Blatant (Cam + Body)" },
			Default = "Camera + Character",
			Multi = false,
			Text = "Aimlock Mode",
			Callback = function()
			end,
		})

		Aimlock:AddSlider("AimlockRange", {
			Text = "Aimlock Range (studs)",
			Min = 10,
			Max = 200,
			Default = 80,
			Rounding = 1,
			Callback = function()
			end,
		})

		Aimlock:AddToggle("AimlockMobileButton", {
			Text = "Aimlock Mobile Button",
			Default = false,
			Callback = function(arg)
				if arg then
					fn23("LockOn", "rbxassetid://11738355467", function()
						toggles.AimlockEnabled:SetValue(not toggles.AimlockEnabled.Value)
					end)
				else
					fn24("LockOn")
				end
			end,
		})

		Aimlock:AddLabel("Aimlock Bind"):AddKeyPicker("AimlockKeybind", { NoUI = false, Default = "Q", Text = "Aimlock keybind" })

		local connection3 = UserInputService.InputBegan:Connect(function(input, gameProcessed)
			if gameProcessed then
				return
			end

			if options.AimlockKeybind and input.KeyCode == options.AimlockKeybind.Value then
				toggles.AimlockEnabled:SetValue(not toggles.AimlockEnabled.Value)
			end
		end)

		table.insert(tbl9, connection3)
		local v23 = MainTab:AddRightGroupbox("Auto Counter", "sword")

		v23:AddToggle("AutoYutaCounter", { Text = "Enable Auto Counter", Default = false }):AddKeyPicker("AutoYutaCounterKeybind", {
			Default = "None",
			SyncToggleState = true,
			Mode = "Toggle",
			Text = "Yuta Auto Counter Keybind",
			NoUI = false,
		})

		v23:AddToggle("YutaInstantMode", { Text = "Instant Mode (Lvl 1)", Default = false })
		v23:AddToggle("YutaFacingCheck", { Text = "Facing Check", Default = true })
		v23:AddSlider("YutaFacingThreshold", { Text = "Facing Sensitivity", Min = 0.1, Max = 1, Default = 0.6, Rounding = 2 })
		local v24 = VisualTab:AddLeftGroupbox("Player ESP", "user")

		v24:AddToggle("BoxEspEnabled", {
			Text = "Enable Full Box",
			Default = false,
			Callback = function(arg)
				if arg and toggles.CornerEspEnabled then
					toggles.CornerEspEnabled:SetValue(false)
				end
			end,
		}):AddKeyPicker("BoxEspKeybind", {
			Default = "None",
			SyncToggleState = true,
			Mode = "Toggle",
			Text = "Box ESP Keybind",
			NoUI = false,
		}):AddColorPicker("BoxEspColor", {
			Default = Color3.fromRGB(0, 200, 255),
			Callback = function(arg)
				fn31("Box", arg)
			end,
		})

		v24:AddToggle("BoxFillEnabled", { Text = "Enable Glass Box Fill", Default = true })
		v24:AddSlider("BoxFillTransparency", { Text = "Glass Transparency", Min = 0.1, Max = 0.95, Default = 0.75, Rounding = 2 })

		v24:AddToggle("CornerEspEnabled", {
			Text = "Enable Corners",
			Default = false,
			Callback = function(arg)
				if arg and toggles.BoxEspEnabled then
					toggles.BoxEspEnabled:SetValue(false)
				end
			end,
		}):AddColorPicker("CornerEspColor", {
			Default = Color3.fromRGB(255, 50, 150),
			Callback = function(arg)
				fn31("Corner", arg)
			end,
		})

		v24:AddToggle("SkeletonEspEnabled", { Text = "Enable Skeleton", Default = false }):AddColorPicker("SkeletonEspColor", {
			Default = Color3.fromRGB(255, 50, 150),
			Callback = function(arg)
				fn31("Skeleton", arg)
			end,
		})

		v24:AddToggle("NameEspEnabled", { Text = "Enable Names", Default = false }):AddColorPicker("NameEspColor", {
			Default = Color3.fromRGB(0, 200, 255),
			Callback = function(arg)
				fn31("Name", arg)
			end,
		})

		v24:AddSlider("NameTextSize", { Text = "Text Size", Min = 10, Max = 20, Default = 13, Rounding = 0 })
		v24:AddToggle("DummyEspEnabled", { Text = "Track Dummies", Default = false })
		v24:AddToggle("CooldownEspEnabled", { Text = "Enable Cooldowns", Default = false })
		v24:AddToggle("VisualizeDamageEnabled", { Text = "Visualize Damage", Default = false }):AddColorPicker("DamageColor", { Default = Color3.fromRGB(255, 50, 150) })
		v24:AddToggle("DamageGradientEnabled", { Text = "Damage Gradient", Default = true })
		v24:AddToggle("DummyChamsEnabled", { Text = "Dummy Chams", Default = false }):AddColorPicker("DummyChamsColor", { Default = Color3.fromRGB(255, 50, 150) })
		v24:AddToggle("LockedEspColorEnabled", { Text = "Locked Target ESP Color", Default = false }):AddColorPicker("LockedEspColor", { Default = Color3.fromRGB(255, 30, 80) })
		local v25 = VisualTab:AddLeftGroupbox("ESP Presets", "sparkles")

		v25:AddButton("Low Chilling", function()
			pcall(function()
				toggles.BoxEspEnabled:SetValue(false)
			end)

			pcall(function()
				toggles.CornerEspEnabled:SetValue(true)
			end)

			pcall(function()
				toggles.SkeletonEspEnabled:SetValue(false)
			end)

			pcall(function()
				toggles.NameEspEnabled:SetValue(true)
			end)

			pcall(function()
				toggles.DummyEspEnabled:SetValue(false)
			end)

			pcall(function()
				toggles.CooldownEspEnabled:SetValue(false)
			end)

			pcall(function()
				toggles.VisualizeDamageEnabled:SetValue(false)
			end)

			pcall(function()
				toggles.DummyChamsEnabled:SetValue(false)
			end)

			pcall(function()
				toggles.LockedEspColorEnabled:SetValue(false)
			end)

			pcall(function()
				toggles.TracerEnabled:SetValue(false)
			end)

			pcall(function()
				toggles.ItemEspEnabled:SetValue(false)
			end)

			pcall(function()
				toggles.ItemTracerEnabled:SetValue(false)
			end)

			lib:Notify({ Title = "ESP Presets", Description = "Low Chilling applied", Time = 2 })
		end)

		v25:AddButton("Mid Chilling", function()
			pcall(function()
				toggles.BoxEspEnabled:SetValue(true)
			end)

			pcall(function()
				toggles.CornerEspEnabled:SetValue(false)
			end)

			pcall(function()
				toggles.SkeletonEspEnabled:SetValue(false)
			end)

			pcall(function()
				toggles.NameEspEnabled:SetValue(true)
			end)

			pcall(function()
				toggles.DummyEspEnabled:SetValue(true)
			end)

			pcall(function()
				toggles.CooldownEspEnabled:SetValue(true)
			end)

			pcall(function()
				toggles.VisualizeDamageEnabled:SetValue(false)
			end)

			pcall(function()
				toggles.DummyChamsEnabled:SetValue(true)
			end)

			pcall(function()
				toggles.LockedEspColorEnabled:SetValue(true)
			end)

			pcall(function()
				toggles.TracerEnabled:SetValue(true)
			end)

			pcall(function()
				toggles.ItemEspEnabled:SetValue(false)
			end)

			pcall(function()
				toggles.ItemTracerEnabled:SetValue(false)
			end)

			lib:Notify({ Title = "ESP Presets", Description = "Mid Chilling applied", Time = 2 })
		end)

		v25:AddButton("Bing Chilling", function()
			pcall(function()
				toggles.BoxEspEnabled:SetValue(true)
			end)

			pcall(function()
				toggles.CornerEspEnabled:SetValue(false)
			end)

			pcall(function()
				toggles.SkeletonEspEnabled:SetValue(true)
			end)

			pcall(function()
				toggles.NameEspEnabled:SetValue(true)
			end)

			pcall(function()
				toggles.DummyEspEnabled:SetValue(true)
			end)

			pcall(function()
				toggles.CooldownEspEnabled:SetValue(true)
			end)

			pcall(function()
				toggles.VisualizeDamageEnabled:SetValue(true)
			end)

			pcall(function()
				toggles.DummyChamsEnabled:SetValue(true)
			end)

			pcall(function()
				toggles.LockedEspColorEnabled:SetValue(true)
			end)

			pcall(function()
				toggles.TracerEnabled:SetValue(true)
			end)

			pcall(function()
				toggles.ItemEspEnabled:SetValue(true)
			end)

			pcall(function()
				toggles.ItemTracerEnabled:SetValue(true)
			end)

			lib:Notify({ Title = "ESP Presets", Description = "Bing Chilling applied", Time = 2 })
		end)

		do
			local tbl17 = {
				["Neon Blue"] = Color3.fromRGB(0, 200, 255),
				["Crimson Velvet"] = Color3.fromRGB(255, 30, 80),
				["Lime Neon"] = Color3.fromRGB(100, 255, 100),
				["Sunset Gold"] = Color3.fromRGB(255, 150, 0),
				["Purple Orchid"] = Color3.fromRGB(200, 50, 255),
				["Cyberpunk Mint"] = Color3.fromRGB(0, 255, 200),
			}

			local v26 = ThemeTab:AddRightGroupbox("ESP Themes", "palette")

			v26:AddDropdown("EspTheme", {
				Values = {
					"Neon Blue",
					"Crimson Velvet",
					"Lime Neon",
					"Sunset Gold",
					"Purple Orchid",
					"Cyberpunk Mint",
				},
				Default = "Neon Blue",
				Multi = false,
				Text = "Preset",
				Callback = function(arg)
					local v27 = tbl17[arg]

					if v27 then
						pcall(function()
							options.BoxEspColor:SetValueRGB(v27)
						end)

						pcall(function()
							options.CornerEspColor:SetValueRGB(v27)
						end)

						pcall(function()
							options.SkeletonEspColor:SetValueRGB(v27)
						end)

						pcall(function()
							options.NameEspColor:SetValueRGB(v27)
						end)

						pcall(function()
							options.TracerColor:SetValueRGB(v27)
						end)

						pcall(function()
							options.ItemEspColor:SetValueRGB(v27)
						end)

						pcall(function()
							options.ItemTracerColor:SetValueRGB(v27)
						end)

						pcall(function()
							options.DamageColor:SetValueRGB(v27)
						end)

						pcall(function()
							options.DummyChamsColor:SetValueRGB(v27)
						end)
					end
				end,
			})

			v26:AddSlider("GradientHueShift", {
				Text = "Hue Shift",
				Min = -0.5,
				Max = 0.5,
				Default = 0.08,
				Rounding = 2,
				Callback = function()
					pcall(fn32)
				end,
			})

			v26:AddSlider("GradientSatShift", {
				Text = "Saturation",
				Min = 0,
				Max = 2,
				Default = 1,
				Rounding = 2,
				Callback = function()
					pcall(fn32)
				end,
			})

			v26:AddSlider("GradientValueShift", {
				Text = "Brightness",
				Min = 0,
				Max = 1,
				Default = 0.4,
				Rounding = 2,
				Callback = function()
					pcall(fn32)
				end,
			})
		end

		local v26 = VisualTab:AddRightGroupbox("Head Tracers", "point")

		v26:AddToggle("TracerEnabled", { Text = "Enable Tracers", Default = false }):AddColorPicker("TracerColor", {
			Default = Color3.fromRGB(0, 200, 255),
			Callback = function(arg)
				fn31("Tracer", arg)
			end,
		})

		v26:AddSlider("TracerThickness", { Text = "Thickness", Min = 1, Max = 4, Default = 2, Rounding = 0 })
		local v27 = VisualTab:AddRightGroupbox("Item ESP", "box")

		v27:AddToggle("ItemEspEnabled", { Text = "Item Esp", Default = false }):AddColorPicker("ItemEspColor", {
			Default = Color3.fromRGB(0, 200, 255),
			Callback = function(arg)
				fn31("ItemEsp", arg)
			end,
		})

		v27:AddToggle("ItemTracerEnabled", { Text = "Item Tracer", Default = false }):AddColorPicker("ItemTracerColor", {
			Default = Color3.fromRGB(255, 50, 150),
			Callback = function(arg)
				fn31("ItemTracer", arg)
			end,
		})

		do
			local v28 = nil
			local connection4 = nil
			local connection5 = nil

			local function fn45()
				if connection4 then
					connection4:Disconnect()
					connection4 = nil
				end

				if connection5 then
					connection5:Disconnect()
					connection5 = nil
				end

				if v28 then
					pcall(function()
						v28:Destroy()
					end)

					v28 = nil
				end

				local higurumaVoteViewerGui = v15:FindFirstChild("HigurumaVoteViewerGui") or LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("HigurumaVoteViewerGui")

				if higurumaVoteViewerGui then
					pcall(function()
						higurumaVoteViewerGui:Destroy()
					end)
				end
			end

			local function fn46()
				fn45()
				local screenGui2 = Instance.new("ScreenGui")
				screenGui2.Name = "HigurumaVoteViewerGui"
				screenGui2.ResetOnSpawn = false

				if not pcall(function()
					screenGui2.Parent = v15
				end) then
					screenGui2.Parent = LocalPlayer:WaitForChild("PlayerGui")
				end

				v28 = screenGui2
				local frame2 = Instance.new("Frame")
				frame2.Name = "MainFrame"
				frame2.Size = UDim2.new(0, 250, 0, 44)
				frame2.Position = UDim2.new(0.5, -125, 0.1, 0)
				frame2.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
				frame2.BackgroundTransparency = 0.15
				frame2.BorderSizePixel = 0
				frame2.Active = true
				frame2.Draggable = true
				frame2.Parent = screenGui2
				local uiCorner = Instance.new("UICorner")
				uiCorner.CornerRadius = UDim.new(0, 6)
				uiCorner.Parent = frame2
				local uiStroke = Instance.new("UIStroke")
				uiStroke.Color = Color3.fromRGB(218, 165, 32)
				uiStroke.Thickness = 1.2
				uiStroke.Transparency = 0.3
				uiStroke.Parent = frame2
				local textLabel = Instance.new("TextLabel")
				textLabel.Size = UDim2.new(1, 0, 0.5, 0)
				textLabel.BackgroundTransparency = 1
				textLabel.Text = "COURT VOTES"
				textLabel.TextColor3 = Color3.fromRGB(218, 165, 32)
				textLabel.TextSize = 12
				textLabel.Font = Enum.Font.GothamBold
				textLabel.Parent = frame2
				local textLabel2 = Instance.new("TextLabel")
				textLabel2.Size = UDim2.new(1, 0, 0.5, 0)
				textLabel2.Position = UDim2.new(0, 0, 0.5, 0)
				textLabel2.BackgroundTransparency = 1
				textLabel2.Text = "Confess: 0  |  Denial: 0  |  Silence: 0"
				textLabel2.TextColor3 = Color3.fromRGB(240, 240, 245)
				textLabel2.TextSize = 11
				textLabel2.Font = Enum.Font.GothamMedium
				textLabel2.Parent = frame2

				local function fn47(arg)
					if not arg then
						textLabel2.Text = "Waiting for domain..."
						return
					end
					textLabel2.Text = string.format("Confess: %d  |  Denial: %d  |  Silence: %d", arg:GetAttribute("ConfessCount") or 0, arg:GetAttribute("DenialCount") or 0, arg:GetAttribute("SilenceCount") or 0)
				end

				local function fn48(arg)
					if connection5 then
						connection5:Disconnect()
						connection5 = nil
					end

					if arg then
						fn47(arg)

						connection5 = arg.AttributeChanged:Connect(function()
							fn47(arg)
						end)
					else
						fn47(nil)
					end
				end

				connection4 = RunService.Heartbeat:Connect(function(...) end)

				screenGui2.Destroying:Connect(function()
					if connection5 then
						connection5:Disconnect()
					end

					if connection4 then
						connection4:Disconnect()
					end
				end)
			end

			VisualTab:AddRightGroupbox("Court Vote Overlay", "scale"):AddToggle("HigurumaVoteViewer", {
				Text = "Court Vote Viewer",
				Default = false,
				Callback = function(arg)
					if arg then
						fn46()
					else
						fn45()
					end
				end,
			})
		end

		do
			local v28 = MovementTab:AddLeftGroupbox("Parkour & Mobility", "activity")
			local v29 = MovementTab:AddRightGroupbox("Speed & Physics", "zap")

			v28:AddToggle("InfiniteParkour", {
				Text = "Infinite Parkour",
				Default = false,
				Callback = function(arg)
					InfiniteParkourActive = arg
				end,
			}):AddKeyPicker("InfiniteParkourKeybind", {
				Default = "None",
				SyncToggleState = true,
				Mode = "Toggle",
				Text = "Infinite Parkour Keybind",
				NoUI = false,
			})

			v28:AddToggle("InfiniteDash", {
				Text = "Infinite Dash",
				Default = false,
				Callback = function(arg)
					InfiniteDashActive = arg

					pcall(function()
						local MovementController = require(game:GetService("ReplicatedStorage").Knit.Knit).GetController("MovementController")

						if MovementController then
							if not _G.OriginalDashRequest then
								_G.OriginalDashRequest = MovementController.DashRequest
							end

							if arg and dashRequest then
								MovementController.DashRequest = dashRequest
							elseif _G.OriginalDashRequest then
								MovementController.DashRequest = _G.OriginalDashRequest
							end
						end
					end)
				end,
			}):AddKeyPicker("InfiniteDashKeybind", {
				Default = "None",
				SyncToggleState = true,
				Mode = "Toggle",
				Text = "Infinite Dash Keybind",
				NoUI = false,
			})

			v28:AddToggle("AutoParkour", {
				Text = "Auto Parkour / Vault",
				Default = false,
				Callback = function(arg)
					AutoParkourActive = arg
				end,
			}):AddKeyPicker("AutoParkourKeybind", {
				Default = "None",
				SyncToggleState = true,
				Mode = "Toggle",
				Text = "Auto Parkour Keybind",
				NoUI = false,
			})

			v28:AddSlider("ParkourClimbSpeed", {
				Text = "Parkour Speed",
				Min = 20,
				Max = 100,
				Default = 40,
				Rounding = 0,
				Callback = function(arg)
					CLIMB_SPEED = arg
				end,
			})

			v28:AddSlider("ParkourWallDistance", {
				Text = "Wall Distance (studs)",
				Min = 1,
				Max = 10,
				Default = 3.5,
				Rounding = 1,
				Callback = function(arg)
					DETECTION_DISTANCE = arg
				end,
			})

			v28:AddToggle("AntiDomain", {
				Text = "Anti Domain",
				Default = false,
				Callback = function(arg)
					AntiDomainActive = arg
				end,
			}):AddKeyPicker("AntiDomainKeybind", {
				Default = "None",
				SyncToggleState = true,
				Mode = "Toggle",
				Text = "Anti Domain Keybind",
				NoUI = false,
			})

			v28:AddToggle("Noclip", {
				Text = "Noclip",
				Default = false,
				Callback = function(arg)
					NoclipActive = arg
				end,
			}):AddKeyPicker("NoclipKeybind", {
				Default = "None",
				SyncToggleState = true,
				Mode = "Toggle",
				Text = "Noclip Keybind",
				NoUI = false,
			})

			v28:AddToggle("WalkIntoDomains", {
				Text = "Walk Into Domains",
				Default = false,
				Callback = function(arg)
					WalkIntoDomainsActive = arg
				end,
			}):AddKeyPicker("WalkIntoDomainsKeybind", {
				Default = "None",
				SyncToggleState = true,
				Mode = "Toggle",
				Text = "Walk Into Domains Keybind",
				NoUI = false,
			})

			local tbl17 = {}
			local tbl18 = {}

			local function fn45()
				table.clear(tbl17)
				local character = LocalPlayer.Character

				if character then
					for _, descendant in ipairs(character:GetDescendants()) do
						if descendant:IsA("BasePart") then
							table.insert(tbl17, descendant)
						end
					end
				end
			end

			LocalPlayer.CharacterAdded:Connect(function()
				task.wait(0.5)
				fn45()
			end)

			if LocalPlayer.Character then
				fn45()
			end

			local function fn46()
				table.clear(tbl18)
				local tbl19 = {}
				local domains = workspace:FindFirstChild("Domains")
				local v30 = workspace
				local map = workspace:FindFirstChild("Map")
				local v31 = workspace
				local findFirstChild = v31.FindFirstChild
				tbl19[1] = domains
				tbl19[2] = v30
				tbl19[3] = map

				do
					local values = table.pack(findFirstChild(v31, "Effects"))
					table.move(values, 1, values.n, 4, tbl19)
				end

				for _, v32 in ipairs(tbl19) do
					if v32 then
						for _, child in ipairs(v32:GetChildren()) do
							local v33 = string_lower(child.Name)

							if string_find(v33, "domain") or string_find(v33, "shrine") or string_find(v33, "void") or string_find(v33, "barrier") then
								if child:IsA("BasePart") then
									table.insert(tbl18, child)
								end

								for _, descendant in ipairs(child:GetDescendants()) do
									if descendant:IsA("BasePart") then
										table.insert(tbl18, descendant)
									end
								end
							end
						end
					end
				end
			end

			table.insert(tbl9, RunService.Stepped:Connect(function(...) end))

			v29:AddSlider("WalkSpeedValue", {
				Text = "Walk Speed",
				Min = 16,
				Max = 200,
				Default = 50,
				Rounding = 0,
				Callback = function(walkSpeed)
					SpeedValue = walkSpeed

					if SpeedEnabled then
						local character = LocalPlayer.Character

						if character then
							local humanoid2 = character:FindFirstChildOfClass("Humanoid")

							if humanoid2 then
								humanoid2.WalkSpeed = walkSpeed
							end
						end
					end
				end,
			})

			v29:AddToggle("EnableSpeed", {
				Text = "Enable Speed",
				Default = false,
				Callback = function(arg)
					SpeedEnabled = arg
					local character = LocalPlayer.Character

					if character then
						local humanoid2 = character:FindFirstChildOfClass("Humanoid")

						if humanoid2 then
							if arg then
								humanoid2.WalkSpeed = SpeedValue
							else
								humanoid2.WalkSpeed = 50
							end
						end
					end
				end,
			}):AddKeyPicker("SpeedKeybind", {
				Default = "None",
				SyncToggleState = true,
				Mode = "Toggle",
				Text = "Speed Keybind",
				NoUI = false,
			})

			v29:AddToggle("NoStun", {
				Text = "No Stun [ Legit ]",
				Default = false,
				Callback = function(arg)
					NoStunActive = arg
				end,
			}):AddKeyPicker("NoStunKeybind", {
				Default = "None",
				SyncToggleState = true,
				Mode = "Toggle",
				Text = "No Stun Keybind",
				NoUI = false,
			})

			v29:AddToggle("NoRagdollLegit", {
				Text = "No Ragdoll [ Legit ]",
				Default = false,
				Callback = function(arg)
					NoRagdollActive = arg

					if arg then
						local character = LocalPlayer.Character

						if character then
							local humanoid2 = character:FindFirstChildOfClass("Humanoid")

							if humanoid2 then
								pcall(function()
									humanoid2:ChangeState(Enum.HumanoidStateType.GettingUp)
								end)

								humanoid2:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
								humanoid2:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
							end
						end
					end
				end,
			}):AddKeyPicker("NoRagdollKeybind", {
				Default = "None",
				SyncToggleState = true,
				Mode = "Toggle",
				Text = "No Ragdoll Keybind",
				NoUI = false,
			})
		end

		do
			local v28 = KillAllTab:AddRightGroupbox("Anti-Cheat Bypass", "shield")
			local v29 = v28:AddLabel("Status: <font color=\"#ff4444\">NOT BYPASSED</font>")

			_G.updateBypassStatusText = function()
				if v29 and v29.SetText then
					if _G.AC_BYPASSED then
						v29:SetText("Status: <font color=\"#30ff80\">BYPASSED</font>")
					else
						v29:SetText("Status: <font color=\"#ff4444\">NOT BYPASSED</font>")
					end
				end
			end

			v28:AddButton({
				Text = "View Bypass Log",
				Func = function()
					lib:Notify({
						Title = "Bypass Log",
						Description = _G.AC_BYPASSED and "Status: Bypassed" or "Status: Not Bypassed",
						Time = 3,
					})
				end,
			})

			v28:AddButton({
				Text = "Reset Character (Bypass Helper)",
				Func = function()
					pcall(function()
						game:GetService("ReplicatedStorage").Knit.Knit.Services.JoinService.RE.Reset:FireServer()
					end)
				end,
			})

			v28:AddToggle("ACBypassEnabled", {
				Text = "AC Bypass",
				Default = false,
				Callback = function(arg)
					if arg then
						task.spawn(function()
							local Players_ = game:GetService("Players")
							local UserInputService_ = game:GetService("UserInputService")
							local TweenService_ = game:GetService("TweenService")
							local ReplicatedStorage_ = game:GetService("ReplicatedStorage")
							local localPlayer = Players_.LocalPlayer
							local reset = nil

							pcall(function()
								reset = ReplicatedStorage_.Knit.Knit.Services.JoinService.RE.Reset
							end)

							local tbl17 = {
								DeepSpace = Color3.fromRGB(6, 10, 28),
								CosmicBlue = Color3.fromRGB(10, 20, 48),
								NebulaBlue = Color3.fromRGB(16, 32, 72),
								Starlight = Color3.fromRGB(150, 190, 255),
								InfinityBlue = Color3.fromRGB(0, 130, 255),
								BrightBlue = Color3.fromRGB(60, 150, 255),
								DeepGlow = Color3.fromRGB(20, 60, 150),
								White = Color3.fromRGB(240, 248, 255),
								TextBlue = Color3.fromRGB(130, 170, 230),
								SubText = Color3.fromRGB(90, 110, 155),
								CardBg = Color3.fromRGB(12, 22, 48),
								CardStroke = Color3.fromRGB(28, 55, 110),
								ToggleOff = Color3.fromRGB(20, 28, 52),
								ToggleOn = Color3.fromRGB(0, 110, 230),
								KnobOff = Color3.fromRGB(95, 115, 155),
								KnobOn = Color3.fromRGB(240, 248, 255),
								Green = Color3.fromRGB(30, 255, 130),
								Red = Color3.fromRGB(255, 70, 90),
								Orange = Color3.fromRGB(255, 170, 50),
								CloseRed = Color3.fromRGB(200, 40, 50),
								CloseHover = Color3.fromRGB(235, 55, 65),
							}

							local luckiestGuy = Enum.Font.LuckiestGuy
							local fredokaOne = Enum.Font.FredokaOne
							local screenGui2 = Instance.new("ScreenGui")
							screenGui2.Name = "ElopezACBypass"
							screenGui2.ResetOnSpawn = false
							screenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
							screenGui2.IgnoreGuiInset = true

							pcall(function()
								screenGui2.Parent = game:GetService("CoreGui")
							end)

							if not screenGui2.Parent then
								screenGui2.Parent = localPlayer:WaitForChild("PlayerGui")
							end

							local canvasGroup = Instance.new("CanvasGroup")
							canvasGroup.Name = "Entrance"
							canvasGroup.Size = UDim2.new(0, 348, 0, 275)
							canvasGroup.Position = UDim2.new(0.5, -174, 0.5, -137)
							canvasGroup.BackgroundTransparency = 1
							canvasGroup.GroupTransparency = 1
							canvasGroup.Parent = screenGui2
							local frame2 = Instance.new("Frame")
							frame2.Size = UDim2.new(0, 334, 0, 259)
							frame2.Position = UDim2.new(0, 7, 0, 8)
							frame2.BackgroundColor3 = Color3.fromRGB(0, 40, 120)
							frame2.BackgroundTransparency = 0.95
							frame2.BorderSizePixel = 0
							frame2.Parent = canvasGroup
							local uiCorner = Instance.new("UICorner")
							uiCorner.CornerRadius = UDim.new(0, 20)
							uiCorner.Parent = frame2
							local uiStroke = Instance.new("UIStroke")
							uiStroke.Color = Color3.fromRGB(0, 70, 160)
							uiStroke.Thickness = 8
							uiStroke.Transparency = 0.85
							uiStroke.Parent = frame2
							local frame3 = Instance.new("Frame")
							frame3.Size = UDim2.new(0, 322, 0, 247)
							frame3.Position = UDim2.new(0, 13, 0, 14)
							frame3.BackgroundColor3 = Color3.fromRGB(0, 55, 140)
							frame3.BackgroundTransparency = 0.92
							frame3.BorderSizePixel = 0
							frame3.Parent = canvasGroup
							local uiCorner2 = Instance.new("UICorner")
							uiCorner2.CornerRadius = UDim.new(0, 15)
							uiCorner2.Parent = frame3
							local uiStroke2 = Instance.new("UIStroke")
							uiStroke2.Color = Color3.fromRGB(0, 100, 200)
							uiStroke2.Thickness = 4
							uiStroke2.Transparency = 0.7
							uiStroke2.Parent = frame3
							local frame4 = Instance.new("Frame")
							frame4.Size = UDim2.new(0, 310, 0, 235)
							frame4.Position = UDim2.new(0, 19, 0, 20)
							frame4.BackgroundColor3 = tbl17.DeepSpace
							frame4.BorderSizePixel = 0
							frame4.Parent = canvasGroup
							local uiCorner3 = Instance.new("UICorner")
							uiCorner3.CornerRadius = UDim.new(0, 11)
							uiCorner3.Parent = frame4
							local uiGradient = Instance.new("UIGradient")
							local colorSequence = ColorSequence.new
							local tbl18 = {}
							local v30 = ColorSequenceKeypoint.new(0, Color3.fromRGB(8, 14, 38))
							local v31 = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(12, 24, 56))
							local new = ColorSequenceKeypoint.new
							local color = Color3.fromRGB
							tbl18[1] = v30
							tbl18[2] = v31

							do
								local values = table.pack(new(1, color(6, 16, 42)))
								table.move(values, 1, values.n, 3, tbl18)
							end

							uiGradient.Color = colorSequence(tbl18)
							uiGradient.Rotation = 0
							uiGradient.Parent = frame4
							local uiStroke3 = Instance.new("UIStroke")
							uiStroke3.Color = tbl17.BrightBlue
							uiStroke3.Thickness = 1.5
							uiStroke3.Transparency = 0.3
							uiStroke3.Parent = frame4
							local tbl19 = {}

							for i, v32 in ipairs({
								{ x = 24, y = 6, size = 2, phase = 0 },
								{ x = 210, y = 8, size = 2, phase = 0.4 },
								{ x = 285, y = 18, size = 2, phase = 0.8 },
								{ x = 8, y = 64, size = 2, phase = 0.2 },
								{ x = 300, y = 125, size = 2, phase = 0.6 },
								{ x = 6, y = 188, size = 2, phase = 0.5 },
								{ x = 298, y = 200, size = 2, phase = 0.1 },
							}) do
								local frame5 = Instance.new("Frame")
								frame5.Size = UDim2.new(0, v32.size, 0, v32.size)
								frame5.Position = UDim2.new(0, v32.x, 0, v32.y)
								frame5.BackgroundColor3 = tbl17.Starlight
								frame5.BackgroundTransparency = 0.6
								frame5.BorderSizePixel = 0
								frame5.Parent = frame4
								local uiCorner4 = Instance.new("UICorner")
								uiCorner4.CornerRadius = UDim.new(1, 0)
								uiCorner4.Parent = frame5
								tbl19[i] = { frame = frame5, phase = v32.phase }
							end

							task.spawn(function()
								while screenGui2.Parent do
									for _, v32 in ipairs(tbl19) do
										local phase = v32.phase
										v32.frame.BackgroundTransparency = 0.35 + (math.sin((os.clock() + phase) * 1.5) + 1) / 2 * 0.5
									end

									task.wait(0.1)
								end
							end)

							local frame5 = Instance.new("Frame")
							frame5.Size = UDim2.new(1, 0, 0, 50)
							frame5.BackgroundColor3 = tbl17.NebulaBlue
							frame5.BorderSizePixel = 0
							frame5.Parent = frame4
							local uiCorner4 = Instance.new("UICorner")
							uiCorner4.CornerRadius = UDim.new(0, 11)
							uiCorner4.Parent = frame5
							local frame6 = Instance.new("Frame")
							frame6.Size = UDim2.new(1, 0, 0, 14)
							frame6.Position = UDim2.new(0, 0, 1, -14)
							frame6.BackgroundColor3 = tbl17.NebulaBlue
							frame6.BorderSizePixel = 0
							frame6.Parent = frame5
							local uiGradient2 = Instance.new("UIGradient")
							local new2 = ColorSequenceKeypoint.new
							local color2 = Color3.fromRGB
							uiGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(14, 28, 65)), new2(1, color2(24, 50, 110)) })
							uiGradient2.Rotation = 90
							uiGradient2.Parent = frame5
							local textLabel = Instance.new("TextLabel")
							textLabel.Size = UDim2.new(0, 20, 0, 16)
							textLabel.Position = UDim2.new(0, 14, 0, 4)
							textLabel.BackgroundTransparency = 1
							textLabel.Text = "INF"
							textLabel.TextColor3 = tbl17.BrightBlue
							textLabel.Font = luckiestGuy
							textLabel.TextSize = 14
							textLabel.TextXAlignment = Enum.TextXAlignment.Left
							textLabel.Parent = frame5
							local textLabel2 = Instance.new("TextLabel")
							textLabel2.Size = UDim2.new(1, -60, 0, 16)
							textLabel2.Position = UDim2.new(0, 14, 0, 20)
							textLabel2.BackgroundTransparency = 1
							textLabel2.Text = "AC Bypass"
							textLabel2.TextColor3 = tbl17.White
							textLabel2.Font = luckiestGuy
							textLabel2.TextSize = 15
							textLabel2.TextXAlignment = Enum.TextXAlignment.Left
							textLabel2.Parent = frame5
							local textLabel3 = Instance.new("TextLabel")
							textLabel3.Size = UDim2.new(1, -60, 0, 12)
							textLabel3.Position = UDim2.new(0, 14, 0, 36)
							textLabel3.BackgroundTransparency = 1
							textLabel3.Text = "Hollow Protocol"
							textLabel3.TextColor3 = tbl17.TextBlue
							textLabel3.Font = fredokaOne
							textLabel3.TextSize = 9
							textLabel3.TextXAlignment = Enum.TextXAlignment.Left
							textLabel3.Parent = frame5
							local textButton = Instance.new("TextButton")
							textButton.Size = UDim2.new(0, 24, 0, 24)
							textButton.Position = UDim2.new(1, -33, 0, 13)
							textButton.BackgroundColor3 = tbl17.CloseRed
							textButton.BackgroundTransparency = 0.1
							textButton.Text = "X"
							textButton.TextColor3 = tbl17.White
							textButton.Font = Enum.Font.GothamBold
							textButton.TextSize = 14
							textButton.AutoButtonColor = false
							textButton.Parent = frame5
							local uiCorner5 = Instance.new("UICorner")
							uiCorner5.CornerRadius = UDim.new(0, 6)
							uiCorner5.Parent = textButton
							local uiStroke4 = Instance.new("UIStroke")
							uiStroke4.Color = tbl17.CloseRed
							uiStroke4.Thickness = 1
							uiStroke4.Transparency = 0.5
							uiStroke4.Parent = textButton

							textButton.MouseEnter:Connect(function()
								local tbl20 = { BackgroundColor3 = tbl17.CloseHover, BackgroundTransparency = 0 }
								TweenService_:Create(textButton, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), tbl20):Play()
								TweenService_:Create(uiStroke4, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Transparency = 0.2 }):Play()
							end)

							textButton.MouseLeave:Connect(function()
								local tbl20 = { BackgroundColor3 = tbl17.CloseRed, BackgroundTransparency = 0.1 }
								TweenService_:Create(textButton, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), tbl20):Play()
								TweenService_:Create(uiStroke4, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Transparency = 0.5 }):Play()
							end)

							textButton.MouseButton1Click:Connect(function()
								local tween = TweenService_:Create(canvasGroup, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.In), { GroupTransparency = 1, Position = canvasGroup.Position + UDim2.new(0, 0, 0, 10) })
								tween:Play()

								tween.Completed:Connect(function()
									screenGui2:Destroy()
									toggles.ACBypassEnabled:SetValue(false)
								end)
							end)

							local frame7 = Instance.new("Frame")
							frame7.Size = UDim2.new(1, -28, 0, 1)
							frame7.Position = UDim2.new(0, 14, 0, 54)
							frame7.BackgroundColor3 = tbl17.BrightBlue
							frame7.BackgroundTransparency = 0.5
							frame7.BorderSizePixel = 0
							frame7.Parent = frame4
							local uiGradient3 = Instance.new("UIGradient")
							local colorSequence2 = ColorSequence.new
							local tbl20 = {}
							local v32 = ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 150, 255))
							local v33 = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(100, 180, 255))
							local new3 = ColorSequenceKeypoint.new
							local color3 = Color3.fromRGB
							tbl20[1] = v32
							tbl20[2] = v33

							do
								local values = table.pack(new3(1, color3(60, 150, 255)))
								table.move(values, 1, values.n, 3, tbl20)
							end

							uiGradient3.Color = colorSequence2(tbl20)
							local numberSequence = NumberSequence.new
							local tbl21 = {}
							local v34 = NumberSequenceKeypoint.new(0, 1)
							local v35 = NumberSequenceKeypoint.new(0.2, 0.4)
							local v36 = NumberSequenceKeypoint.new(0.8, 0.4)
							local new4 = NumberSequenceKeypoint.new
							tbl21[1] = v34
							tbl21[2] = v35
							tbl21[3] = v36

							do
								local values = table.pack(new4(1, 1))
								table.move(values, 1, values.n, 4, tbl21)
							end

							uiGradient3.Transparency = numberSequence(tbl21)
							uiGradient3.Parent = frame7
							local flag13 = false
							local v37 = nil
							local position = nil
							local position2 = nil

							frame5.InputBegan:Connect(function(input)
								if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
									flag13 = true
									position = input.Position
									position2 = canvasGroup.Position

									input.Changed:Connect(function()
										if input.UserInputState == Enum.UserInputState.End then
											flag13 = false
										end
									end)
								end
							end)

							frame5.InputChanged:Connect(function(input)
								if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
									v37 = input
								end
							end)

							UserInputService_.InputChanged:Connect(function(input)
								if input == v37 and flag13 then
									local n27 = input.Position - position
									canvasGroup.Position = UDim2.new(position2.X.Scale, position2.X.Offset + n27.X, position2.Y.Scale, position2.Y.Offset + n27.Y)
								end
							end)

							local function fn45(text, text2, arg2, parent, arg3)
								local frame8 = Instance.new("Frame")
								frame8.Size = UDim2.new(1, -28, 0, 52)
								frame8.Position = UDim2.new(0, 14, 0, arg2)
								frame8.BackgroundColor3 = tbl17.CardBg
								frame8.BackgroundTransparency = 0.35
								frame8.BorderSizePixel = 0
								frame8.Parent = parent
								local uiCorner6 = Instance.new("UICorner")
								uiCorner6.CornerRadius = UDim.new(0, 9)
								uiCorner6.Parent = frame8
								local uiStroke5 = Instance.new("UIStroke")
								uiStroke5.Color = tbl17.CardStroke
								uiStroke5.Thickness = 1
								uiStroke5.Transparency = 0.4
								uiStroke5.Parent = frame8

								frame8.MouseEnter:Connect(function()
									TweenService_:Create(frame8, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 0.2 }):Play()
									local tbl22 = { Transparency = 0.25, Color = tbl17.BrightBlue }
									TweenService_:Create(uiStroke5, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), tbl22):Play()
								end)

								frame8.MouseLeave:Connect(function()
									TweenService_:Create(frame8, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundTransparency = 0.35 }):Play()
									local tbl22 = { Transparency = 0.4, Color = tbl17.CardStroke }
									TweenService_:Create(uiStroke5, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), tbl22):Play()
								end)

								local textLabel4 = Instance.new("TextLabel")
								textLabel4.Size = UDim2.new(1, -72, 0, 18)
								textLabel4.Position = UDim2.new(0, 14, 0, 9)
								textLabel4.BackgroundTransparency = 1
								textLabel4.Text = text
								textLabel4.TextColor3 = tbl17.White
								textLabel4.Font = fredokaOne
								textLabel4.TextSize = 13
								textLabel4.TextXAlignment = Enum.TextXAlignment.Left
								textLabel4.Parent = frame8
								local textLabel5 = Instance.new("TextLabel")
								textLabel5.Size = UDim2.new(1, -72, 0, 14)
								textLabel5.Position = UDim2.new(0, 14, 0, 29)
								textLabel5.BackgroundTransparency = 1
								textLabel5.Text = text2
								textLabel5.TextColor3 = tbl17.SubText
								textLabel5.Font = fredokaOne
								textLabel5.TextSize = 9
								textLabel5.TextXAlignment = Enum.TextXAlignment.Left
								textLabel5.Parent = frame8
								local textButton2 = Instance.new("TextButton")
								textButton2.Size = UDim2.new(0, 50, 0, 26)
								textButton2.Position = UDim2.new(1, -64, 0.5, -13)
								textButton2.BackgroundColor3 = tbl17.ToggleOff
								textButton2.BackgroundTransparency = 0.05
								textButton2.Text = ""
								textButton2.AutoButtonColor = false
								textButton2.Parent = frame8
								local uiCorner7 = Instance.new("UICorner")
								uiCorner7.CornerRadius = UDim.new(1, 0)
								uiCorner7.Parent = textButton2
								local uiStroke6 = Instance.new("UIStroke")
								uiStroke6.Color = tbl17.BrightBlue
								uiStroke6.Thickness = 1.5
								uiStroke6.Transparency = 1
								uiStroke6.Parent = textButton2
								local frame9 = Instance.new("Frame")
								frame9.Size = UDim2.new(0, 18, 0, 18)
								frame9.Position = UDim2.new(0, 4, 0.5, -9)
								frame9.BackgroundColor3 = tbl17.KnobOff
								frame9.BorderSizePixel = 0
								frame9.Parent = textButton2
								local uiCorner8 = Instance.new("UICorner")
								uiCorner8.CornerRadius = UDim.new(1, 0)
								uiCorner8.Parent = frame9
								local uiStroke7 = Instance.new("UIStroke")
								uiStroke7.Color = Color3.fromRGB(50, 70, 110)
								uiStroke7.Thickness = 1
								uiStroke7.Transparency = 0.3
								uiStroke7.Parent = frame9
								local flag14 = false
								local flag15 = false

								local function fn46()
									local tweenInfo = TweenInfo.new(0.28, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
									local tweenInfo2 = TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)

									if flag14 then
										TweenService_:Create(textButton2, tweenInfo2, { BackgroundColor3 = tbl17.ToggleOn, BackgroundTransparency = 0 }):Play()
										TweenService_:Create(frame9, tweenInfo, { Position = UDim2.new(1, -22, 0.5, -9), BackgroundColor3 = tbl17.KnobOn }):Play()
										TweenService_:Create(uiStroke7, tweenInfo2, { Color = tbl17.BrightBlue, Transparency = 0.5 }):Play()
										TweenService_:Create(uiStroke6, tweenInfo2, { Transparency = 0.3 }):Play()
										flag15 = true

										task.spawn(function()
											while true do
												if flag15 and flag14 then
													TweenService_:Create(uiStroke6, TweenInfo.new(0.9, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Transparency = 0.65 }):Play()
													task.wait(0.9)

													if flag15 and flag14 then
														TweenService_:Create(uiStroke6, TweenInfo.new(0.9, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Transparency = 0.15 }):Play()
														task.wait(0.9)
														continue
													end
												end

												break
											end
										end)
									else
										flag15 = false
										TweenService_:Create(textButton2, tweenInfo2, { BackgroundColor3 = tbl17.ToggleOff, BackgroundTransparency = 0.05 }):Play()
										TweenService_:Create(frame9, tweenInfo, { Position = UDim2.new(0, 4, 0.5, -9), BackgroundColor3 = tbl17.KnobOff }):Play()
										TweenService_:Create(uiStroke7, tweenInfo2, { Color = Color3.fromRGB(50, 70, 110), Transparency = 0.3 }):Play()
										TweenService_:Create(uiStroke6, tweenInfo2, { Transparency = 1 }):Play()
									end
								end

								textButton2.MouseButton1Click:Connect(function()
									flag14 = not flag14
									fn46()

									if arg3 then
										task.spawn(arg3, flag14)
									end
								end)

								return {
									get = function()
										return flag14
									end,
									set = function(arg4)
										flag14 = arg4
										fn46()
									end,
									card = frame8,
								}
							end

							local frame8 = Instance.new("Frame")
							frame8.Size = UDim2.new(1, -28, 0, 34)
							frame8.Position = UDim2.new(0, 14, 0, 184)
							frame8.BackgroundColor3 = tbl17.CardBg
							frame8.BackgroundTransparency = 0.35
							frame8.BorderSizePixel = 0
							frame8.Parent = frame4
							local uiCorner6 = Instance.new("UICorner")
							uiCorner6.CornerRadius = UDim.new(0, 9)
							uiCorner6.Parent = frame8
							local uiStroke5 = Instance.new("UIStroke")
							uiStroke5.Color = tbl17.CardStroke
							uiStroke5.Thickness = 1
							uiStroke5.Transparency = 0.4
							uiStroke5.Parent = frame8
							local frame9 = Instance.new("Frame")
							frame9.Size = UDim2.new(0, 10, 0, 10)
							frame9.Position = UDim2.new(0, 15, 0.5, -5)
							frame9.BackgroundColor3 = tbl17.Orange
							frame9.BackgroundTransparency = 1
							frame9.BorderSizePixel = 0
							frame9.Parent = frame8
							local uiCorner7 = Instance.new("UICorner")
							uiCorner7.CornerRadius = UDim.new(1, 0)
							uiCorner7.Parent = frame9
							local frame10 = Instance.new("Frame")
							frame10.Size = UDim2.new(0, 10, 0, 10)
							frame10.Position = UDim2.new(0, 15, 0.5, -5)
							frame10.BackgroundColor3 = tbl17.SubText
							frame10.BorderSizePixel = 0
							frame10.Parent = frame8
							local uiCorner8 = Instance.new("UICorner")
							uiCorner8.CornerRadius = UDim.new(1, 0)
							uiCorner8.Parent = frame10
							local uiStroke6 = Instance.new("UIStroke")
							uiStroke6.Color = tbl17.BrightBlue
							uiStroke6.Thickness = 1
							uiStroke6.Transparency = 0.5
							uiStroke6.Parent = frame10
							local textLabel4 = Instance.new("TextLabel")
							textLabel4.Size = UDim2.new(1, -42, 1, 0)
							textLabel4.Position = UDim2.new(0, 32, 0, 0)
							textLabel4.BackgroundTransparency = 1
							textLabel4.Text = "Protocol Status: Idle"
							textLabel4.TextColor3 = tbl17.SubText
							textLabel4.Font = fredokaOne
							textLabel4.TextSize = 11
							textLabel4.TextXAlignment = Enum.TextXAlignment.Left
							textLabel4.Parent = frame8
							local flag14 = false

							local function fn46(text, backgroundColor3)
								textLabel4.Text = text
								TweenService_:Create(frame10, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { BackgroundColor3 = backgroundColor3 }):Play()
								TweenService_:Create(textLabel4, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { TextColor3 = backgroundColor3 }):Play()

								if backgroundColor3 == tbl17.Orange or backgroundColor3 == tbl17.Green then
									frame9.BackgroundColor3 = backgroundColor3

									if not flag14 then
										flag14 = true

										task.spawn(function()
											while flag14 do
												frame9.Size = UDim2.new(0, 10, 0, 10)
												frame9.Position = UDim2.new(0, 15, 0.5, -5)
												frame9.BackgroundTransparency = 0.2

												TweenService_:Create(frame9, TweenInfo.new(1.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
													Size = UDim2.new(0, 30, 0, 30),
													Position = UDim2.new(0, 5, 0.5, -15),
													BackgroundTransparency = 1,
												}):Play()

												task.wait(0.65)
											end
										end)
									end
								else
									flag14 = false
								end
							end

							local function fn47()
								local character = localPlayer.Character
								if character and character:FindFirstChild("HumanoidRootPart") then
									return character.HumanoidRootPart.CFrame
								end
								return nil
							end

							local function fn48()
								if reset then
									pcall(function()
										reset:FireServer()
									end)
								end
							end

							local function fn49()
								local character = localPlayer.Character
								local n27 = 0

								while localPlayer.Character == character and n27 < 10 do
									task.wait(0.1)
									n27 += 0.1
								end

								local character2 = localPlayer.Character

								if not character2 or not character2.Parent or character2 == character then
									character2 = localPlayer.CharacterAdded:Wait()
								end

								character2:WaitForChild("HumanoidRootPart", 10)
								task.wait(0.3)
							end

							local bypassAc = nil
							local rapidTp = nil
							local flag15 = false

							local function fn50()
								if flag15 then
									return
								end
								flag15 = true
								local screenGui3 = Instance.new("ScreenGui")
								screenGui3.Name = "BypassOverlayGui"
								screenGui3.IgnoreGuiInset = true
								screenGui3.ResetOnSpawn = false
								local playerGui = localPlayer:FindFirstChildOfClass("PlayerGui")

								if playerGui then
									screenGui3.Parent = playerGui
								else
									screenGui3.Parent = game:GetService("CoreGui")
								end

								local frame11 = Instance.new("Frame")
								frame11.Size = UDim2.new(1, 0, 1, 0)
								frame11.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
								frame11.BackgroundTransparency = 1
								frame11.BorderSizePixel = 0
								frame11.Parent = screenGui3
								local textLabel5 = Instance.new("TextLabel")
								textLabel5.Size = UDim2.new(1, 0, 1, 0)
								textLabel5.BackgroundTransparency = 1
								textLabel5.Text = "Bypassing..."
								textLabel5.TextColor3 = Color3.fromRGB(200, 200, 200)
								textLabel5.TextTransparency = 1
								textLabel5.Font = Enum.Font.Jura
								textLabel5.TextSize = 48
								textLabel5.Parent = frame11
								TweenService_:Create(frame11, TweenInfo.new(0.5), { BackgroundTransparency = 0 }):Play()
								TweenService_:Create(textLabel5, TweenInfo.new(0.5), { TextTransparency = 0, TextSize = 52 }):Play()
								local frame12 = Instance.new("Frame")
								frame12.Size = UDim2.new(0, 100, 0, 100)
								frame12.Position = UDim2.new(0.5, -50, 0.5, -120)
								frame12.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
								frame12.BackgroundTransparency = 1
								frame12.BorderSizePixel = 0
								Instance.new("UICorner", frame12).CornerRadius = UDim.new(1, 0)
								local uiStroke7 = Instance.new("UIStroke", frame12)
								uiStroke7.Color = Color3.fromRGB(255, 255, 255)
								uiStroke7.Thickness = 2
								uiStroke7.Transparency = 1
								local clone = uiStroke7:Clone()
								clone.Parent = frame12
								clone.Thickness = 8
								clone.Transparency = 1
								frame12.Parent = frame11
								local uiGradient4 = Instance.new("UIGradient", uiStroke7)
								local numberSequence2 = NumberSequence.new
								local tbl22 = {}
								local v38 = NumberSequenceKeypoint.new(0, 0)
								local v39 = NumberSequenceKeypoint.new(0.8, 1)
								local new5 = NumberSequenceKeypoint.new
								tbl22[1] = v38
								tbl22[2] = v39

								do
									local values = table.pack(new5(1, 1))
									table.move(values, 1, values.n, 3, tbl22)
								end

								uiGradient4.Transparency = numberSequence2(tbl22)
								local clone2 = uiGradient4:Clone()
								clone2.Parent = clone
								TweenService_:Create(uiStroke7, TweenInfo.new(0.5), { Transparency = 0 }):Play()
								TweenService_:Create(clone, TweenInfo.new(0.5), { Transparency = 0.8 }):Play()
								local part2 = Instance.new("Part")
								part2.Size = Vector3.new(30, 2, 30)
								part2.Anchored = true
								part2.Transparency = 1
								part2.CanCollide = true
								part2.Parent = workspace
								local tbl23 = {}
								local n27 = CFrame.new(-348.282, 61.672, 357.522) * CFrame.Angles(0, -0.601, 0)
								local n28 = CFrame.new(348.696, 61.672, 357.533) * CFrame.Angles(0, 0.836, 0)
								local n29 = CFrame.new(347.929, 61.672, -346.983) * CFrame.Angles(3.142, 0.937, -3.142)
								local n30 = CFrame.new(-348.834, 61.672, -345.797) * CFrame.Angles(3.142, -0.1, -3.142)
								tbl23[1] = n27
								tbl23[2] = n28
								tbl23[3] = n29
								tbl23[4] = n30
								local n31 = 1
								local n32 = 0
								local n33 = 0

								local thread = task.spawn(function()
									local n34 = 0

									while flag15 do
										n34 += 0.05
										uiGradient4.Rotation = n34 * 300 % 360
										clone2.Rotation = n34 * 300 % 360

										if math.floor(n34 * 10) % 4 == 0 then
											n33 = (n33 + 1) % 4
											textLabel5.Text = "Bypassing" .. string.rep(".", n33)
										end

										task.wait(0.04)
									end
								end)

								task.spawn(function()
									while flag15 do
										if not bypassAc.get() then
											flag15 = false
											break
										else
											local v40 = fn47()

											if not v40 then
												task.wait(1)
											else
												n32 += 1
												local v41 = tbl23[n31]
												part2.CFrame = v41 * CFrame.new(0, -4, 0)
												fn46("Bypassing...", tbl17.Orange)
												local character = localPlayer.Character

												if character and character:FindFirstChild("HumanoidRootPart") then
													character.HumanoidRootPart.CFrame = v41
												end

												task.wait(1.5)
												local v42 = fn47()

												if not v42 or (v42.Position - v41.Position).Magnitude > 25 then
													fn46("Retrying...", tbl17.Orange)
													fn48()
													fn49()
													task.wait(0.3)
													n31 += 1

													if #tbl23 < n31 then
														n31 = 1
													end

													if not bypassAc.get() then
														flag15 = false
														break
													end
												else
													_G.AC_BYPASSED = true

													if _G.updateBypassStatusText then
														_G.updateBypassStatusText()
													end

													fn46("Protocol Status: Secure", tbl17.Green)
													textLabel5.Text = "Bypassed"
													textLabel5.TextColor3 = Color3.fromRGB(150, 255, 150)
													local tbl24 = { Color = tbl17.Green, Transparency = 0 }
													TweenService_:Create(uiStroke5, TweenInfo.new(0.2, Enum.EasingStyle.Sine), tbl24):Play()

													task.delay(1.5, function()
														local tbl25 = { Color = tbl17.CardStroke, Transparency = 0.4 }
														TweenService_:Create(uiStroke5, TweenInfo.new(0.5, Enum.EasingStyle.Sine), tbl25):Play()
													end)

													task.wait(0.5)
													local character2 = localPlayer.Character

													if character2 and character2:FindFirstChild("HumanoidRootPart") then
														character2.HumanoidRootPart.CFrame = v40
													end

													bypassAc.set(false)
													flag15 = false
													break
												end
											end
										end
									end

									if thread then
										task.cancel(thread)
									end

									part2:Destroy()
									TweenService_:Create(frame11, TweenInfo.new(0.5), { BackgroundTransparency = 1 }):Play()
									TweenService_:Create(textLabel5, TweenInfo.new(0.5), { TextTransparency = 1, TextSize = 48 }):Play()
									task.wait(0.5)
									screenGui3:Destroy()
								end)
							end

							local flag16 = false

							local function fn51()
								if flag16 then
									return
								end
								flag16 = true

								task.spawn(function()
									while flag16 do
										if not rapidTp.get() then
											flag16 = false
											break
										else
											for _, player in ipairs(Players_:GetPlayers()) do
												if not (not flag16 or not rapidTp.get()) then
													if player ~= localPlayer then
														local character = localPlayer.Character
														local character2 = player.Character

														if character and character2 then
															local humanoidRootPart2 = character:FindFirstChild("HumanoidRootPart")
															local humanoidRootPart3 = character2:FindFirstChild("HumanoidRootPart")

															if humanoidRootPart2 and humanoidRootPart3 then
																humanoidRootPart2.CFrame = humanoidRootPart3.CFrame * CFrame.new(0, 0, 3)
															end
														end

														task.wait(0.05)
													end

													continue
												end

												break
											end

											task.wait(0.1)
										end
									end
								end)
							end

							bypassAc = fn45("Bypass AC", "Secure bypass connection.", 62, frame4, function(arg2)
								if arg2 then
									fn50()
								else
									flag15 = false
									flag14 = false
									fn46("Protocol Status: Idle", tbl17.SubText)
								end
							end)

							_G.startACBypassFunction = function()
								if bypassAc and not bypassAc.get() then
									bypassAc.set(true)
								end
							end

							rapidTp = fn45("Rapid TP", "Fast teleport cycle.", 118, frame4, function(arg2)
								if arg2 then
									fn51()
								else
									flag16 = false
								end
							end)

							local position3 = canvasGroup.Position
							canvasGroup.Position = position3 + UDim2.new(0, 0, 0, 14)
							task.wait(0.05)
							TweenService_:Create(canvasGroup, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { GroupTransparency = 0 }):Play()
							TweenService_:Create(canvasGroup, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = position3 }):Play()

							task.spawn(function()
								local rotation = 0

								while screenGui2.Parent do
									rotation += 0.3

									if rotation >= 360 then
										rotation = 0
									end

									uiGradient.Rotation = rotation
									task.wait(0.12)
								end
							end)

							task.spawn(function()
								local n27 = 0

								while screenGui2.Parent do
									n27 += 0.04
									local n28 = (math.sin(n27) + 1) / 2
									uiStroke2.Transparency = 0.55 + n28 * 0.3
									uiStroke.Transparency = 0.72 + n28 * 0.25
									uiStroke3.Transparency = 0.2 + n28 * 0.25
									task.wait(0.08)
								end
							end)

							fn46("Protocol Status: Idle", tbl17.SubText)
						end)
					else
						local elopezACBypass = game:GetService("CoreGui"):FindFirstChild("ElopezACBypass")
						local elopezACBypass2 = nil

						if not elopezACBypass then
							local playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
							elopezACBypass2 = nil

							if playerGui then
								elopezACBypass2 = playerGui:FindFirstChild("ElopezACBypass")
							end
						end

						elopezACBypass = elopezACBypass or elopezACBypass2

						if elopezACBypass then
							local v30 = elopezACBypass
							local entrance = v30:FindFirstChild("Entrance")

							if entrance and entrance:IsA("CanvasGroup") and entrance.GroupTransparency >= 1 then
								v30:Destroy()
							else
								task.spawn(function()
									local isCanvasGroup = entrance and entrance:IsA("CanvasGroup")
									local tween = nil

									if isCanvasGroup then
										tween = TweenService:Create(entrance, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In), { GroupTransparency = 1 })
									end

									if tween then
										tween:Play()
									end

									task.delay(0.5, function()
										if v30 and v30.Parent then
											v30:Destroy()
										end
									end)
								end)
							end
						end
					end
				end,
			}):AddKeyPicker("ACBypassKeybind", {
				Default = "None",
				SyncToggleState = true,
				Mode = "Toggle",
				Text = "AC Bypass Keybind",
				NoUI = false,
			})
		end

		local Attacks = MainTab:AddRightGroupbox("Attacks", "zap")

		Attacks:AddToggle("AlwaysDownslam", {
			Text = "Always Downslam",
			Default = false,
			Callback = function(arg)
				AlwaysDownslamActive = arg

				if arg and toggles.AlwaysUppercut and toggles.AlwaysUppercut.Value then
					toggles.AlwaysUppercut:SetValue(false)
				end
			end,
		}):AddKeyPicker("AlwaysDownslamKeybind", {
			Default = "None",
			SyncToggleState = true,
			Mode = "Toggle",
			Text = "Always Downslam Keybind",
			NoUI = false,
		})

		Attacks:AddToggle("AlwaysUppercut", {
			Text = "Always Uppercut",
			Default = false,
			Callback = function(arg)
				AlwaysUppercutActive = arg

				if arg and toggles.AlwaysDownslam and toggles.AlwaysDownslam.Value then
					toggles.AlwaysDownslam:SetValue(false)
				end
			end,
		}):AddKeyPicker("AlwaysUppercutKeybind", {
			Default = "None",
			SyncToggleState = true,
			Mode = "Toggle",
			Text = "Always Uppercut Keybind",
			NoUI = false,
		})

		local Punish = MainTab:AddRightGroupbox("Punish", "sword")
		Punish:AddToggle("AutoPunishAfterBlock", { Text = "Auto Punish", Default = true })
		Punish:AddToggle("PunishAfterDash", { Text = "Punish After Dash", Default = false })
		local v28 = KillAllTab:AddLeftGroupbox("Gojo 0.2 Kill All", "zap")
		v28:AddLabel("<font color=\"#ff3c3c\">WARNING: First Bypass AC</font>")

		v28:AddToggle("GojoKillAllEnabled", {
			Text = "Gojo Kill All",
			Default = false,
			Callback = function(arg)
				if arg and not _G.AC_BYPASSED then
					task.spawn(function()
						toggles.GojoKillAllEnabled:SetValue(false)
					end)

					if lib then
						lib:Notify({
							Title = "AC Bypass Required",
							Description = "Bypass Anti-Cheat FIRST before enabling Gojo Kill All!",
							Time = 4,
						})
					end
				end
			end,
		}):AddKeyPicker("GojoKillAllKeybind", {
			Default = "None",
			SyncToggleState = true,
			Mode = "Toggle",
			Text = "Gojo Kill All Keybind",
			NoUI = false,
		})

		v28:AddSlider("GojoKillAllDetectionDelay", { Text = "Detection Delay", Min = 0.1, Max = 1, Default = 0.2, Rounding = 2 })
		v28:AddSlider("GojoTpSpeed", { Text = "Teleport Delay (s)", Min = 0.01, Max = 1, Default = 0.2, Rounding = 2 })
		v28:AddToggle("Always02DomainEnabled", { Text = "Always 0.2 Domain", Default = false })

		v28:AddToggle("GojoAwakenButtonToggle", {
			Text = "Awaken Button Mobile",
			Default = false,
			Callback = function(arg)
				if arg then
					fn23("GojoAwaken", "rbxthumb://type=Asset&id=105493368874041&w=420&h=420", function()
						if _G.triggerGojo02KillAll then
							_G.triggerGojo02KillAll(true)
						else
							if (LocalPlayer:GetAttribute("Ultimate") or 0) < 100 then
								if _G.showGojoNotification then
									_G.showGojoNotification("Missing Ultimate", "Firstly Get 100% Ult", 3)
								else
									lib:Notify({ Title = "Ultimate Check", Description = "Firstly Get 100% Ult", Time = 3 })
								end

								return
							end

							pcall(function()
								game.ReplicatedStorage.Knit.Knit.Services.GojoService.RE.Ultimate:FireServer()
							end)

							task.wait(0.1)

							if _G.autoPopSequence then
								_G.autoPopSequence()
							end
						end
					end, UDim2.new(-1.8, 0, -2.4, 0))
				else
					fn24("GojoAwaken")
				end
			end,
		})

		v28:AddButton("Pop 0.2 Domain (Manual)", function()
			if _G.triggerGojo02KillAll then
				_G.triggerGojo02KillAll(true)
			elseif _G.autoPopSequence then
				_G.autoPopSequence()
			end
		end)

		do
			local v29 = AutoFarmTab:AddLeftGroupbox("Gojo Farm", "zap")
			local v30 = nil

			local function fn45()
				if v30 then
					pcall(function()
						v30:Destroy()
					end)

					v30 = nil
				end
			end

			local function fn46(adornee)
				if not (toggles.GojoFarmTargetEsp and toggles.GojoFarmTargetEsp.Value) then
					fn45()
					return
				end

				if not adornee or not adornee.Parent then
					fn45()
					return
				end

				if v30 and v30.Parent == adornee then
					return
				end
				fn45()
				local highlight = Instance.new("Highlight")
				highlight.Name = "ENI_GojoFarmTargetHighlight"
				highlight.FillColor = Color3.fromRGB(255, 0, 80)
				highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
				highlight.FillTransparency = 0.4
				highlight.OutlineTransparency = 0.1
				highlight.Adornee = adornee
				highlight.Parent = adornee
				v30 = highlight
			end

			local thread = nil

			local function fn47()
				if thread then
					pcall(task.cancel, thread)
					thread = nil
				end

				fn45()
			end

			local function fn48(arg, arg2)
				local character = LocalPlayer.Character
				local humanoidRootPart2 = character and character:FindFirstChild("HumanoidRootPart")
				if not humanoidRootPart2 then
					return nil
				end
				local v31 = nil
				local n27 = arg2 or 150

				local function fn49(arg3)
					if arg3 == character then
						return
					end
					local humanoid2 = arg3:FindFirstChildOfClass("Humanoid")
					local humanoidRootPart3 = arg3:FindFirstChild("HumanoidRootPart")

					if humanoid2 and humanoid2.Health > 0 and humanoidRootPart3 and not arg3:GetAttribute("Dead") then
						local magnitude = (humanoidRootPart2.Position - humanoidRootPart3.Position).Magnitude

						if magnitude < n27 then
							n27 = magnitude
							v31 = arg3
						end
					end
				end

				if arg then
					local characters = workspace:FindFirstChild("Characters")

					if characters then
						for _, child in ipairs(characters:GetChildren()) do
							if child:IsA("Model") and (child.Name:lower():find("dummy") or child:FindFirstChild("Enemy") or child:FindFirstChild("Dummy")) then
								fn49(child)
							end
						end
					end

					for _, child in ipairs(workspace:GetChildren()) do
						if child:IsA("Model") and child ~= character and (child.Name:lower():find("dummy") or child:FindFirstChild("Enemy") or child:FindFirstChild("Dummy")) then
							fn49(child)
						end
					end
				else
					for _, player in ipairs(Players:GetPlayers()) do
						if player ~= LocalPlayer and player.Character then
							fn49(player.Character)
						end
					end
				end

				return v31
			end

			v29:AddToggle("AutoGojoFarmEnabled", {
				Text = "Enable Auto Gojo Farm",
				Default = false,
				Callback = function(arg)
					if arg and not _G.AC_BYPASSED then
						task.spawn(function()
							toggles.AutoGojoFarmEnabled:SetValue(false)
						end)

						if lib then
							lib:Notify({
								Title = "AC Bypass Required",
								Description = "Bypass Anti-Cheat FIRST before enabling Auto Gojo Farm!",
								Time = 4,
							})
						end

						return
					end

					if not arg then
						fn47()
						return
					end
					fn47()

					thread = task.spawn(function()
						while toggles.AutoGojoFarmEnabled and toggles.AutoGojoFarmEnabled.Value and flag11 do
							if _G.isGojoDomainActive then
								task.wait(0.15)
							else
								if not v21.Active and toggles.Invisibility then
									toggles.Invisibility:SetValue(true)
								end

								if (LocalPlayer:GetAttribute("Ultimate") or 0) >= 100 then
									local character = LocalPlayer.Character
									character = character and character:FindFirstChild("HumanoidRootPart")

									if character then
										character.CFrame = CFrame.new(139.231689, -61.8617249, -249.998047, 0, 0, 1, 0, 1, 0, -1, 0, 0)
									end

									task.wait(0.3)

									if _G.triggerGojo02KillAll then
										_G.triggerGojo02KillAll(true)
									else
										pcall(function()
											local GojoService = require(game.ReplicatedStorage.Knit.Knit).GetService("GojoService")

											if GojoService and GojoService.RE and GojoService.RE.Ultimate then
												GojoService.RE.Ultimate:FireServer()
											end
										end)

										task.wait(0.15)

										if _G.autoPopSequence then
											_G.autoPopSequence()
										end
									end

									local now2 = os.clock()

									while (_G.isGojoDomainActive or os.clock() - now2 < 7) and flag11 and toggles.AutoGojoFarmEnabled and toggles.AutoGojoFarmEnabled.Value do
										task.wait(0.4)
									end

									task.wait(options.GojoFarmDetectionDelay and options.GojoFarmDetectionDelay.Value or 0.2)
								else
									local v31 = fn48(toggles.GojoFarmDummyOnly and toggles.GojoFarmDummyOnly.Value, options.GojoFarmMaxDistance and options.GojoFarmMaxDistance.Value or 150)

									if v31 then
										fn46(v31)
										local character = LocalPlayer.Character
										character = character and character:FindFirstChild("HumanoidRootPart")
										local humanoidRootPart2 = v31:FindFirstChild("HumanoidRootPart")
										local humanoid2 = v31:FindFirstChildOfClass("Humanoid")

										if character and humanoidRootPart2 and humanoid2 and humanoid2.Health > 0 then
											local value = toggles.GojoFarmRevolve and toggles.GojoFarmRevolve.Value
											local n27 = options.GojoFarmRevolveRadius and options.GojoFarmRevolveRadius.Value or 3.5
											local n28 = options.GojoFarmRevolveSpeed and options.GojoFarmRevolveSpeed.Value or 5
											local position = humanoidRootPart2.Position
											local cframe

											if value then
												local n29 = os.clock() * n28 % 6.2831853071795862
												cframe = CFrame.new(position + Vector3.new(math.cos(n29) * n27, 0, math.sin(n29) * n27), position)
											else
												cframe = CFrame.new((humanoidRootPart2.CFrame * CFrame.new(0, 0, 2.5)).Position, position)
											end

											character.CFrame = cframe
											fn18()
										end
									else
										fn45()
									end
								end
							end

							task.wait(0.03)
						end

						fn47()
					end)
				end,
			}):AddKeyPicker("AutoGojoFarmKeybind", {
				Default = "None",
				SyncToggleState = true,
				Mode = "Toggle",
				Text = "Auto Gojo Farm Keybind",
				NoUI = false,
			})

			v29:AddSlider("GojoFarmDetectionDelay", { Text = "Detection Delay", Min = 0.1, Max = 1, Default = 0.2, Rounding = 2 })
			v29:AddToggle("GojoFarmRevolve", { Text = "Revolve Around Target", Default = false })
			v29:AddSlider("GojoFarmRevolveSpeed", { Text = "Orbit Speed", Min = 1, Max = 15, Default = 5, Rounding = 1 })
			v29:AddSlider("GojoFarmRevolveRadius", { Text = "Orbit Distance", Min = 1.5, Max = 8, Default = 3.5, Rounding = 1 })
			v29:AddToggle("GojoFarmDummyOnly", { Text = "Dummy Only Mode", Default = false })
			v29:AddToggle("GojoFarmTargetEsp", { Text = "Target ESP Highlight", Default = true })
			v29:AddSlider("GojoFarmMaxDistance", { Text = "Max Target Range", Min = 20, Max = 300, Default = 150, Rounding = 0 })
		end

		do
			local v29 = nil
			local flag13 = false

			local tbl17 = {
				{ Cooldown = 8, LastUsed = 0, Key = Enum.KeyCode.One, Range = 22 },
				{ Cooldown = 11, LastUsed = 0, Key = Enum.KeyCode.Two, Range = 25 },
				{ Cooldown = 13, LastUsed = 0, Key = Enum.KeyCode.Three, Range = 8 },
				{ Cooldown = 13, LastUsed = 0, Key = Enum.KeyCode.Four, Range = 8 },
			}

			local tbl18 = { W = false, A = false, S = false, D = false, Shift = false, F = false }
			local highlight = Instance.new("Highlight")
			highlight.FillColor = Color3.fromRGB(255, 0, 80)
			highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
			highlight.FillTransparency = 0.6
			highlight.OutlineTransparency = 0.1
			local billboardGui = Instance.new("BillboardGui")
			billboardGui.Size = UDim2.new(0, 150, 0, 40)
			billboardGui.AlwaysOnTop = true
			billboardGui.ExtentsOffset = Vector3.new(0, 3, 0)
			local textLabel = Instance.new("TextLabel", billboardGui)
			textLabel.Size = UDim2.new(1, 0, 1, 0)
			textLabel.BackgroundTransparency = 1
			textLabel.Font = Enum.Font.SourceSansBold
			textLabel.TextSize = 12
			textLabel.TextColor3 = Color3.fromRGB(255, 0, 80)
			textLabel.TextStrokeTransparency = 0
			textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			textLabel.TextXAlignment = Enum.TextXAlignment.Center
			local function fn45(l,I)if not  tbl18 [I]then  tbl18 [I]=true;pcall(function()VirtualInputManager:SendKeyEvent(true,l,false,game);end);end;end
			local function fn46(l,I)if  tbl18 [I]then  tbl18 [I]=false;pcall(function()VirtualInputManager:SendKeyEvent(false,l,false,game);end);end;end
			local function fn47(...) end

			local function fn48(arg, arg2)
				pcall(function()
					VirtualInputManager:SendKeyEvent(true, arg, false, game)
					local wait_ = task.wait
					local v30 = arg2
					local n27

					if arg2 then
						n27 = v30
					else
						n27 = 0.05
					end

					wait_(n27)
					VirtualInputManager:SendKeyEvent(false, arg, false, game)
				end)
			end

			local function fn49()
				pcall(function()
					VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, game, 0)
					task.wait(0.02)
					VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, game, 0)
				end)
			end

			local function fn50(o)if not o then return nil,nil,nil;end;local l,I,D=o.Character;if l then I,D=(l:FindFirstChildOfClass("Humanoid")),(l:FindFirstChild("HumanoidRootPart"));end;return l,I,D;end
			local function fn51(l)local I= tbl17 [l];if not I then return false;end;return os.clock()-I.LastUsed>=I.Cooldown;end

			local function fn52(arg)
				if fn51(arg) then
					tbl17[arg].LastUsed = os.clock()
					fn48(tbl17[arg].Key, 0.05)
					return true
				end

				return false
			end

			local tbl19 = {
				["B&B Combo"] = {
					{ Action = "M1" },
					{ Action = "WAIT", Val = 0.22 },
					{ Action = "M1" },
					{ Action = "WAIT", Val = 0.22 },
					{ Action = "M1" },
					{ Action = "WAIT", Val = 0.22 },
					{ Action = "KEY", Val = 1 },
					{ Action = "WAIT", Val = 0.65 },
					{ Action = "M1" },
					{ Action = "WAIT", Val = 0.22 },
					{ Action = "M1" },
					{ Action = "WAIT", Val = 0.22 },
					{ Action = "KEY", Val = 2 },
					{ Action = "WAIT", Val = 0.7 },
					{ Action = "KEY", Val = 3 },
					{ Action = "WAIT", Val = 0.5 },
					{ Action = "KEY", Val = 4 },
				},
				["Stun Opener"] = {
					{ Action = "KEY", Val = 2 },
					{ Action = "WAIT", Val = 0.6 },
					{ Action = "M1" },
					{ Action = "WAIT", Val = 0.22 },
					{ Action = "KEY", Val = 1 },
					{ Action = "WAIT", Val = 0.65 },
					{ Action = "KEY", Val = 3 },
					{ Action = "WAIT", Val = 0.5 },
					{ Action = "KEY", Val = 4 },
				},
				["Rika Burst"] = {
					{ Action = "KEY_RAW", Val = Enum.KeyCode.R },
					{ Action = "WAIT", Val = 0.3 },
					{ Action = "KEY", Val = 1 },
					{ Action = "WAIT", Val = 0.65 },
					{ Action = "KEY", Val = 2 },
					{ Action = "WAIT", Val = 0.7 },
					{ Action = "KEY", Val = 4 },
				},
			}

			local function fn53()
				if not v29 or flag13 then
					return
				end
				flag13 = true
				local v30, v31, v32 = fn50(v29)
				if not v32 or v31.Health <= 0 then
					flag13 = false
					return
				end

				if toggles.YutaAlwaysForward and toggles.YutaAlwaysForward.Value then
					fn45(Enum.KeyCode.W, "W")
				end

				local n27 = math.random()
				local n28

				if n27 < 0.2 then
					n28 = 2
				elseif n27 < 0.65 then
					n28 = 3
				else
					n28 = 4
				end

				for i = 1, n28 do
					if not (not toggles.YutaBotEnabled or not toggles.YutaBotEnabled.Value or not v29) then
						fn49()
						task.wait(0.18 + math.random() * 0.04)
						continue
					end

					break
				end

				if toggles.YutaBotEnabled and toggles.YutaBotEnabled.Value and v29 then
					local n29 = math.random()

					if n29 < 0.35 and fn51(1) then
						fn52(1)
					elseif n29 < 0.65 and fn51(2) then
						fn52(2)
					elseif n29 < 0.85 and fn51(3) then
						fn52(3)
					elseif fn51(4) then
						fn52(4)
					end
				end

				task.wait(0.15)
				flag13 = false
			end

			local function fn54()
				if not v29 or flag13 then
					return
				end
				flag13 = true

				pcall(function()
					local v30, v31, v32 = fn50(v29)
					if not v32 or v31.Health <= 0 then
						return
					end
					local v33, v34, v35 = fn50(LocalPlayer)
					if not v35 then
						return
					end
					local magnitude = (v32.Position - v35.Position).Magnitude
					local flag14 = v31.WalkSpeed == 0
					local platformStand = v31.PlatformStand or v31.Sit or v32.AssemblyLinearVelocity.Magnitude > 22

					if toggles.YutaAlwaysForward and toggles.YutaAlwaysForward.Value then
						fn45(Enum.KeyCode.W, "W")
					end

					if flag14 and magnitude <= 10 then
						if fn51(3) then
							fn52(3)
							task.wait(0.4)
						elseif fn51(4) then
							fn52(4)
							task.wait(0.5)
						end
					end

					if magnitude > 10 and magnitude <= 24 then
						if fn51(1) then
							fn52(1)
							task.wait(0.5)
							fn48(Enum.KeyCode.Q, 0.05)
						elseif fn51(2) then
							fn52(2)
							task.wait(0.6)
						end
					end

					local flag15 = not fn51(1) and not fn51(2) and not fn51(3) and not fn51(4)
					local n27 = 3

					if flag15 then
						n27 = 4
					end

					for i = 1, n27 do
						if not (not toggles.YutaBotEnabled or not toggles.YutaBotEnabled.Value or not v29) then
							fn49()
							task.wait(0.18 + math.random() * 0.03)
							continue
						end

						break
					end

					if toggles.YutaBotEnabled and toggles.YutaBotEnabled.Value and v29 then
						magnitude = (v32.Position - v35.Position).Magnitude

						if magnitude <= 10 then
							if fn51(1) then
								fn52(1)
								task.wait(0.5)
							elseif fn51(2) then
								fn52(2)
								task.wait(0.55)
							elseif fn51(3) then
								fn52(3)
								task.wait(0.4)
							elseif fn51(4) then
								fn52(4)
								task.wait(0.45)
							end
						end
					end

					if platformStand and magnitude <= 8 then
						if math.random() < 0.5 then
							fn48(Enum.KeyCode.Space, 0.05)
							task.wait(0.15)

							for i = 1, 3 do
								fn49()
								task.wait(0.18)
							end
						end
					end

					if magnitude <= 10 and fn51(4) then
						fn48(Enum.KeyCode.R, 0.05)
						task.wait(0.25)
						fn52(4)
					end
				end)

				flag13 = false
			end

			local function fn55()
				if not v29 or flag13 then
					return
				end
				flag13 = true
				local bbCombo = tbl19[options.YutaActiveCombo and options.YutaActiveCombo.Value or "AI bot"] or tbl19["B&B Combo"]

				for _, v30 in ipairs(bbCombo) do
					if not (not toggles.YutaBotEnabled or not toggles.YutaBotEnabled.Value or not v29) then
						local v31, v32, v33 = fn50(v29)

						if not (not v33 or v32.Health <= 0) then
							if toggles.YutaAlwaysForward and toggles.YutaAlwaysForward.Value then
								fn45(Enum.KeyCode.W, "W")
							end

							if v30.Action == "M1" then
								fn49()
							elseif v30.Action == "KEY" then
								fn52(v30.Val)
							elseif v30.Action == "KEY_RAW" then
								fn48(v30.Val, 0.05)
							elseif v30.Action == "WAIT" then
								task.wait(v30.Val)
							end

							continue
						end
					end

					break
				end

				flag13 = false
			end

			local function fn56()
				fn47()
				highlight.Parent = nil
				billboardGui.Parent = nil
				v29 = nil
			end

			PathfindingService:CreatePath({ AgentRadius = 2.5, AgentHeight = 5, AgentCanJump = true })
			local raycastParams = RaycastParams.new()
			raycastParams.FilterType = Enum.RaycastFilterType.Exclude
			local function fn57(l,I,D) raycastParams .FilterDescendantsInstances={I,D};D=Workspace:Raycast(l.Position,l.CFrame.LookVector*10, raycastParams );return D and D.Instance and D.Instance.CanCollide;end
			local Autoplay = AutoFarmTab:AddRightGroupbox("Autoplay", "zap")

			Autoplay:AddToggle("YutaBotEnabled", {
				Text = "Enable Autoplay",
				Default = false,
				Callback = function(arg)
					if not arg then
						fn56()
					end
				end,
			})

			Autoplay:AddDropdown("YutaTargetMode", {
				Values = { "Closest", "Aim", "Specific" },
				Default = "Closest",
				Multi = false,
				Text = "Target Mode",
			})

			Autoplay:AddInput("YutaTargetName", { Default = "", Numeric = false, Finished = true, Text = "Specific Target Name" })

			Autoplay:AddDropdown("YutaActiveCombo", {
				Values = { "AI bot", "AI bot 2", "B&B Combo", "Stun Opener", "Rika Burst" },
				Default = "AI bot",
				Multi = false,
				Text = "Active Combo",
			})

			Autoplay:AddToggle("YutaAutoBlock", { Text = "Auto Block", Default = true })
			Autoplay:AddToggle("YutaAutoSprint", { Text = "Auto Sprint", Default = true })
			Autoplay:AddToggle("YutaHardLockCamera", { Text = "Hard Lock Camera", Default = true })
			Autoplay:AddToggle("YutaTargetESP", { Text = "Target", Default = true })
			Autoplay:AddToggle("YutaAlwaysForward", { Text = "Always Forward (Glue W)", Default = true })
			Autoplay:AddSlider("YutaMaxChaseRange", { Text = "Max Chase Distance", Min = 50, Max = 500, Default = 300, Rounding = 0 })
			Autoplay:AddSlider("YutaMinComboRange", { Text = "Min Combo Distance", Min = 4, Max = 15, Default = 8, Rounding = 0 })
		end

		table.insert(tbl9, RunService.Heartbeat:Connect(function(...) end))
		table.insert(tbl9, RunService.RenderStepped:Connect(function(...) end))

		MovementTab:AddRightGroupbox("Anti-Ragdoll", "zap"):AddToggle("FastRecoverRagdoll", {
			Text = "Anti-Ragdoll / Fast Getup",
			Default = false,
			Callback = function(arg)
				if arg then
					task.spawn(function()
						while toggles.FastRecoverRagdoll and toggles.FastRecoverRagdoll.Value do
							pcall(function()
								local character = LocalPlayer.Character

								if character then
									if character:GetAttribute("Ragdoll") and character:GetAttribute("Ragdoll") ~= 0 and character:GetAttribute("Ragdoll") ~= "0" then
										character:SetAttribute("Ragdoll", 0)
										local humanoid2 = character:FindFirstChildOfClass("Humanoid")

										if humanoid2 then
											humanoid2:ChangeState(Enum.HumanoidStateType.GettingUp)
										end
									end
								end
							end)

							task.wait(0.05)
						end
					end)
				end
			end,
		})

		do
			local tbl17 = {
				Weak = {
					Speed = 200,
					Range = 75,
					Frequency = 0.2,
					Name = "Weak",
					Color = Color3.fromRGB(80, 180, 240),
				},
				Medium = {
					Speed = 500,
					Range = 150,
					Frequency = 0.1,
					Name = "Medium",
					Color = Color3.fromRGB(240, 190, 60),
				},
				Max = {
					Speed = 1200,
					Range = 350,
					Frequency = 0.04,
					Name = "Max",
					Color = Color3.fromRGB(255, 110, 40),
				},
				Extreme = {
					Speed = 3000,
					Range = 700,
					Frequency = 0.01,
					Name = "EXTREME",
					Color = Color3.fromRGB(255, 30, 80),
				},
			}

			local max = tbl17.Max
			local v29 = nil
			local thread = nil
			local map = Workspace:FindFirstChild("Map")
			local data = map and map:FindFirstChild("Data")
			local destructible = map and map:FindFirstChild("Destructible")
			local overlapParams = OverlapParams.new()
			overlapParams.FilterType = Enum.RaycastFilterType.Include
			overlapParams.FilterDescendantsInstances = {}

			if destructible then
				table.insert(overlapParams.FilterDescendantsInstances, destructible)
			end

			if data then
				table.insert(overlapParams.FilterDescendantsInstances, data)
			end

			local raycastParams = RaycastParams.new()
			raycastParams.FilterType = Enum.RaycastFilterType.Include
			raycastParams.FilterDescendantsInstances = { map }
			local function fn45()local o=LocalPlayer.Character;return o,o and(o:FindFirstChildOfClass("Humanoid")),o and(o:FindFirstChild("HumanoidRootPart"));end

			local function fn46()
				local v30, v31, v32 = fn45()

				if v32 then
					pcall(function()
						v32.AssemblyLinearVelocity = Vector3.zero
						v32.AssemblyAngularVelocity = Vector3.zero
					end)
				end

				if v31 then
					pcall(function()
						v31.HipHeight = 0
					end)
				end
			end

			local function fn47()
				local str5 = options.DestructTargetName and options.DestructTargetName.Value or ""
				if str5 == "" then
					v29 = nil
					return
				end

				for _, player in ipairs(Players:GetPlayers()) do
					if player.Name:lower() == str5:lower() or player.DisplayName:lower() == str5:lower() then
						v29 = player
						return
					end
				end

				v29 = nil
			end

			local function fn48()
				local joinService = ReplicatedStorage:FindFirstChild("Knit") and ReplicatedStorage.Knit:FindFirstChild("Knit") and ReplicatedStorage.Knit.Knit:FindFirstChild("Services") and ReplicatedStorage.Knit.Knit.Services:FindFirstChild("JoinService")
				return joinService and joinService:FindFirstChild("RE") and joinService.RE:FindFirstChild("Reset")
			end

			local function fn49(...) end

			local function fn50()
				if thread then
					pcall(task.cancel, thread)
					thread = nil
				end

				fn46()
			end

			local function fn51()
				fn50()
				fn47()
				thread = task.spawn(fn49)
			end

			DestructionTab:AddLeftGroupbox("Destruction Bot", "bomb"):AddToggle("DestructBotEnabled", {
				Text = "Enable Destruction Bot",
				Default = false,
				Callback = function(arg)
					if arg then
						fn51()
					else
						fn50()
					end
				end,
			})

			local v30 = DestructionTab:AddRightGroupbox("Destruction Settings", "sliders")

			v30:AddDropdown("DestructPreset", {
				Values = { "Weak", "Medium", "Max", "Extreme" },
				Default = "Max",
				Multi = false,
				Text = "Preset Intensity",
				Callback = function(arg)
					if tbl17[arg] then
						max = tbl17[arg]

						if toggles.DestructBotEnabled and toggles.DestructBotEnabled.Value then
							fn51()
						end
					end
				end,
			})

			v30:AddInput("DestructTargetName", {
				Default = "mattynat7",
				Numeric = false,
				Finished = true,
				Text = "Target Username",
				Callback = function()
					fn47()

					if toggles.DestructBotEnabled and toggles.DestructBotEnabled.Value then
						fn51()
					end
				end,
			})

			table.insert(tbl9, RunService.Heartbeat:Connect(function(...) end))

			table.insert(tbl9, LocalPlayer.CharacterAdded:Connect(function()
				task.wait(0.5)

				if toggles.DestructBotEnabled and toggles.DestructBotEnabled.Value then
					fn51()
				end
			end))

			task.spawn(function()
				while flag11 do
					task.wait(0.2)

					pcall(function()
						if toggles.DestructBotEnabled and toggles.DestructBotEnabled.Value and v29 and v29.Character then
							local humanoid2 = v29.Character:FindFirstChildOfClass("Humanoid")

							if humanoid2 then
								Camera.CameraSubject = humanoid2
							end
						elseif not (toggles.DestructBotEnabled and toggles.DestructBotEnabled.Value) and LocalPlayer.Character then
							local humanoid2 = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

							if humanoid2 and Camera.CameraSubject ~= humanoid2 then
								Camera.CameraSubject = humanoid2
							end
						end
					end)
				end
			end)
		end

		pcall(function()
			local v29 = BFCTab:AddLeftGroupbox("BFC V1 (Auto Black Flash)", "zap")
			v29:AddToggle("BlackflashEnabled", { Text = "Enable Auto Blackflash", Default = false })
			v29:AddToggle("BlackflashDashBehind", { Text = "Dash Behind Target", Default = true })
			v29:AddSlider("BlackflashDashDuration", { Text = "Dash Glide Speed", Min = 0.05, Max = 0.5, Default = 0.18, Rounding = 2 })
			v29:AddSlider("BlackflashCurveStrength", { Text = "Bezier Arc Deviation", Min = 2, Max = 20, Default = 10, Rounding = 1 })
			v29:AddSlider("BlackflashAutoFireDelay", { Text = "Black Flash Fire Delay", Min = 0.05, Max = 0.4, Default = 0.23, Rounding = 2 })
			v29:AddLabel("Manual Blackflash Keybind"):AddKeyPicker("BlackflashKeybind", { NoUI = false, Default = "Q", Text = "Manual Blackflash keybind" })
			local v30 = BFCTab:AddRightGroupbox("BFC V1 Targeting & Lock", "crosshair")
			v30:AddToggle("BlackflashCameraLock", { Text = "Target Lock-On", Default = true })
			v30:AddDropdown("BlackflashLockType", { Values = { "Camera", "Character" }, Default = "Camera", Multi = false, Text = "Lock-On Mode" })
			v30:AddToggle("BlackflashTargetPlayers", { Text = "Target Players", Default = true })
			v30:AddToggle("BlackflashTargetDummies", { Text = "Target Dummies / NPCs", Default = true })
			v30:AddSlider("BlackflashMaxRange", { Text = "Maximum Lock Distance", Min = 10, Max = 50, Default = 25, Rounding = 1 })
			v30:AddToggle("BlackflashAutoFeint", { Text = "Auto Feint", Default = true })
			local v31 = BFCTab:AddLeftGroupbox("BFC V2 (Xenon Chain)", "zap")

			v31:AddToggle("BFCV2Enabled", {
				Text = "Enable BFC V2 Chain",
				Default = false,
				Callback = function(arg)
					pcall(function()
						if arg then
							if bf then
								bf.start()
							end
						elseif bf then
							bf.stop()
						end
					end)
				end,
			})

			v31:AddToggle("BFCV2AutoLock", { Text = "Auto Lock Target", Default = true })

			v31:AddDropdown("BFCV2LockMode", {
				Values = { "Character", "Camera", "None" },
				Default = "Character",
				Multi = false,
				Text = "Lock-On Mode (Xenon)",
			})

			v31:AddToggle("BFCV2AutoFeint", { Text = "Auto Feint (If Not Behind)", Default = false })
			v31:AddSlider("BFCV2Range", { Text = "Target Range", Min = 5, Max = 60, Default = 30, Rounding = 0 })
			v31:AddSlider("BFCV2Cooldown", { Text = "Manual Cooldown", Min = 0.1, Max = 3, Default = 0.8, Rounding = 2 })

			v31:AddLabel("Manual BFC Keybind"):AddKeyPicker("BFCV2ManualKey", {
				NoUI = false,
				Default = "M",
				Text = "Manual BFC Keybind",
				Callback = function()
					pcall(function()
						if bf then
							bf.manual()
						end
					end)
				end,
			})

			local v32 = BFCTab:AddRightGroupbox("BFC V2 Arc & Tuning", "sliders")
			v32:AddToggle("BFCV2Customize", { Text = "Customize Arc Settings", Default = false })
			v32:AddToggle("BFCV2LockArc", { Text = "Lock Arc Point", Default = false })
			v32:AddToggle("BFCV2Backflip", { Text = "Backflip Dash", Default = false })
			v32:AddToggle("BFCV2BackPred", { Text = "Predict Back Position", Default = false })
			v32:AddToggle("BFCV2ArcOver", { Text = "Arc Over Target", Default = false })
			v32:AddToggle("BFCV2Curve", { Text = "Curve Easing", Default = false })

			v32:AddDropdown("BFCV2CurveType", {
				Values = { "Linear", "Ease-In", "Ease-Out", "Ease-In-Out" },
				Default = "Ease-Out",
				Text = "Curve Easing Type",
			})

			v32:AddToggle("BFCV2CycleCurve", { Text = "Cycle Curve Per Hit", Default = false })
			v32:AddToggle("BFCV2CurveDash", { Text = "Curve Affects Dash", Default = false })
			v32:AddSlider("BFCV2ArcRadius", { Text = "Arc Radius", Min = 2, Max = 15, Default = 5, Rounding = 1 })
			v32:AddSlider("BFCV2ArcDuration", { Text = "Arc Duration", Min = 0.15, Max = 1, Default = 0.4, Rounding = 2 })
			v32:AddSlider("BFCV2ArcHeight", { Text = "Arc Height", Min = 4, Max = 30, Default = 12, Rounding = 1 })
			v32:AddSlider("BFCV2MaxArcSpeed", { Text = "Max Arc Speed", Min = 40, Max = 250, Default = 120, Rounding = 0 })
			v32:AddSlider("BFCV2DashMultCap", { Text = "Dash Mult Cap", Min = 0.5, Max = 3, Default = 1.5, Rounding = 2 })
			v32:AddSlider("BFCV2CorrSpeed", { Text = "Correction Speed", Min = 50, Max = 300, Default = 150, Rounding = 0 })
			v32:AddSlider("BFCV2CurvePow", { Text = "Curve Power", Min = 1, Max = 8, Default = 3, Rounding = 1 })
			v32:AddSlider("BFCV2CurveFloor", { Text = "Curve Floor", Min = 0.01, Max = 0.5, Default = 0.08, Rounding = 2 })
			v32:AddSlider("BFCV2DFArcDelay", { Text = "DF Arc Delay", Min = 0.1, Max = 1.2, Default = 0.4, Rounding = 2 })
			v32:AddSlider("BFCV2ABFDelay", { Text = "Xenon ABF Delay (CurseBuild)", Min = 0, Max = 0.3, Default = 0.1, Rounding = 3 })
			v32:AddToggle("BFCV2AutoAngle", { Text = "Auto Angle", Default = false })
			v32:AddSlider("BFCV2AngleVal", { Text = "Angle Value", Min = -45, Max = 45, Default = 15, Rounding = 0 })
			v32:AddSlider("BFCV2BackPredStr", { Text = "Back Pred Strength", Min = 0, Max = 2, Default = 1, Rounding = 2 })

			task.spawn(function()
				local function fn45(...) end
				local function fn46(...) end
				local function fn47(...) end

				local function fn48()
					local ReplicatedStorage_ = game:GetService("ReplicatedStorage")
					local Players_ = game:GetService("Players")

					local tbl17 = {
						rs = ReplicatedStorage_,
						plrs = Players_,
						runs = game:GetService("RunService"),
						uis = game:GetService("UserInputService"),
						debris = game:GetService("Debris"),
						stats = game:GetService("Stats"),
						lp = Players_.LocalPlayer,
						cam = workspace.CurrentCamera,
					}

					tbl17.chars = workspace:WaitForChild("Characters", 5) or workspace:FindFirstChild("Characters")
					tbl17.animfld = ReplicatedStorage_:WaitForChild("Animations", 5)

					if tbl17.animfld then
						local misc = tbl17.animfld:FindFirstChild("Misc")

						if misc then
							local hits = misc:FindFirstChild("Hits")
							local movement = misc:FindFirstChild("Movement")
							tbl17.hits = hits
							tbl17.movefld = movement
						end
					end

					pcall(function()
						tbl17.knit = ReplicatedStorage_:WaitForChild("Knit", 5):WaitForChild("Knit", 5):WaitForChild("Services", 5)
						tbl17.dashrem = tbl17.knit:WaitForChild("MovementService", 5):WaitForChild("RE", 5):WaitForChild("Dash", 5)
						local re = tbl17.knit:WaitForChild("DivergentFistService", 5):WaitForChild("RE", 5)
						local v33 = tbl17
						local v34 = tbl17
						local activated = re:WaitForChild("Activated", 5)
						local effects = re:FindFirstChild("Effects")
						v33.dfact = activated
						v34.dfefx = effects
					end)

					pcall(function()
						tbl17.movectrl = select(2, pcall(require, tbl17.lp.PlayerScripts.Controllers.Character.MovementController))

						if type(tbl17.movectrl) ~= "table" or not tbl17.movectrl.Dash then
							tbl17.movectrl = nil
						end
					end)

					pcall(function()
						tbl17.pingitem = tbl17.stats.Network.ServerStatsItem["Data Ping"]
					end)

					return tbl17
				end

				local v33 = fn48()
				local tbl17 = {}

				local tbl18 = {
					weak = function(arg)
						return setmetatable({}, { __mode = arg or "k" })
					end,
					add = function(arg)
						table.insert(tbl17, arg)
						return arg
					end,
					drop = function(arg)
						for _, v34 in ipairs(arg) do
							pcall(function()
								v34:Disconnect()
							end)
						end

						table.clear(arg)
					end,
					dist2sq = function(o,l)local I,D,S=o.X-l.X,o.Y-l.Y,o.Z-l.Z;return I*I+D*D+S*S;end,
					flat = function(o)local l=Vector3.new(o.X,0,o.Z);return l.Magnitude<0.01 and(Vector3.new(0,0,-1))or l.Unit;end,
					chars = function(...) end,
				}

				local v34 = tbl18.weak()
				local v35 = tbl18.weak()
				tbl18.tracks = function(l)local I=os.clock();local D= v35 [l];if D and I-D<0.05 then local S= v34 [l];if S then return S;end;end;D=l:GetPlayingAnimationTracks(); v34 [l]=D; v35 [l]=I;return D;end
				tbl18.hrp = function(o)return o and(o:FindFirstChild("HumanoidRootPart"));end
				tbl18.alive = function(o)local l=o and(o:FindFirstChildOfClass("Humanoid"));return l and l.Health>0 and l or nil;end
				local tbl19 = {}
				local tbl20 = { data = tbl18.weak(), pingbuf = {}, pingmax = 20, pingidx = 0, pingcnt = 0 }
				tbl19.data = tbl20.data
				tbl19.ping = function(...) end
				local tbl21 = {}
				local tbl22 = {}
				local n27 = 1
				local n28 = 0

				for i = 1, tbl20.pingmax do
					tbl21[i] = n27
					n28 += n27
					tbl22[i] = n28
					n27 *= 1.15
				end

				tbl19.sping = function(...) end
				local n29 = 60

				tbl19.fps = function()
					return n29
				end

				tbl19.upd = function(l,I)if not l then return;end;I=I or( tbl18 .hrp(l));if not I then return;end;local D=os.clock();local S=I.AssemblyLinearVelocity;local u=I.Position;local j= tbl20 .data[l];if not j then  tbl20 .data[l]={svel=S,saccel=Vector3.new(0.0,0.0,0.0),lastvel=S,lastt=D,lastpos=u,posbuf={},posidx=0,poscnt=0,posmax=6,conf=0.5,dirchg=0,angvel=0,angaccel=0,lastlook=I.CFrame.LookVector};return;end;l=D-j.lastt;if l<=0.001 then return;end;j.posidx=j.posidx%j.posmax+1;local o=j.posbuf[j.posidx];if o then o.p=u;o.t=D;else j.posbuf[j.posidx]={p=u,t=D};end;if j.poscnt<j.posmax then j.poscnt=j.poscnt+1;end;o=(u-j.lastpos)/l;o=Vector3.new(o.X,0,o.Z);local A,K=math.max(j.svel.Magnitude*2.5,30)>(S-j.svel).Magnitude and S or(j.svel:Lerp(S,0.15)),Vector3.new(j.svel.X,0,j.svel.Z);S=Vector3.new(A.X,0,A.Z);local h=if K.Magnitude>1 and S.Magnitude>1 then(K.Unit:Dot(S.Unit))else 1;j.dirchg=j.dirchg+(math.clamp(1-h,0,2)-j.dirchg)*0.4;S,K=math.clamp(l*25,0.3,0.85),math.clamp(j.dirchg*3,0,1);j.svel=j.svel:Lerp(A:Lerp(o,0.2),S+(1-S)*K);o=(A-j.lastvel)/l;j.saccel=j.saccel:Lerp(if o.Magnitude>200 then o.Unit*200 else o,math.min(math.clamp(l*12,0.1,0.5)+K*0.3,0.9));o,K=math.clamp((h+1)*0.5,0,1),math.clamp(j.svel.Magnitude/8,0,1);j.conf=j.conf+(o*K-j.conf)*math.clamp(l*8,0.1,0.6);h=I.CFrame.LookVector;S,I=Vector3.new(h.X,0,h.Z),Vector3.new(j.lastlook.X,0,j.lastlook.Z);if S.Magnitude>0.01 and I.Magnitude>0.01 then o,K=math.asin(math.clamp(I.Unit:Cross(S.Unit).Y,-1,1))/l,j.angvel;j.angvel=j.angvel+(o-j.angvel)*math.clamp(l*15,0.15,0.6);local o=math.clamp((j.angvel-K)/l,-50,50);j.angaccel=j.angaccel+(o-j.angaccel)*math.clamp(l*10,0.1,0.5);end;j.lastlook=h;j.lastvel=A;j.lastpos=u;j.lastt=D;end
				tbl19.predict = function(...) end
				local dashids = {}
				local v36 = tbl18.weak()

				if v33.movefld then
					for _, child in ipairs(v33.movefld:GetChildren()) do
						local isAnimation = child:IsA("Animation")
						local flag13

						if isAnimation then
							flag13 = child.Name == "DashRight" or child.Name == "DashLeft"
						else
							flag13 = isAnimation
						end

						if flag13 then
							dashids[child.AnimationId] = true
						end
					end
				end

				tbl19.dashids = dashids
				tbl19.sidedash = function(l)local I= v36 [l];if I then if I>os.clock()then return true;end; v36 [l]=nil;end;I=l and(l:FindFirstChild("Humanoid"));local D=I and(I:FindFirstChildOfClass("Animator"));if not D then return false;end;for I,I in  tbl18 .tracks(D)do local D=I.Animation;if D and  dashids [D.AnimationId]then  v36 [l]=os.clock()+0.2;return true;end;end;return false;end
				local connection4 = nil
				local n30 = 0

				local function fn49()
					return fn45("BFCV2BackPred", false) == true or fn45("BFCV2AutoLock", true) == true
				end

				tbl19.start = function()
					if connection4 then
						return
					end
					connection4 = v33.runs.Heartbeat:Connect(function(...) end)
					tbl18.add(connection4)
					table.insert(tbl9, connection4)
				end

				tbl19.stop = function()
					if not connection4 then
						return
					end
					connection4:Disconnect()
					connection4 = nil
				end

				local tbl23 = {
					Back = Vector3.new(0, 0, 1),
					Front = Vector3.new(0, 0, -1),
					Left = Vector3.new(-1, 0, 0),
					Right = Vector3.new(1, 0, 0),
				}

				local tbl24

				tbl24 = {
					firesvc = function(arg, arg2, ...)
						local knit = v33.knit and v33.knit:FindFirstChild(arg)
						local re = knit and knit:FindFirstChild("RE")
						re = re and re:FindFirstChild(arg2)
						if not re then
							return false
						end
						re:FireServer(...)
						return true
					end,
					ability = function(arg, arg2)
						local character = v33.lp.Character
						character = character and character:FindFirstChild("Moveset")
						character = character and character:FindFirstChild(arg)
						if not character then
							return
						end
						tbl24.firesvc(arg2, "Activated", character)
					end,
					blackflash = function()
						tbl24.ability("Divergent Fist", "DivergentFistService")
					end,
					moveset = function()
						local character = v33.lp.Character
						return character and character:GetAttribute("Moveset")
					end,
					dashlocal = function(arg, arg2)
						local movectrl = v33.movectrl
						if not (movectrl and movectrl.Dash) then
							return false
						end
						local ok = pcall(movectrl.Dash, movectrl, v33.lp, arg, arg2)

						if not ok then
							pcall(function()
								local MovementController = require(v33.rs.Knit.Knit).GetController("MovementController")

								if MovementController and MovementController ~= movectrl then
									v33.movectrl = MovementController
									movectrl = MovementController
								end
							end)

							ok = pcall(movectrl.Dash, movectrl, v33.lp, arg, arg2)
						end

						return ok
					end,
					dashforce = function(arg, arg2)
						if not arg then
							return false
						end
						local torso = arg:FindFirstChild("Torso")
						local v37 = tbl18.hrp(arg)
						if not (torso and v37) then
							return false
						end

						for _, child in ipairs(torso:GetChildren()) do
							if child.Name == "MovementForce" then
								pcall(child.Destroy, child)
							end
						end

						local movementForce = v37:FindFirstChild("MovementForce")

						if movementForce then
							pcall(movementForce.Destroy, movementForce)
						end

						local humanoid2 = arg:FindFirstChildOfClass("Humanoid")

						if humanoid2 and v33.movefld then
							local v38 = v33.movefld:FindFirstChild("Dash" .. arg2)

							if v38 then
								pcall(function()
									local v39 = humanoid2:LoadAnimation(v38)
									v39.Priority = Enum.AnimationPriority.Movement
									v39:Play(nil, nil, arg2 == "Back" and 0.8 or 1.8)
								end)
							end
						end

						local info = arg:FindFirstChild("Info")
						info = info and info:FindFirstChild("DashMultiplier")
						local bodyVelocity = Instance.new("BodyVelocity")
						bodyVelocity.MaxForce = Vector3.new(40000, 0, 40000)
						bodyVelocity.P = 400000
						bodyVelocity.Name = "MovementForce"
						bodyVelocity.Velocity = v37.CFrame:VectorToWorldSpace(tbl23[arg2] or tbl23.Right) * 200 * (info and info.Value or 1)
						bodyVelocity.Parent = torso
						v33.debris:AddItem(bodyVelocity, 0.4)
						return true
					end,
					dash = function(arg, arg2)
						if tbl24.dashlocal(arg, arg2) then
							return true
						end
						return tbl24.dashforce(arg, arg2)
					end,
				}

				local v37 = nil
				local n31 = 0

				tbl24.feint = function()
					local character = v33.lp.Character
					if not character or character:GetAttribute("Moveset") ~= "Itadori" then
						return
					end
					n31 = os.clock()
					tbl24.firesvc("ItadoriService", "RightActivated", nil)

					task.defer(function()
						if character ~= v33.lp.Character then
							return
						end
						local humanoid2 = character:FindFirstChildOfClass("Humanoid")
						humanoid2 = humanoid2 and humanoid2:FindFirstChildOfClass("Animator")
						if not humanoid2 then
							return
						end
						local v38 = nil
						local huge = math.huge

						for _, v39 in tbl18.tracks(humanoid2) do
							local timePosition = v39.TimePosition or math.huge

							if timePosition < huge then
								v38 = v39
								huge = timePosition
							end
						end

						if not v38 then
							return
						end
						v37 = v38

						v38.Stopped:Once(function()
							if v37 == v38 then
								v37 = nil
							end
						end)
					end)
				end

				tbl24.feintblocked = function()
					if not v37 then
						return false
					end

					local ok, result = pcall(function()
						return v37.IsPlaying
					end)

					if ok and result then
						return true
					end
					v37 = nil
					return false
				end

				tbl24.skipbf = function()
					return os.clock() - n31 < 0.45
				end

				tbl24.dfcd = function()
					local playerGui = v33.lp:FindFirstChildWhichIsA("PlayerGui")
					playerGui = playerGui and playerGui:FindFirstChild("Main")
					playerGui = playerGui and playerGui:FindFirstChild("Moveset")
					local divergentFist = playerGui and playerGui:FindFirstChild("Divergent Fist")
					if not divergentFist then
						return false
					end
					local cooldown = divergentFist:FindFirstChild("Cooldown")
					if not cooldown then
						return false
					end
					return cooldown.Size.Y.Scale > 0
				end

				local v38 = nil
				local n32 = 0

				local tbl25 = {
					face = function(...) end,
					resetrot = function()
						local character = v33.lp.Character
						local humanoid2 = character and character:FindFirstChildOfClass("Humanoid")
						if not humanoid2 then
							return
						end
						humanoid2.AutoRotate = true
					end,
				}

				local tbl26 = {}
				local n33 = 0
				local n34 = 0

				for i = 1, 12 do
					tbl26[i] = { t = 0, lk = Vector3.zero }
				end

				local n35 = 0
				local v39 = nil
				local n36 = 0
				local n37 = 0
				local v40 = nil
				local vector = Vector3.zero

				tbl25.aareset = function()
					n33 = 0
					n34 = 0
					n35 = 0
					v39 = nil
					n36 = 0
					n37 = 0
					v40 = nil
					vector = Vector3.zero
				end

				tbl25.reset = function()
					v38 = nil
					n32 = 0
					tbl25.aareset()
					tbl25.resetrot()
				end

				tbl25.aaupdate = function(...) end
				tbl25.aoff = function(...) end
				tbl25.rotpos = function(o,l,I)if I==0 then return l;end;local D,S,u=math.rad(I),l.X-o.X,l.Z-o.Z;local I,j=math.cos(D),math.sin(D);return Vector3.new(o.X+S*I+u*j,l.Y,o.Z-S*j+u*I);end

				tbl25.behind = function(arg, arg2)
					local v41 = tbl18.hrp(arg)
					local v42 = tbl18.hrp(arg2)
					if not (v41 and v42) then
						return false
					end
					local lookVector = v42.CFrame.LookVector
					local n38 = v41.Position - v42.Position
					if n38.Magnitude < 0.01 then
						return false
					end
					return lookVector:Dot(n38.Unit) < -0.5
				end

				local connection5 = nil
				local v41 = nil

				tbl25.set = function(tgt)
					local v42 = tbl25
					v41 = tgt
					v42.tgt = tgt
				end

				tbl25.running = function()
					return connection5 ~= nil
				end

				tbl25.closest = function()local l= v33 .lp.Character;local I= tbl18 .hrp(l);if not I then return nil;end;local D,S,u=I.Position,1/0;for j,A in ipairs( tbl18 .chars())do if A~=l and( tbl18 .alive(A))then j= tbl18 .hrp(A);if j then I= tbl18 .dist2sq(D,j.Position);if I<S then S,u=I,A;end;end;end;end;return u;end

				tbl25.start = function(arg)
					tbl25.set(arg)
					if connection5 then
						return
					end
					connection5 = v33.runs.Heartbeat:Connect(function(...) end)
					tbl18.add(connection5)
					table.insert(tbl9, connection5)
				end

				tbl25.stop = function()
					tbl25.set(nil)

					if connection5 then
						connection5:Disconnect()
						connection5 = nil
					end

					tbl25.reset()
				end

				bf = { en = false, active = false, target = nil, hitidx = 0 }

				local tbl27 = {
					["rbxassetid://100962226150441"] = true,
					["rbxassetid://95852624447551"] = true,
					["rbxassetid://74145636023952"] = true,
					["rbxassetid://123171106092050"] = true,
				}

				local tbl28 = {
					["100962226150441"] = true,
					["95852624447551"] = true,
					["74145636023952"] = true,
					["123171106092050"] = true,
				}

				local tbl29 = {}
				local n38 = 0
				local n39 = 0
				local flag13 = false
				local n40 = 0
				local n41 = 0
				local connection6 = nil
				local n42 = 0
				local connection7 = nil

				bf.abfstart = function()
					if connection7 then
						connection7:Disconnect()
						connection7 = nil
					end

					if not v33.dfefx then
						return false
					end

					connection7 = v33.dfefx.OnClientEvent:Connect(function(arg, arg2)
						if arg ~= "CurseBuild" or arg2 ~= v33.lp.Character then
							return
						end
						local n43 = tonumber(fn45("BFCV2ABFDelay", 0.1)) or 0.1

						if n43 > 0 then
							task.wait(n43)
						end

						if not connection7 or tbl24.skipbf() or tbl24.feintblocked() then
							return
						end

						pcall(function()
							local character = v33.lp.Character

							if character then
								local moveset = character:FindFirstChild("Moveset")
								moveset = moveset and moveset:FindFirstChild("Divergent Fist")

								if moveset and v33.dfact then
									v33.dfact:FireServer(moveset, nil)
								end
							end
						end)
					end)

					tbl18.add(connection7)
					table.insert(tbl9, connection7)
					return true
				end

				bf.abfstop = function()
					if connection7 then
						connection7:Disconnect()
						connection7 = nil
					end
				end

				local function isid(arg)
					if not arg then
						return false
					end

					if tbl27[arg] then
						return true
					end
					local match = tostring(arg):match("%d+")
					return match ~= nil and tbl28[match] == true
				end

				local function isidEx(arg)
					if not arg or not arg.Animation then
						return false
					end

					if isid(arg.Animation.AnimationId) then
						return true
					end
					local name = arg.Name and string.lower(arg.Name) or ""
					if name:find("divergent") or name:find("straight") or name:find("4c") or name:find("cursed strike") then
						return true
					end
					local str5 = tostring(arg.Animation.AnimationId or "")
					if str5:find("123171106092050") or str5:find("72475960800126") then
						return true
					end
					return false
				end

				bf.isid = isid
				bf.isidEx = isidEx
				local function fn50(o)return Vector3.new(o.X,0,o.Z);end
				bf.ease = function(...) end

				local function fn51()
					if fn47("BFCV2Curve") and fn47("BFCV2CurveDash") then
						return bf.ease(0)
					end
					return 1
				end

				bf.closest = function(...) end

				bf.autotgt = function()
					return bf.closest()
				end

				local function fn52(arg)
					if fn47("BFCV2Backflip") then
						return "Back"
					end
					local v42 = tbl18.hrp(v33.lp.Character)
					local v43 = tbl18.hrp(arg)
					if not (v42 and v43) then
						return "Right"
					end
					local v44 = fn50(v43.CFrame.LookVector)
					if v44.Magnitude < 0.01 then
						return "Right"
					end
					local position = v42.Position
					local v45 = fn50(v43.Position - v44.Unit * fn46("BFCV2ArcRadius", 5) - position)
					if v45.Magnitude < 0.01 then
						return "Right"
					end
					local v46 = fn50(v42.CFrame.RightVector)
					if v46.Magnitude < 0.01 then
						return "Right"
					end
					return v45.Unit:Dot(v46.Unit) >= 0 and "Right" or "Left"
				end

				local function fn53(arg, arg2)
					local v42 = tbl18.hrp(arg)
					if not v42 then
						return nil
					end
					local v43 = fn50(v42.CFrame.LookVector)
					if v43.Magnitude < 0.01 then
						return nil
					end
					local unit = v43.Unit
					local v44 = tbl19.data[arg]
					if not v44 then
						return unit
					end
					local n43 = math.clamp(v44.angvel * arg2 + 0.5 * v44.angaccel * arg2 * arg2, -2.4, 2.4)
					local v45 = math.cos(n43)
					local v46 = math.sin(n43)
					return Vector3.new(unit.X * v45 - unit.Z * v46, 0, unit.X * v46 + unit.Z * v45).Unit
				end

				local function fn54(arg)
					local v42 = tbl18.hrp(arg)
					if not v42 then
						return nil
					end
					local position = v42.Position
					local v43 = fn50(v42.CFrame.LookVector)
					if v43.Magnitude < 0.01 then
						return nil
					end
					local unit = v43.Unit

					if fn47("BFCV2BackPred") then
						local n43 = tonumber(fn45("BFCV2BackPredStr", 1)) or 1
						local max = math.max
						local n44 = (tbl19.sping() / 1000 + 1 / max(tbl19.fps(), 30) * 0.5) * n43
						local v44 = tbl19.predict(arg, 0)

						if v44 then
							position = position:Lerp(v44, math.clamp(n43, 0, 2))
						end

						unit = fn53(arg, n44) or unit
					end

					return position - unit * fn46("BFCV2ArcRadius", 5), unit, position
				end

				local function fn55(arg)
					arg = arg and arg:FindFirstChild("Moveset")
					arg = arg and arg:FindFirstChild("Divergent Fist")

					if arg and v33.dfact then
						v33.dfact:FireServer(arg, nil)
					end
				end

				local function fn56(arg)
					local v42 = tbl18.hrp(v33.lp.Character)
					local v43 = tbl18.hrp(arg)
					if not (v42 and v43) then
						return 1
					end

					if fn47("BFCV2ArcOver") then
						return 0.15 * fn51()
					end
					local v44, v45 = fn54(arg)
					if not v45 then
						return 1
					end
					local BFCV2ArcRadius = fn46("BFCV2ArcRadius", 5)
					local v46 = fn50(v42.Position - v43.Position)
					local n43 = math.max(v46.Magnitude, 0.01)
					local v47 = math.atan2(v46.X, v46.Z)
					local n44 = math.abs((math.atan2(-v45.X, -v45.Z) - v47 + 3.1415926535897931) % 6.2831853071795862 - 3.1415926535897931) * (n43 + BFCV2ArcRadius) * 0.5
					local n45 = math.abs(n43 - BFCV2ArcRadius)
					return math.clamp(math.sqrt(n44 * n44 + n45 * n45) / 20 * 1.15, 0.15, fn46("BFCV2DashMultCap", 1.5)) * fn51()
				end

				local function fn57(arg)
					n38 += 1
					local v42 = n38

					task.spawn(function()
						local character = v33.lp.Character
						local torso = character and character:FindFirstChild("Torso")
						local v43 = tbl18.hrp(character)
						local v44 = tbl18.hrp(arg)
						if not (torso and v43 and v44) then
							return
						end
						local n43 = 0
						local movementForce

						while true do
							movementForce = torso:FindFirstChild("MovementForce")

							if movementForce then
								break
							else
								n43 += task.wait()
								if not (n43 >= 0.08) then
									continue
								end
								break
							end
						end

						if not (movementForce and movementForce:IsA("BodyVelocity")) or n38 ~= v42 then
							return
						end
						local BFCV2ArcOver = fn47("BFCV2ArcOver")
						local BFCV2ArcHeight = fn46("BFCV2ArcHeight", 12)
						local position = v43.Position
						local maxForce = movementForce.MaxForce
						movementForce.MaxForce = Vector3.new(math.huge, BFCV2ArcOver and math.huge or maxForce.Y, math.huge)
						local numberValue = movementForce:FindFirstChildWhichIsA("NumberValue")

						if numberValue then
							pcall(numberValue.Destroy, numberValue)
						end

						movementForce.Velocity = Vector3.zero

						if BFCV2ArcOver then
							v43.AssemblyLinearVelocity = Vector3.zero
						end

						local BFCV2ArcRadius = fn46("BFCV2ArcRadius", 5)
						local position2 = v44.Position
						local v45 = fn50(v43.Position - position2)
						local n44 = math.max(v45.Magnitude, 3)
						local v46 = math.atan2(v45.X, v45.Z)
						local v47, v48 = fn54(arg)
						if not v48 then
							movementForce.MaxForce = maxForce
							return
						end
						local n45 = (math.atan2(-v48.X, -v48.Z) - v46 + 3.1415926535897931) % 6.2831853071795862 - 3.1415926535897931

						if n45 >= 0 and 1 then
						end

						local BFCV2ArcDuration = fn46("BFCV2ArcDuration", 0.4)
						local n46 = fn47("BFCV2LockArc") and v44.Position + fn50(v44.AssemblyLinearVelocity) * BFCV2ArcDuration * 0.4 or nil
						math.clamp((BFCV2ArcOver and fn50(position - position2 - v48 * BFCV2ArcRadius).Magnitude + BFCV2ArcHeight * 2 or math.abs(n45) * math.max(n44, BFCV2ArcRadius)) / BFCV2ArcDuration * 2.5, 20, fn46("BFCV2MaxArcSpeed", 120))
						os.clock()

						local connection8 = movementForce.ChildAdded:Connect(function(child)
							if child:IsA("NumberValue") then
								pcall(child.Destroy, child)
							end
						end)

						local connection9 = v33.runs.Stepped:Connect(function(...) end)

						task.delay(BFCV2ArcDuration + 0.03, function()
							if connection9 then
								connection9:Disconnect()
								connection9 = nil
							end

							if connection8 then
								connection8:Disconnect()
								connection8 = nil
							end

							if movementForce and movementForce.Parent then
								movementForce.MaxForce = maxForce
							end

							if n38 ~= v42 then
								return
							end
							local v49 = tbl18.hrp(v33.lp.Character)
							local v50 = tbl18.hrp(arg)
							if not (v49 and v50) then
								return
							end
							local n47 = n46 and n46 - v48 * BFCV2ArcRadius or nil

							if not n47 then
								local v51, v52 = fn54(arg)
								if not v52 then
									return
								end
								n47 = v50.Position - v52 * BFCV2ArcRadius
							end

							local v51 = fn50(n47 - v49.Position)
							local magnitude = v51.Magnitude

							if magnitude > 0.3 and magnitude <= 12 then
								local bodyVelocity = Instance.new("BodyVelocity")
								bodyVelocity.Name = "DFCorr"
								bodyVelocity.MaxForce = Vector3.new(80000, 0, 80000)
								bodyVelocity.P = 80000
								bodyVelocity.Velocity = v51.Unit * math.min(magnitude / 0.12, fn46("BFCV2CorrSpeed", 150))
								bodyVelocity.Parent = v49
								v33.debris:AddItem(bodyVelocity, 0.12)
							end

							local v52 = fn50(v50.Position - v49.Position)

							if v52.Magnitude > 0.01 then
								v49.CFrame = CFrame.new(v49.Position, v49.Position + v52)
							end
						end)
					end)
				end

				local cameraType = nil

				bf.startlock = function(target)
					if fn45("BFCV2AutoLock", true) ~= true then
						return
					end
					local BFCV2LockMode = fn45("BFCV2LockMode", "Character")
					if BFCV2LockMode == "None" then
						bf.target = target
						return
					end

					if bf.target == target and connection6 and connection6.Connected then
						return
					end

					if connection6 then
						connection6:Disconnect()
						connection6 = nil
					end

					n42 += 1
					bf.target = target

					if BFCV2LockMode == "Camera" then
						local cam = v33.cam or workspace.CurrentCamera

						if cam then
							cameraType = cam.CameraType
						end

						connection6 = v33.runs.Heartbeat:Connect(function(...) end)
					else
						connection6 = v33.runs.Heartbeat:Connect(function(...) end)
					end

					tbl18.add(connection6)
					table.insert(tbl9, connection6)
				end

				bf.stoplock = function()
					bf.target = nil

					if connection6 then
						connection6:Disconnect()
						connection6 = nil
					end

					tbl25.aareset()
					tbl25.reset()

					if cameraType then
						pcall(function()
							local cam = v33.cam or workspace.CurrentCamera

							if cam then
								cam.CameraType = cameraType
							end
						end)

						cameraType = nil
					end

					pcall(function()
						v33.lp.DevEnableMouseLock = false
					end)
				end

				local function fn58(arg)
					local v42 = n42
					local character = v33.lp.Character
					character = character and character:FindFirstChildOfClass("Humanoid")
					character = character and character:FindFirstChildOfClass("Animator")
					if not character then
						bf.stoplock()
						return
					end
					local flag14 = false
					local connection8 = nil

					local function fn59()
						if flag14 then
							return
						end
						flag14 = true

						if connection8 then
							connection8:Disconnect()
							connection8 = nil
						end

						if v42 ~= n42 then
							return
						end
						bf.stoplock()
					end

					task.delay(arg, fn59)

					for _, v43 in ipairs(character:GetPlayingAnimationTracks()) do
						if bf.isidEx and bf.isidEx(v43) then
							v43.Stopped:Once(fn59)
							return
						end
						local animation = v43.Animation
						if animation and isid(animation.AnimationId) then
							v43.Stopped:Once(fn59)
							return
						end
					end

					connection8 = character.AnimationPlayed:Connect(function(arg2)
						if bf.isidEx and bf.isidEx(arg2) then
							connection8:Disconnect()
							connection8 = nil
							arg2.Stopped:Once(fn59)
							return
						end

						local animation = arg2.Animation
						if not (animation and isid(animation.AnimationId)) then
							return
						end
						connection8:Disconnect()
						connection8 = nil
						arg2.Stopped:Once(fn59)
					end)
				end

				local function fn59(arg)
					local v42 = tbl18.hrp(v33.lp.Character)
					local v43 = tbl18.hrp(arg)
					if not (v42 and v43) then
						return
					end
					local v44 = fn50(v43.Position - v42.Position)

					if v44.Magnitude > 0.01 then
						v42.CFrame = CFrame.new(v42.Position, v42.Position + v44)
					end
				end

				local function fn60(arg, value)
					local info = arg:FindFirstChild("Info")
					if not info then
						return nil
					end
					local dashMultiplier = info:FindFirstChild("DashMultiplier")
					local flag14 = dashMultiplier ~= nil
					local value2 = dashMultiplier and dashMultiplier.Value or nil

					if not dashMultiplier then
						dashMultiplier = Instance.new("NumberValue")
						dashMultiplier.Name = "DashMultiplier"
						dashMultiplier.Parent = info
					end

					dashMultiplier.Value = value

					task.delay(0.42, function()
						if not dashMultiplier.Parent then
							return
						end

						if flag14 then
							dashMultiplier.Value = value2 or 1
						else
							pcall(dashMultiplier.Destroy, dashMultiplier)
						end
					end)

					return dashMultiplier
				end

				local function dodash(arg, arg2, arg3)
					if bf.active then
						return
					end
					local flag14 = not arg3
					if flag14 and tbl24.dfcd() then
						return
					end

					if fn45("BFCV2AutoLock", true) == true then
						arg = bf.autotgt() or arg
					end

					if not arg then
						return
					end
					bf.active = true
					bf.startlock(arg)
					local character = v33.lp.Character

					if not (character and character:FindFirstChild("Info")) then
						bf.active = false
						bf.stoplock()
						return
					end

					local v42 = fn52(arg)
					fn60(character, fn56(arg))

					if flag14 then
						fn55(character)
					end

					if v33.dashrem then
						v33.dashrem:FireServer(v42)
					end

					tbl24.dash(character, v42)
					local flag15 = arg2 ~= nil and arg2:match("123171106092050") ~= nil

					if arg3 or not flag15 then
						fn57(arg)
					end

					task.delay(0.3, function()
						if fn45("BFCV2AutoFeint", false) == true and arg and arg.Parent and not tbl25.behind(v33.lp.Character, arg) then
							local now2 = os.clock()
							flag13 = true
							n40 = now2
							tbl24.feint()
							bf.active = false
							bf.stoplock()
							return
						end

						flag13 = false

						if not tbl24.skipbf() and not tbl24.feintblocked() then
							tbl24.blackflash()

							task.delay(0.08, function()
								if not tbl24.skipbf() and not tbl24.feintblocked() then
									pcall(tbl24.blackflash)
								end
							end)
						elseif arg3 then
							pcall(tbl24.blackflash)
						end

						if fn45("BFCV2LockMode", "Character") == "Character" then
							fn59(arg)
						end

						task.wait(0.15)
						bf.active = false
						fn58(2)
					end)
				end

				bf.dodash = dodash

				local function fn61(arg)
					if not bf.en or bf.active then
						return
					end
					local now2 = os.clock()
					if now2 - n39 < 0.12 or now2 - n40 < 0.5 then
						return
					end
					local target = bf.target or bf.autotgt()

					if not target then
						n39 = now2
						bf.hitidx = bf.hitidx + 1

						task.delay(0.05, function()
							if not tbl24.skipbf() then
								tbl24.blackflash()
							end
						end)

						return
					end

					local v42 = tbl18.hrp(v33.lp.Character)
					local v43 = tbl18.hrp(target)

					if not (v42 and v43) then
						n39 = now2
						task.delay(0.05, tbl24.blackflash)
						return
					end

					local n43 = tonumber(fn45("BFCV2Range", 30)) or 30

					if n43 * n43 < tbl18.dist2sq(v42.Position, v43.Position) then
						n39 = now2
						bf.hitidx = bf.hitidx + 1
						task.delay(0.05, tbl24.blackflash)
						return
					end

					n39 = now2
					bf.hitidx = bf.hitidx + 1
					task.spawn(dodash, target, arg, true)
				end

				local function fn62()
					local character = v33.lp.Character
					local humanoid2 = character and character:FindFirstChildOfClass("Humanoid")
					if not humanoid2 then
						return
					end
					local animator = humanoid2:WaitForChild("Animator", 5)
					if not animator then
						return
					end

					local connection8 = animator.AnimationPlayed:Connect(function(arg)
						if not bf.en or bf.active then
							return
						end

						if os.clock() - n40 < 0.5 then
							return
						end

						if bf.isidEx and bf.isidEx(arg) then
							fn61(arg.Animation.AnimationId)
						elseif arg.Animation and isid(arg.Animation.AnimationId) then
							fn61(arg.Animation.AnimationId)
						end
					end)

					tbl29[#tbl29 + 1] = connection8
					tbl18.add(connection8)
					table.insert(tbl9, connection8)
				end

				bf.start = function()
					bf.stop()
					bf.en = true
					pcall(bf.abfstart)
					fn62()

					local connection8 = v33.lp.CharacterAdded:Connect(function()
						bf.active = false
						task.wait(1)

						if bf.en then
							fn62()
						end
					end)

					tbl29[#tbl29 + 1] = connection8
					tbl18.add(connection8)
					table.insert(tbl9, connection8)
				end

				bf.stop = function()
					pcall(bf.abfstop)
					local v42 = bf
					bf.en = false
					v42.active = false
					bf.stoplock()

					for i = #tbl29, 1, -1 do
						tbl29[i]:Disconnect()
						tbl29[i] = nil
					end
				end

				bf.manual = function()
					local now2 = os.clock()
					if now2 - n41 < (tonumber(fn45("BFCV2Cooldown", 0.8)) or 0.8) then
						return
					end

					if bf.active or tbl24.dfcd() then
						return
					end
					local character = v33.lp.Character
					if not character then
						return
					end
					local attribute2 = character:GetAttribute("Moveset") or v33.lp:GetAttribute("Moveset")
					if attribute2 and attribute2 ~= "Itadori" then
						return
					end
					local target = bf.target or bf.autotgt()
					local v42 = tbl18.hrp(character)
					local v43 = target and tbl18.hrp(target)
					local n43 = tonumber(fn45("BFCV2Range", 30)) or 30
					if not (target and v42 and v43) or tbl18.dist2sq(v42.Position, v43.Position) > n43 * n43 then
						tbl24.blackflash()
						return
					end
					bf.startlock(target)
					local v44 = bf
					n41 = now2
					v44.active = true
					bf.hitidx = bf.hitidx + 1
					local v45 = fn52(target)
					fn60(character, fn56(target))

					if v33.dashrem then
						v33.dashrem:FireServer(v45)
					end

					tbl24.dash(character, v45)
					fn57(target)

					task.spawn(function()
						task.wait(tonumber(fn45("BFCV2DFArcDelay", 0.4)) or 0.4)

						if fn45("BFCV2AutoFeint", false) == true and target and target.Parent and not tbl25.behind(v33.lp.Character, target) then
							local now3 = os.clock()
							flag13 = true
							n40 = now3
							tbl24.feint()
							bf.active = false
							bf.stoplock()
							return
						end

						flag13 = false
						fn55(v33.lp.Character)
						fn59(target)
						task.wait(0.15)
						bf.active = false
						fn58(2)
					end)
				end

				tbl19.start()
			end)
		end)

		pcall(function()
			local Yuji = CharacterTab:AddLeftGroupbox("Yuji", "sword")

			Yuji:AddToggle("AlwaysAirVariant", {
				Text = "Always Air Variant",
				Default = false,
				Callback = function(arg)
					pcall(function()
						local ToolController = require(game:GetService("ReplicatedStorage").Knit.Knit).GetController("ToolController")

						if ToolController then
							if arg and useTool then
								ToolController.UseTool = useTool
							elseif ToolController.OriginalUseTool then
								ToolController.UseTool = ToolController.OriginalUseTool
							end
						end
					end)
				end,
			}):AddKeyPicker("AlwaysAirVariantKeybind", {
				Default = "None",
				SyncToggleState = true,
				Mode = "Toggle",
				Text = "Always Air Variant Keybind",
				NoUI = false,
			})

			Yuji:AddToggle("AutoWCS", { Text = "Auto WCS", Default = false })
			local Hakari = CharacterTab:AddLeftGroupbox("Hakari", "ticket")
			Hakari:AddToggle("AutoDoor", { Text = "Auto Door (Hakari)", Default = false })
			Hakari:AddToggle("FeverCrusher", { Text = "Fever Crusher", Default = false })
			local Yuki = CharacterTab:AddLeftGroupbox("Yuki", "star")
			Yuki:AddToggle("GarudaRebound", { Text = "Garuda Rebound", Default = false })
			Yuki:AddSlider("GarudaDelay", { Text = "Garuda Delay", Min = 0, Max = 5, Default = 1, Rounding = 1 })

			CharacterTab:AddRightGroupbox("Mahito", "zap"):AddToggle("AutoMahitoBlackflash", {
				Text = "Auto Mahito Blackflash",
				Default = false,
				Callback = function(arg)
					if arg then
						if LocalPlayer.Character then
							fn20(LocalPlayer.Character)
						end
					elseif connection2 then
						connection2:Disconnect()
						connection2 = nil
					end
				end,
			})

			local Hiromi = CharacterTab:AddRightGroupbox("Hiromi", "gavel")

			Hiromi:AddToggle("AutoQTEEnabled", {
				Text = "Enable Auto QTE",
				Default = false,
				Callback = function(arg)
					if arg then
						fn25()
					else
						fn26()
					end
				end,
			})

			Hiromi:AddToggle("AutoDomain", {
				Text = "Auto Domain Vote",
				Default = false,
				Callback = function(...)
					if type(fn37) == "function" then
						return fn37(...)
					end
				end,
			})

			local Megumi = CharacterTab:AddRightGroupbox("Megumi", "zap")
			Megumi:AddToggle("AutoNueVariant", { Text = "Auto Nue Variant", Default = false })
			Megumi:AddToggle("AutoFrogVariant", { Text = "Auto Frog Variant", Default = false })

			CharacterTab:AddRightGroupbox("Nanami", "zap"):AddToggle("AutoRatio", {
				Text = "Auto Ratio",
				Default = false,
				Callback = function(...)
					if type(fn36) == "function" then
						return fn36(...)
					end
				end,
			})

			local Todo = CharacterTab:AddRightGroupbox("Todo", "zap")

			Todo:AddToggle("PerfectSwap", {
				Text = "Perfect Swap",
				Default = false,
				Callback = function(...)
					if type(fn35) == "function" then
						return fn35(...)
					end
				end,
			})

			Todo:AddToggle("ClapTPEnabled", { Text = "Enable Clap Teleport", Default = false })

			Todo:AddButton("Clap Teleport", function()
				if type(fn34) == "function" then
					fn34()
				end
			end)

			Todo:AddLabel("Clap TP Keybind"):AddKeyPicker("ClapTPKeybind", {
				Default = "None",
				Mode = "Press",
				Text = "Clap TP Keybind",
				NoUI = false,
				Callback = function()
					if type(fn34) == "function" then
						fn34()
					end
				end,
			})

			Todo:AddDropdown("ClapTPMode", {
				Values = { "Behind", "Below", "Above" },
				Default = "Behind",
				Multi = false,
				Text = "Teleport Position",
			})

			Todo:AddDropdown("ClapTPTarget", { Values = { "None" }, Default = "None", Multi = false, Text = "Target Player" })
			Todo:AddSlider("ClapTPBehindOffset", { Text = "Behind Offset", Min = 1, Max = 12, Default = 4, Rounding = 1 })
			Todo:AddSlider("ClapTPBelowOffset", { Text = "Below Offset", Min = -10, Max = -1, Default = -3, Rounding = 1 })
			Todo:AddSlider("ClapTPAboveOffset", { Text = "Above Offset", Min = 1, Max = 12, Default = 5, Rounding = 1 })
			Todo:AddSlider("ClapTPPreWait", { Text = "Pre-Fire Wait (s)", Min = 0.05, Max = 1, Default = 0.4, Rounding = 2 })
			Todo:AddSlider("ClapTPSnapWait", { Text = "Snap-Back Wait (s)", Min = 0, Max = 0.5, Default = 0.1, Rounding = 2 })
			Todo:AddSlider("ClapTPFollowWait", { Text = "Follow Wait (s)", Min = 0.5, Max = 5, Default = 2, Rounding = 1 })
			local Haruta = CharacterTab:AddLeftGroupbox("Haruta", "swords")
			Haruta:AddToggle("HarutaDodge", { Text = "Auto Haruta Dodge", Default = false })
			Haruta:AddSlider("HarutaDodgeDist", { Text = "Haruta Dodge Distance", Min = 5, Max = 50, Default = 20, Rounding = 0 })
			Haruta:AddSlider("HarutaDodgeHold", { Text = "Haruta Dodge Hold (s)", Min = 0.1, Max = 1, Default = 0.4, Rounding = 2 })
		end)

		do
			local function fn45(arg)
				if not arg then
					return
				end
				local humanoid2 = arg:WaitForChild("Humanoid", 15)
				if not humanoid2 then
					return
				end
				local animator = humanoid2:WaitForChild("Animator", 15)
				if not animator then
					return
				end
				local connection4 = nil
				local connection5 = nil

				connection5 = arg.AncestryChanged:Connect(function(child, parent)
					if not parent then
						if connection4 then
							connection4:Disconnect()
						end

						if connection5 then
							connection5:Disconnect()
						end
					end
				end)

				connection4 = animator.AnimationPlayed:Connect(function(arg2)
					if not toggles.PunishAfterDash or not toggles.PunishAfterDash.Value then
						return
					end
					local str5 = arg2.Name:lower()

					if str5:find("dashleft") or str5:find("dashright") then
						task.delay(0.1, function()
							if not toggles.PunishAfterDash or not toggles.PunishAfterDash.Value then
								return
							end
							fn18()
						end)
					end
				end)

				table.insert(tbl9, connection4)
				table.insert(tbl9, connection5)
			end

			pcall(function()
				local v29 = SideDashTab:AddLeftGroupbox("Side Dash Assist", "zap")

				v29:AddToggle("SideDashEnabled", { Text = "Enable Side Dash Assist", Default = false }):AddKeyPicker("SideDashToggleKeybind", {
					Default = "None",
					SyncToggleState = true,
					Mode = "Toggle",
					Text = "Side Dash Assist Toggle Keybind",
					NoUI = false,
				})

				v29:AddToggle("SideDashCamLock", { Text = "Camera Lock Assist", Default = true })
				v29:AddToggle("SideDashCharLock", { Text = "Character Face Lock", Default = true })
				v29:AddDropdown("SideDashSide", { Text = "Curve Side", Values = { "Auto", "Left", "Right", "Random" }, Default = "Auto" })

				v29:AddToggle("SideDashMobileButton", {
					Text = "Show Mobile Button",
					Default = false,
					Callback = function(arg)
						if arg then
							if type(createSideDashMobileButton) == "function" then
								createSideDashMobileButton()
							elseif type(_G.createSideDashMobileButton) == "function" then
								_G.createSideDashMobileButton()
							end

							if sideDashGui then
								sideDashGui.Enabled = true
							end
						else
							if type(removeSideDashMobileButton) == "function" then
								removeSideDashMobileButton()
							elseif type(_G.removeSideDashMobileButton) == "function" then
								_G.removeSideDashMobileButton()
							end

							if sideDashGui then
								sideDashGui.Enabled = false
							end
						end
					end,
				})

				v29:AddLabel("Side Dash Keybind"):AddKeyPicker("SideDashKeybind", {
					Default = "Q",
					Mode = "Press",
					Text = "Side Dash Keybind",
					NoUI = false,
					Callback = function()
						if type(fn43) == "function" then
							fn43()
						end
					end,
				})

				local v30 = SideDashTab:AddRightGroupbox("Dash Tuning", "sliders")
				v30:AddSlider("SideDashRange", { Text = "Target Range", Min = 10, Max = 150, Default = 60, Rounding = 0 })
				v30:AddSlider("SideDashDistance", { Text = "Distance Behind", Min = 2, Max = 15, Default = 6.5, Rounding = 1 })
				v30:AddSlider("SideDashDuration", { Text = "Dash Duration", Min = 0.1, Max = 1, Default = 0.28, Rounding = 2 })
				v30:AddSlider("SideDashArcWidth", { Text = "Curve Offset", Min = 0, Max = 30, Default = 13, Rounding = 1 })
				v30:AddSlider("SideDashCooldown", { Text = "Dash Cooldown", Min = 0.1, Max = 3, Default = 0.55, Rounding = 2 })
			end)

			local frame2 = nil
			local connection4 = nil

			local function fn46()
				if connection4 then
					connection4:Disconnect()
					connection4 = nil
				end

				if frame2 then
					frame2:Destroy()
					frame2 = nil
				end
			end

			local function fn47(arg)
				fn46()
				local hui = typeof(gethui) == "function" and gethui() or v15 or LocalPlayer:WaitForChild("PlayerGui", 5)
				if not hui then
					return
				end
				frame2 = Instance.new("Frame")
				frame2.Name = "ElopezWeatherCanvas"
				frame2.Size = UDim2.new(1, 0, 1, 0)
				frame2.BackgroundTransparency = 1
				frame2.Parent = hui
				local tbl17 = {}
				local count = arg.count or 25

				for i = 1, count do
					local frame3

					if arg.isLine then
						frame3 = Instance.new("Frame")
						frame3.Size = UDim2.new(0, 2, 0, 14)
						frame3.BackgroundColor3 = arg.color or Color3.fromRGB(112, 146, 190)
						frame3.BorderSizePixel = 0
					else
						frame3 = Instance.new("TextLabel")
						frame3.Text = arg.symbol or "*"
						frame3.TextSize = arg.textSize or 16
						frame3.TextColor3 = arg.color or Color3.fromRGB(255, 255, 255)
						frame3.BackgroundTransparency = 1
						frame3.Size = UDim2.new(0, 20, 0, 20)
					end

					local random = math.random
					frame3.Position = UDim2.new(math.random(), 0, 0, random(0, 400))
					frame3.Parent = frame2

					table.insert(tbl17, {
						frame = frame3,
						speedY = (arg.speedY or 40) + math.random(-5, 5),
						swaySpeed = math.random() * 2 + 1,
						swayWidth = arg.sway or 15,
						offset = math.random() * 10,
						targetOpacity = 0.8,
					})
				end

				local now2 = os.clock()

				connection4 = RunService.RenderStepped:Connect(function()
					local now3 = os.clock()
					local n27 = now3 - now2
					if n27 < 0.033 then
						return
					end
					now2 = now3
					if not frame2 or not frame2.Parent then
						fn46()
						return
					end
					local absoluteSize = frame2.AbsoluteSize

					for _, v29 in ipairs(tbl17) do
						local n28 = v29.frame.Position.Y.Offset + v29.speedY * n27
						v29.offset = v29.offset + n27
						local swayWidth = v29.swayWidth
						local n29 = v29.frame.Position.X.Offset + math.sin(v29.offset * v29.swaySpeed) * swayWidth * n27

						if n28 > absoluteSize.Y then
							v29.frame.Position = UDim2.new(math.random(), 0, 0, -15)
						else
							v29.frame.Position = UDim2.new(v29.frame.Position.X.Scale, n29, 0, n28)
						end
					end
				end)
			end

			startFallingBlossoms = function()
				fn47({ symbol = "*", color = Color3.fromRGB(255, 183, 197), count = 25, speedY = 45, sway = 20 })
			end

			stopFallingBlossoms = function()
				fn46()
			end

			startRainyWeather = function()
				fn47({ isLine = true, color = Color3.fromRGB(112, 146, 190), count = 35, speedY = 300, sway = 0 })
			end

			stopRainyWeather = function()
				fn46()
			end

			startMidnightWeather = function()
				fn47({ symbol = "+", color = Color3.fromRGB(0, 229, 255), count = 20, speedY = 20, sway = 10 })
			end

			stopMidnightWeather = function()
				fn46()
			end

			startSnowWeather = function()
				fn47({ symbol = "*", color = Color3.fromRGB(208, 232, 255), count = 30, speedY = 50, sway = 15 })
			end

			stopSnowWeather = function()
				fn46()
			end

			startVelvetWeather = function()
				fn47({ symbol = "*", color = Color3.fromRGB(230, 57, 86), count = 20, speedY = 35, sway = 10 })
			end

			stopVelvetWeather = function()
				fn46()
			end

			startHorizonWeather = function()
				fn47({ symbol = "*", color = Color3.fromRGB(230, 149, 0), count = 15, speedY = 25, sway = 8 })
			end

			stopHorizonWeather = function()
				fn46()
				dandelionParticles = {}
				sunbeamBeams = {}

				if _G.HorizonCanvas then
					pcall(function()
						_G.HorizonCanvas:Destroy()
					end)

					_G.HorizonCanvas = nil
				end
			end

			local tbl17 = {}
			local tbl18 = {}

			local function fn48(arg)
				if arg then
					if #tbl17 == 0 then
						local n27 = 0

						local connection5 = RunService.RenderStepped:Connect(function()
							local now2 = os.clock()
							if now2 - n27 < 0.05 then
								return
							end
							n27 = now2
							if not toggles.LockAllButtons or not toggles.LockAllButtons.Value then
								return
							end

							for k, v29 in pairs(tbl10) do
								if v29 and v29.Parent then
									if not tbl18[k] then
										tbl18[k] = v29.Position
									elseif v29.Position ~= tbl18[k] then
										v29.Position = tbl18[k]
									end
								end
							end

							local playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")

							if playerGui then
								local lockOnGui = playerGui:FindFirstChild("LockOnGui")
								lockOnGui = lockOnGui and lockOnGui:FindFirstChild("LockButton")

								if lockOnGui then
									if not tbl18.LockOnGui_LockButton then
										tbl18.LockOnGui_LockButton = lockOnGui.Position
									elseif lockOnGui.Position ~= tbl18.LockOnGui_LockButton then
										lockOnGui.Position = tbl18.LockOnGui_LockButton
									end
								end

								local sideDashMobileGui = playerGui:FindFirstChild("SideDashMobileGui")
								sideDashMobileGui = sideDashMobileGui and sideDashMobileGui:FindFirstChild("Container")

								if sideDashMobileGui then
									if not tbl18.SideDash_Container then
										tbl18.SideDash_Container = sideDashMobileGui.Position
									elseif sideDashMobileGui.Position ~= tbl18.SideDash_Container then
										sideDashMobileGui.Position = tbl18.SideDash_Container
									end
								end
							end
						end)

						table.insert(tbl17, connection5)
					end
				else
					table.clear(tbl18)

					for _, v29 in ipairs(tbl17) do
						pcall(function()
							v29:Disconnect()
						end)
					end

					table.clear(tbl17)
				end
			end

			pcall(function()
				local v29 = ConfigTab:AddLeftGroupbox("System Settings", "settings")

				v29:AddToggle("ShowNotifications", {
					Text = "Show Notifications",
					Default = true,
					Callback = function()
					end,
				})

				v29:AddToggle("DebugMode", {
					Text = "Debug Mode (F9 Console)",
					Default = false,
					Callback = function()
					end,
				})

				v29:AddToggle("LockAllButtons", {
					Text = "Lock All Buttons",
					Default = false,
					Callback = function(arg)
						fn48(arg)
					end,
				})

				v29:AddLabel("Menu Keybind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Toggle Menu" })
				lib.ToggleKeybind = options.MenuKeybind
				local v30 = ConfigTab:AddLeftGroupbox("Keybinds Manager", "keyboard")
				local connection5 = nil

				local function fn49(arg)
					if not lib.KeybindFrame then
						return
					end
					local keybindFrame = lib.KeybindFrame
					local keybindListGradient = keybindFrame:FindFirstChild("KeybindListGradient")

					if arg then
						if not keybindListGradient then
							keybindListGradient = Instance.new("UIGradient")
							keybindListGradient.Name = "KeybindListGradient"
							keybindListGradient.Parent = keybindFrame
						end

						local color = options.GradientStartColor and options.GradientStartColor.Value or Color3.fromRGB(0, 150, 255)
						local color2 = options.GradientEndColor and options.GradientEndColor.Value or Color3.fromRGB(244, 114, 182)
						local new = ColorSequenceKeypoint.new
						keybindListGradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, color), new(1, color2) })
						keybindListGradient.Rotation = 45
						local uiStroke = keybindFrame:FindFirstChildOfClass("UIStroke") or keybindFrame:FindFirstChild("Outline") and keybindFrame.Outline:FindFirstChildOfClass("UIStroke")

						if uiStroke then
							local keybindStrokeGradient = uiStroke:FindFirstChild("KeybindStrokeGradient")

							if not keybindStrokeGradient then
								keybindStrokeGradient = Instance.new("UIGradient")
								keybindStrokeGradient.Name = "KeybindStrokeGradient"
								keybindStrokeGradient.Parent = uiStroke
							end

							keybindStrokeGradient.Color = keybindListGradient.Color
							keybindStrokeGradient.Rotation = 45
						end
					else
						if keybindListGradient then
							keybindListGradient:Destroy()
						end

						local uiStroke = keybindFrame:FindFirstChildOfClass("UIStroke") or keybindFrame:FindFirstChild("Outline") and keybindFrame.Outline:FindFirstChildOfClass("UIStroke")

						if uiStroke and uiStroke:FindFirstChild("KeybindStrokeGradient") then
							uiStroke.KeybindStrokeGradient:Destroy()
						end

						if connection5 then
							connection5:Disconnect()
							connection5 = nil
						end
					end
				end

				local function fn50(arg)
					if connection5 then
						connection5:Disconnect()
						connection5 = nil
					end

					if not arg then
						return
					end
					fn49(true)
					local rotation = 0
					local n27 = 0

					connection5 = RunService.RenderStepped:Connect(function()
						local now2 = os.clock()
						if now2 - n27 < 0.033 then
							return
						end
						local n28 = now2 - n27
						n27 = now2
						if not lib.KeybindFrame or not lib.KeybindFrame.Visible then
							return
						end
						local keybindListGradient = lib.KeybindFrame:FindFirstChild("KeybindListGradient")

						if keybindListGradient then
							rotation = (rotation + n28 * 45) % 360
							keybindListGradient.Rotation = rotation
							local uiStroke = lib.KeybindFrame:FindFirstChildOfClass("UIStroke") or lib.KeybindFrame:FindFirstChild("Outline") and lib.KeybindFrame.Outline:FindFirstChildOfClass("UIStroke")

							if uiStroke and uiStroke:FindFirstChild("KeybindStrokeGradient") then
								uiStroke.KeybindStrokeGradient.Rotation = (rotation + 180) % 360
							end
						end
					end)
				end

				local function fn51()
					if not lib.KeybindContainer then
						return
					end
					local value = options and options.KeybindFilter and options.KeybindFilter.Value
					local flag13 = false

					if type(value) == "table" then
						for _, v31 in pairs(value) do
							if v31 == true then
								flag13 = true
								break
							end
						end
					end

					if not flag13 then
						local v31 = ipairs
						local keybindToggles = lib.KeybindToggles or {}

						for _, keybindToggle in v31(keybindToggles) do
							if keybindToggle and keybindToggle.Holder then
								keybindToggle.Holder.Visible = true
							end
						end

						return
					end

					local v31 = ipairs
					local keybindToggles = lib.KeybindToggles or {}

					for _, keybindToggle in v31(keybindToggles) do
						if keybindToggle and keybindToggle.Holder and keybindToggle.Label then
							local str5 = (keybindToggle.Label.Text or ""):lower()
							local v32, v33, v34 = pairs(value)
							local visible = false

							for k, v35 in v32, v33, v34 do
								v35 = v35 and str5:find(k:lower(), 1, true)
								if v35 then
									visible = true
									break
								end
							end

							keybindToggle.Holder.Visible = visible
						end
					end
				end

				v30:AddToggle("ShowKeybinds", {
					Text = "Show Keybind List",
					Default = false,
					Callback = function(visible)
						if lib.KeybindFrame then
							lib.KeybindFrame.Visible = visible
						end

						if visible then
							task.defer(fn51)
						end
					end,
				})

				v30:AddToggle("KeybindsGradient", {
					Text = "Keybind List Gradient",
					Default = false,
					Callback = function(arg)
						fn49(arg)
					end,
				})

				v30:AddToggle("KeybindsGradientFlow", {
					Text = "Keybind Gradient Flow",
					Default = false,
					Callback = function(arg)
						fn50(arg)
					end,
				})

				local tbl19 = {
					"Auto Block Keybind",
					"Projectile Block Keybind",
					"OP Lock-On Keybind",
					"Aimlock keybind",
					"Aimlock Toggle Keybind",
					"Gojo Kill All Keybind",
					"Auto Gojo Farm Keybind",
					"Manual Blackflash keybind",
					"Manual BFC Keybind",
					"ClapTP Keybind",
					"Side Dash Keybind",
					"Side Dash Assist Toggle Keybind",
					"Speed Keybind",
					"No Stun Keybind",
					"No Ragdoll Keybind",
					"Infinite Parkour Keybind",
					"Infinite Dash Keybind",
					"Auto Parkour Keybind",
					"Noclip Keybind",
					"Anti Domain Keybind",
					"Walk Into Domains Keybind",
					"Always Downslam Keybind",
					"Always Uppercut Keybind",
					"Yuta Auto Counter Keybind",
					"Always Air Variant Keybind",
					"AC Bypass Keybind",
					"Box ESP Keybind",
					"Instant Respawn Keybind",
					"Respawn Now Keybind",
				}

				v30:AddDropdown("KeybindFilter", {
					Values = tbl19,
					Default = {},
					Multi = true,
					Text = "Filter Keybinds List",
					Callback = function()
						fn51()
					end,
				})

				v30:AddButton("Select All Keybinds", function()
					if options.KeybindFilter then
						local tbl20 = {}

						for _, v31 in ipairs(tbl19) do
							tbl20[v31] = true
						end

						options.KeybindFilter:SetValue(tbl20)
						fn51()
					end
				end)

				v30:AddButton("Reset Keybinds Position", function()
					if lib.KeybindFrame then
						lib.KeybindFrame.AnchorPoint = Vector2.new(0, 0.5)
						lib.KeybindFrame.Position = UDim2.new(0, 6, 0.5, 0)
					end
				end)

				local v31 = ThemeTab:AddLeftGroupbox("Menu Accent", "palette")

				v31:AddToggle("GradientAccentFlow", {
					Text = "Gradient Accent ( Flow )",
					Default = false,
					Callback = function(arg)
						if arg and toggles.GradientAccentStatic and toggles.GradientAccentStatic.Value then
							toggles.GradientAccentStatic:SetValue(false)
						end
					end,
				})

				local function fn52()
					if not (toggles.GradientAccentStatic and toggles.GradientAccentStatic.Value) then
						return
					end
					local color = options.GradientStartColor and options.GradientStartColor.Value or Color3.fromRGB(0, 150, 255)
					local color2 = options.GradientEndColor and options.GradientEndColor.Value or Color3.fromRGB(244, 114, 182)
					local new = ColorSequenceKeypoint.new
					local colorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, color), new(1, color2) })

					if lib and lib.Registry then
						for k, v32 in pairs(lib.Registry) do
							local flag13 = false

							for _, v33 in pairs(v32) do
								if v33 == "AccentColor" then
									flag13 = true
									break
								end
							end

							if flag13 then
								local staticAccentGradient = k:FindFirstChild("StaticAccentGradient")

								if not staticAccentGradient then
									local uiGradient = Instance.new("UIGradient")
									uiGradient.Name = "StaticAccentGradient"
									uiGradient.Color = colorSequence
									uiGradient.Parent = k
								else
									staticAccentGradient.Color = colorSequence
								end
							end
						end
					end
				end

				local value = nil

				v31:AddToggle("GradientAccentStatic", {
					Text = "Gradient Accent ( Normal )",
					Default = true,
					Callback = function(arg)
						if arg and toggles.GradientAccentFlow and toggles.GradientAccentFlow.Value then
							toggles.GradientAccentFlow:SetValue(false)
						end

						if arg then
							if options.AccentColor and not value then
								value = options.AccentColor.Value
							end

							if options.AccentColor then
								options.AccentColor:SetValueRGB(Color3.fromRGB(255, 255, 255))
							end

							fn52()
						else
							if value and options.AccentColor then
								options.AccentColor:SetValueRGB(value)
								value = nil
							end

							if lib and lib.Registry then
								for k in pairs(lib.Registry) do
									local staticAccentGradient = k:FindFirstChild("StaticAccentGradient")

									if staticAccentGradient then
										staticAccentGradient:Destroy()
									end
								end
							end
						end
					end,
				})

				v31:AddLabel("Gradient Start"):AddColorPicker("GradientStartColor", {
					Default = Color3.fromRGB(0, 150, 255),
					Title = "Gradient Start",
					Callback = function()
						fn52()
					end,
				})

				v31:AddLabel("Gradient End"):AddColorPicker("GradientEndColor", {
					Default = Color3.fromRGB(244, 114, 182),
					Title = "Gradient End",
					Callback = function()
						fn52()
					end,
				})

				v31:AddSlider("GradientSpeed", { Text = "Gradient Speed ( Flow Only )", Default = 1, Min = 0.1, Max = 5, Rounding = 1 })
				local connection6 = nil
				local n27 = 0

				connection6 = RunService.RenderStepped:Connect(function()
					if not flag11 then
						connection6:Disconnect()
						return
					end
					local value2 = toggles.GradientAccentFlow and toggles.GradientAccentFlow.Value
					local value3 = toggles.GradientAccentStatic and toggles.GradientAccentStatic.Value
					if not value2 and not value3 then
						return
					end
					local now2 = os.clock()
					if now2 - n27 < 0.066 then
						return
					end
					local n28 = now2 - n27
					n27 = now2
					local color = options.GradientStartColor and options.GradientStartColor.Value or Color3.fromRGB(0, 150, 255)
					local color2 = options.GradientEndColor and options.GradientEndColor.Value or Color3.fromRGB(244, 114, 182)

					if value2 then
						if not _G.GradientTickCount then
							_G.GradientTickCount = 0
						end

						_G.GradientTickCount = _G.GradientTickCount + n28 * (options.GradientSpeed and options.GradientSpeed.Value or 1)
						local v32 = color:Lerp(color2, (math.sin(_G.GradientTickCount) + 1) / 2)

						if options.AccentColor then
							options.AccentColor:SetValueRGB(v32)
						end
					elseif value3 then
						fn52()
					end
				end)
			end)

			local flag13 = false
			local v29 = nil

			local function fn49()
				if flag13 then
					return
				end
				flag13 = true

				local ok, result = pcall(function()
					local playerScripts = LocalPlayer:FindFirstChild("PlayerScripts")
					playerScripts = playerScripts and playerScripts:FindFirstChild("Controllers")
					playerScripts = playerScripts and playerScripts:FindFirstChild("Combat")
					return playerScripts and playerScripts:FindFirstChild("HitboxController")
				end)

				if not ok or not result then
					return
				end
				local ok2, result2 = pcall(require, result)
				if not ok2 or type(result2) ~= "table" or type(result2.SphereHitbox) ~= "function" then
					return
				end
				local sphereHitbox = result2.SphereHitbox

				result2.SphereHitbox = function(arg, arg2, arg3, arg4)
					return sphereHitbox(arg, arg2, arg3, v29 or arg4)
				end
			end

			table.insert(tbl9, RunService.Heartbeat:Connect(function(...) end))

			pcall(function()
				local v30 = ConfigTab:AddRightGroupbox("Script Controls", "wrench")

				v30:AddButton("Unload Script", function()
					flag11 = false
					flag10 = false

					if type(fn14) == "function" then
						fn14(true)
					end

					if type(fn42) == "function" then
						fn42()
					end

					if type(removeSideDashMobileButton) == "function" then
						removeSideDashMobileButton()
					end

					if type(fn46) == "function" then
						fn46()
					end

					if silentAnimConn then
						silentAnimConn:Disconnect()
						silentAnimConn = nil
					end

					if gradientConnection then
						gradientConnection:Disconnect()
						gradientConnection = nil
					end

					if connection4 then
						connection4:Disconnect()
						connection4 = nil
					end

					if tbl12 then
						tbl12:ReleaseAll()
					end

					AlwaysDownslamActive = false
					AlwaysUppercutActive = false
					InfiniteParkourActive = false
					AutoParkourActive = false
					InfiniteDashActive = false

					for _, v31 in pairs(tbl9) do
						pcall(function()
							v31:Disconnect()
						end)
					end

					table.clear(tbl9)

					if _G.EmoteSwitchConn then
						pcall(function()
							_G.EmoteSwitchConn:Disconnect()
						end)

						_G.EmoteSwitchConn = nil
					end

					fn24("LockOn")
					fn24("GojoAwaken")

					if type(RestoreAimlockStates) == "function" then
						pcall(RestoreAimlockStates)
					end

					pcall(function()
						RunService:UnbindFromRenderStep("AimlockLoop")
					end)

					if type(fn28) == "function" then
						fn28()
					end

					pcall(function()
						ContextActionService:UnbindAction("LockOn")
					end)

					pcall(function()
						screenGui:Destroy()
					end)

					if type(fn30) == "function" then
						fn30()
					end

					if tbl15 then
						table.clear(tbl15)
					end

					if charBasePartsCache then
						table.clear(charBasePartsCache)
					end

					if _G.OriginalDashRequest then
						pcall(function()
							local MovementController = require(game:GetService("ReplicatedStorage").Knit.Knit).GetController("MovementController")

							if MovementController then
								MovementController.DashRequest = _G.OriginalDashRequest
							end
						end)

						_G.OriginalDashRequest = nil
					end

					pcall(function()
						local ToolController = require(game:GetService("ReplicatedStorage").Knit.Knit).GetController("ToolController")

						if ToolController and ToolController.OriginalUseTool then
							ToolController.UseTool = ToolController.OriginalUseTool
						end
					end)

					if tbl13 and tbl13._enemies then
						table.clear(tbl13._enemies)
					end

					lib:Unload()
				end)

				v30:AddButton("Reset Mobile Buttons", function()
					local playerGui = LocalPlayer and LocalPlayer:FindFirstChildOfClass("PlayerGui")

					if playerGui then
						local sideDashMobileGui = playerGui:FindFirstChild("SideDashMobileGui")
						sideDashMobileGui = sideDashMobileGui and sideDashMobileGui:FindFirstChild("Container")

						if sideDashMobileGui then
							sideDashMobileGui.Position = UDim2.new(0.85, -110, 0.6, -24)
						end

						local lockOnGui = playerGui:FindFirstChild("LockOnGui")

						if lockOnGui then
							lockOnGui = lockOnGui:FindFirstChild("LockButton") or lockOnGui:FindFirstChild("Container")
						end

						if lockOnGui then
							lockOnGui.Position = UDim2.new(0.85, 0, 0.45, 0)
						end
					end
				end)
			end)

			pcall(function()
				local v30 = TeleportTab:AddLeftGroupbox("Map Locations", "map")
				local v31 = TeleportTab:AddRightGroupbox("Teleport to Player", "user")

				local function fn50(arg, arg2)
					local character = LocalPlayer.Character
					local humanoidRootPart2 = character and character:FindFirstChild("HumanoidRootPart")

					if humanoidRootPart2 then
						if toggles.ShowNotifications and toggles.ShowNotifications.Value then
							lib:Notify({ Title = "Teleport", Description = "Teleporting to " .. arg .. "...", Time = 1.5 })
						end

						humanoidRootPart2.AssemblyLinearVelocity = Vector3.zero
						humanoidRootPart2.AssemblyAngularVelocity = Vector3.zero
						character:PivotTo(arg2)
					elseif toggles.ShowNotifications and toggles.ShowNotifications.Value then
						lib:Notify({ Title = "Teleport Error", Description = "Character Root Part not found!", Time = 2 })
					end
				end

				local tbl19 = {
					Spawn = CFrame.new(-15.5792484, 21.3592434, 13.4995728, 1, 0, 0, 0, 1, 0, 0, 0, 1),
					["Blue Building"] = CFrame.new(-71.9802322, 179.581238, 136.225769, 1, 0, 0, 0, 1, 0, 0, 0, 1),
					["Shinjuku Station"] = CFrame.new(192.015121, -16.3995056, 182.665054, 1, 0, 0, 0, 1, 0, 0, 0, 1),
					["Shinjuku Mall"] = CFrame.new(139.231689, -61.8617249, -249.998047, 0, 0, 1, 0, 1, 0, -1, 0, 0),
					["Unlicenced Studios"] = CFrame.new(223.159912, 21.6809998, -37.3645935, 1, 0, 0, 0, 1, 0, 0, 0, 1),
				}

				v30:AddDropdown("MapLocationDropdown", {
					Values = { "Spawn", "Blue Building", "Shinjuku Station", "Shinjuku Mall", "Unlicenced Studios" },
					Default = 1,
					Multi = false,
					Text = "Select Destination",
				})

				v30:AddButton("Teleport to Location", function()
					local value = options.MapLocationDropdown and options.MapLocationDropdown.Value

					if value and tbl19[value] then
						fn50(value, tbl19[value])
					end
				end)

				v30:AddButton("Teleport to Dummy", function()
					local characters = Workspace:FindFirstChild("Characters") or Workspace
					local v32 = nil

					for _, child in ipairs(characters:GetChildren()) do
						if child:IsA("Model") and child ~= LocalPlayer.Character then
							if (child.Name:lower():find("dummy") or child:FindFirstChild("Enemy") or child:FindFirstChild("Dummy")) and child:FindFirstChild("HumanoidRootPart") then
								v32 = child
								break
							else
								v32 = nil
							end
						else
							v32 = nil
						end
					end

					if not v32 then
						for _, child in ipairs(Workspace:GetChildren()) do
							if child:IsA("Model") and child ~= LocalPlayer.Character then
								if (child.Name:lower():find("dummy") or child:FindFirstChild("Enemy") or child:FindFirstChild("Dummy")) and child:FindFirstChild("HumanoidRootPart") then
									v32 = child
									break
								end
							end
						end
					end

					if v32 and v32:FindFirstChild("HumanoidRootPart") then
						fn50("Dummy", v32.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3))
					elseif toggles.ShowNotifications and toggles.ShowNotifications.Value then
						lib:Notify({ Title = "Teleport Error", Description = "No Dummy found in game!", Time = 2 })
					end
				end)

				local function fn51()
					local tbl20 = {}

					for _, player in ipairs(Players:GetPlayers()) do
						if player ~= LocalPlayer then
							table.insert(tbl20, player.DisplayName .. " (@" .. player.Name .. ")")
						end
					end

					if #tbl20 == 0 then
						table.insert(tbl20, "No Players Available")
					end

					return tbl20
				end

				v31:AddDropdown("TargetPlayerDropdown", { Values = fn51(), Default = 1, Multi = false, Text = "Select Player" })

				v31:AddButton("Refresh Players", function()
					if options.TargetPlayerDropdown then
						options.TargetPlayerDropdown:SetValues(fn51())
						options.TargetPlayerDropdown:SetValue(1)
					end
				end)

				v31:AddButton("Teleport to Selected Player", function()
					local value = options.TargetPlayerDropdown and options.TargetPlayerDropdown.Value
					if not value or value == "No Players Available" then
						return
					end
					local match = value:match("@([^%)]+)")
					local v32 = match and Players:FindFirstChild(match)

					if v32 and v32.Character and v32.Character:FindFirstChild("HumanoidRootPart") then
						fn50(v32.DisplayName, v32.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3))
					elseif toggles.ShowNotifications and toggles.ShowNotifications.Value then
						lib:Notify({ Title = "Teleport Error", Description = "Target player not found or dead!", Time = 2 })
					end
				end)

				Players.PlayerAdded:Connect(function()
					if options.TargetPlayerDropdown then
						options.TargetPlayerDropdown:SetValues(fn51())
					end
				end)

				Players.PlayerRemoving:Connect(function()
					if options.TargetPlayerDropdown then
						options.TargetPlayerDropdown:SetValues(fn51())
					end
				end)

				local v32 = MiscTab:AddLeftGroupbox("Item Grabber", "package")

				local function fn52()
					local items = workspace:FindFirstChild("Items")
					local tbl20 = {}
					if not items then
						return tbl20
					end

					for _, child in ipairs(items:GetChildren()) do
						if child:IsA("BasePart") and child:FindFirstChild("ProximityPrompt") and child.CFrame.Y < 1000 then
							table.insert(tbl20, child.Name)
						end
					end

					table.sort(tbl20)

					if #tbl20 == 0 then
						table.insert(tbl20, "No Items Found")
					end

					return tbl20
				end

				v32:AddDropdown("ItemGrabberDropdown", { Values = fn52(), Default = 1, Multi = false, Text = "Select Item" })

				v32:AddButton("Refresh Items", function()
					if options.ItemGrabberDropdown then
						options.ItemGrabberDropdown:SetValues(fn52())
						options.ItemGrabberDropdown:SetValue(1)
					end
				end)

				v32:AddButton("Grab Item", function()
					local grabbing = options.ItemGrabberDropdown and options.ItemGrabberDropdown.Value
					if not grabbing or grabbing == "No Items Found" then
						return
					end

					if typeof(fireproximityprompt) ~= "function" then
						lib:Notify({ Title = "Item Grabber", Description = "fireproximityprompt not available", Time = 2 })
						return
					end
					local items = workspace:FindFirstChild("Items")
					local v33 = items and items:FindFirstChild(grabbing)
					local proximityPrompt = v33 and v33:FindFirstChild("ProximityPrompt")
					local character = LocalPlayer.Character
					local humanoidRootPart2 = character and character:FindFirstChild("HumanoidRootPart")
					if not (proximityPrompt and humanoidRootPart2) then
						lib:Notify({ Title = "Item Grabber", Description = "Item or character not found", Time = 2 })
						return
					end
					local antiCheatService = fn21() and fn21():FindFirstChild("AntiCheatService")
					local re = antiCheatService and antiCheatService:FindFirstChild("RE")
					local camera = re and re:FindFirstChild("Camera")

					if camera then
						camera.Parent = nil
					end

					task.spawn(function()
						for i = 1, 2 do
							if v33.Parent and humanoidRootPart2.Parent then
								humanoidRootPart2.CFrame = v33.CFrame
								pcall(fireproximityprompt, proximityPrompt, proximityPrompt.HoldDuration)
								task.wait(0.3)
								continue
							end

							break
						end

						if camera then
							camera.Parent = re
						end
					end)

					lib:Notify({ Title = "Item Grabber", Description = "Grabbing: " .. grabbing, Time = 2 })
				end)

				workspace.ChildAdded:Connect(function(child)
					if child.Name == "Items" then
						if options.ItemGrabberDropdown then
							options.ItemGrabberDropdown:SetValues(fn52())
						end
					end
				end)

				if workspace:FindFirstChild("Items") then
					workspace.Items.ChildAdded:Connect(function()
						if options.ItemGrabberDropdown then
							options.ItemGrabberDropdown:SetValues(fn52())
						end
					end)

					workspace.Items.ChildRemoved:Connect(function()
						if options.ItemGrabberDropdown then
							options.ItemGrabberDropdown:SetValues(fn52())
						end
					end)
				end

				local v33 = MiscTab:AddRightGroupbox("Combat Features", "zap")
				v33:AddToggle("HitboxExtender", { Text = "Hitbox Extender", Default = false })
				v33:AddSlider("HitboxSize", { Text = "Hitbox Size", Min = 5, Max = 50, Default = 20, Rounding = 0 })
				v33:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
				v33:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
				v33:AddToggle("AntiStun", { Text = "Anti Stun", Default = false })
				v33:AddToggle("NoBlockSlow", { Text = "No Block Slow", Default = false })
				v33:AddSlider("BlockSlowSpeed", { Text = "Block Walk Speed", Min = 16, Max = 100, Default = 16, Rounding = 0 })
				local v34 = MiscTab:AddLeftGroupbox("Player Features", "user")

				v34:AddToggle("Invisibility", {
					Text = "Invisibility",
					Default = false,
					Callback = function(arg)
						if arg then
							fn41()
						else
							fn42()
						end
					end,
				})

				v34:AddToggle("SilentAnimationsEnabled", {
					Text = "Silent Animations",
					Default = false,
					Callback = function(arg)
						setSilentAnimations(arg)
					end,
				})

				v34:AddToggle("UnlockEmotes", {
					Text = "Unlock Extra Emote Slots",
					Default = false,
					Callback = function(visible)
						pcall(function()
							local playerGui = LocalPlayer:WaitForChild("PlayerGui", 5)
							if not playerGui then
								return
							end
							local emote = playerGui:WaitForChild("Emotes", 5):WaitForChild("Emote", 5)
							local page1 = emote:WaitForChild("Page1", 5)
							local page2 = emote:WaitForChild("Page2", 5)
							local switch = emote:WaitForChild("Switch", 5)
							local equipped = playerGui:WaitForChild("Menus", 5):WaitForChild("Group", 5):WaitForChild("Inventory", 5):WaitForChild("Items", 5):WaitForChild("Emotes", 5):WaitForChild("Equipped", 5)

							local function fn53(arg)
								if arg:IsA("GuiObject") then
									arg.Visible = visible

									for _, child in ipairs(arg:GetChildren()) do
										if child:IsA("GuiObject") then
											child.Visible = visible
										end
									end
								end
							end

							switch.Visible = visible

							if visible then
								fn53(page1)
								fn53(equipped)

								if not _G.EmoteSwitchConn then
									local visible2 = false
									page2.Visible = false

									_G.EmoteSwitchConn = switch.MouseButton1Click:Connect(function()
										visible2 = not visible2
										page1.Visible = not visible2
										page2.Visible = visible2

										if visible2 then
											fn53(page2)
										else
											fn53(page1)
										end
									end)
								end
							else
								page2.Visible = false
								switch.Visible = false
							end
						end)
					end,
				})

				local v35 = MiscTab:AddRightGroupbox("Instant Respawn", "refresh-cw")
				local v36 = nil
				local flag14 = false
				local v37 = nil

				local function fn53()
					if flag14 then
						return
					end

					local fn54 = hookmetamethod or getrawmetatable and function(arg, arg2, arg3)
						local v38 = getrawmetatable(arg)
						if not v38 then
							return nil
						end
						local value = rawget(v38, arg2)

						if setreadonly then
							setreadonly(v38, false)
						end

						rawset(v38, arg2, arg3)

						if setreadonly then
							setreadonly(v38, true)
						end

						return value
					end

					local fn55 = checkcaller or function()
						return false
					end

					if type(fn54) == "function" then
						pcall(function()
							v37 = fn54(game, "__index", newcclosure and newcclosure(function(arg, arg2, ...)
								if v36 and arg2 == "CFrame" and not fn55() then
									local character = LocalPlayer.Character
									local humanoidRootPart2 = character and character:FindFirstChild("HumanoidRootPart")
									if humanoidRootPart2 and arg == humanoidRootPart2 then
										return v36
									end
								end

								local v38 = v37
								local v39 = table.pack(...)
								v39.n = 3 + v39.n - 1
								table.move(v39, 1, v39.n, 3, v39)
								v39[1] = arg
								v39[2] = arg2
								return v38(table.unpack(v39, 1, v39.n))
							end) or function(arg, arg2, ...)
								if v36 and arg2 == "CFrame" and not fn55() then
									local character = LocalPlayer.Character
									character = character and character:FindFirstChild("HumanoidRootPart")
									if character and arg == character then
										return v36
									end
								end

								local v38 = v37
								local v39 = table.pack(...)
								v39.n = 3 + v39.n - 1
								table.move(v39, 1, v39.n, 3, v39)
								v39[1] = arg
								v39[2] = arg2
								return v38(table.unpack(v39, 1, v39.n))
							end)

							flag14 = true
						end)
					end
				end

				fn53()

				local function fn54(arg)
					v36 = arg
				end

				local function fn55()
					local knit = ReplicatedStorage:FindFirstChild("Knit")

					if knit then
						knit = knit:FindFirstChild("Knit") or knit
					end

					knit = knit and knit:FindFirstChild("Services")
					knit = knit and knit:FindFirstChild("JoinService")
					knit = knit and knit:FindFirstChild("RE")
					return knit and knit:FindFirstChild("Reset")
				end

				local env = getfenv and getfenv() or _G
				local replicatesignal_ = env and env.replicatesignal or replicatesignal
				local flag15 = type(replicatesignal_) == "function"
				local connection5 = nil
				local connection6 = nil
				local connection7 = nil
				local flag16 = false
				local n27 = 0
				local n28 = 0
				local n29 = 0
				local tbl20 = {}

				local function fn56()
					for k, v38 in pairs(tbl20) do
						if k and k.Parent then
							pcall(function()
								k.CanCollide = v38
							end)
						end
					end

					table.clear(tbl20)
				end

				local function fn57(arg)
					table.clear(tbl20)
					if not arg then
						return
					end

					for _, descendant in ipairs(arg:GetDescendants()) do
						if descendant:IsA("BasePart") and descendant.CanCollide then
							tbl20[descendant] = true
							descendant.CanCollide = false
						end
					end
				end

				local function fn58(arg, arg2, arg3, arg4)
					local n30 = options and options.RespawnVoidHeight and options.RespawnVoidHeight.Value or 10000
					local n31 = options and options.RespawnHold and options.RespawnHold.Value or 0.5
					local value = toggles and toggles.RespawnBreak and toggles.RespawnBreak.Value

					if value == nil then
						value = true
					end

					local vector = Vector3.new(0, n30, 0)
					fn57(arg)
					fn54(arg2.CFrame)

					if value and flag15 then
						pcall(replicatesignal_, arg3.ServerBreakJoints)
					end

					local now2 = os.clock()

					while os.clock() - now2 < n31 do
						local flag17 = arg4 ~= n27

						if not flag17 then
							flag17 = not (arg2 and arg2.Parent)
						end

						if not flag17 then
							local cFrame = arg2.CFrame
							fn54(cFrame)
							arg2.CFrame = CFrame.new(vector)
							task.wait()
							if arg2 and arg2.Parent then
								arg2.CFrame = cFrame
								continue
							end
						end

						break
					end

					fn54(nil)
					fn56()
				end

				local function fn59(arg, arg2, arg3)
					if flag16 then
						return
					end
					local now2 = os.clock()
					if now2 - n28 < 1.5 then
						return
					end
					n28 = now2
					flag16 = true
					n27 += 1
					local v38 = n27

					task.spawn(function()
						local n30 = options and options.RespawnDelay and options.RespawnDelay.Value or 0

						if n30 > 0 then
							task.wait(n30)
						end

						if v38 ~= n27 then
							flag16 = false
							return
						end

						if arg2 and arg2.Parent and arg3 then
							if not pcall(fn58, arg, arg2, arg3, v38) then
								fn54(nil)
								fn56()
							end
						end

						if v38 == n27 then
							local v39 = fn55()

							if v39 then
								pcall(function()
									v39:FireServer()
								end)
							end
						end

						flag16 = false
					end)
				end

				local function fn60(arg, arg2, arg3)
					if not (toggles and toggles.InstantRespawn and toggles.InstantRespawn.Value) then
						return
					end

					if os.clock() - n29 < 1.25 then
						return
					end

					if arg ~= LocalPlayer.Character then
						return
					end
					fn59(arg, arg2, arg3)
				end

				local function fn61(arg)
					if connection5 then
						connection5:Disconnect()
						connection5 = nil
					end

					if connection6 then
						connection6:Disconnect()
						connection6 = nil
					end

					flag16 = false
					n29 = os.clock()
					if not arg then
						return
					end
					local humanoid2 = arg:FindFirstChildOfClass("Humanoid") or arg:WaitForChild("Humanoid", 5)
					local humanoidRootPart2 = arg:FindFirstChild("HumanoidRootPart") or arg:WaitForChild("HumanoidRootPart", 5)
					if not (humanoid2 and humanoidRootPart2) then
						return
					end

					connection5 = humanoid2.Died:Connect(function()
						fn60(arg, humanoidRootPart2, humanoid2)
					end)

					connection6 = humanoid2.HealthChanged:Connect(function(health)
						if health <= 0 then
							fn60(arg, humanoidRootPart2, humanoid2)
						end
					end)
				end

				local function fn62()
					local character = LocalPlayer.Character
					local humanoidRootPart2 = character and character:FindFirstChild("HumanoidRootPart")
					local humanoid2 = character and character:FindFirstChildOfClass("Humanoid")
					if not (humanoidRootPart2 and humanoid2) then
						return false
					end
					flag16 = false
					n28 = 0
					fn59(character, humanoidRootPart2, humanoid2)
					return true
				end

				v35:AddToggle("InstantRespawn", {
					Text = "Instant Respawn",
					Default = false,
					Callback = function(arg)
						if not arg then
							n27 += 1
							flag16 = false
							fn54(nil)
							fn56()

							if connection5 then
								connection5:Disconnect()
								connection5 = nil
							end

							if connection6 then
								connection6:Disconnect()
								connection6 = nil
							end

							if connection7 then
								connection7:Disconnect()
								connection7 = nil
							end

							return
						end

						if not connection7 then
							connection7 = LocalPlayer.CharacterAdded:Connect(function(character)
								task.defer(fn61, character)
							end)

							table.insert(tbl9, connection7)
						end

						fn61(LocalPlayer.Character)
					end,
				}):AddKeyPicker("InstantRespawnKeybind", {
					Default = "None",
					SyncToggleState = true,
					Mode = "Toggle",
					Text = "Instant Respawn Keybind",
					NoUI = false,
				})

				v35:AddToggle("RespawnBreak", { Text = "Force Death Register", Default = true })
				v35:AddSlider("RespawnDelay", { Text = "Delay", Min = 0, Max = 2, Default = 0, Rounding = 2 })
				v35:AddSlider("RespawnHold", { Text = "Desync Hold", Min = 0.1, Max = 2, Default = 0.5, Rounding = 2 })
				v35:AddSlider("RespawnVoidHeight", { Text = "Void Height", Min = -20000, Max = 20000, Default = 10000, Rounding = 0 })

				v35:AddButton("Respawn Now", function()
					fn62()
				end)

				v35:AddLabel("Respawn Now Keybind"):AddKeyPicker("RespawnNowKeybind", {
					Default = "None",
					Mode = "Press",
					Text = "Respawn Now Keybind",
					NoUI = false,
					Callback = function()
						fn62()
					end,
				})
			end)

			task.spawn(fn22)
			task.spawn(fn27)
			task.spawn(fn29)

			task.spawn(function()
				local MovementController = nil

				local function fn50()
					local ok, result = pcall(function()
						return debug or getgenv and getgenv().debug
					end)

					if ok and result then
						return result
					end
					return nil
				end

				local v30 = fn50()
				local flag14 = v30 ~= nil and v30.getupvalues ~= nil and v30.setupvalue ~= nil
				local n27 = 0

				local connection5 = RunService.Heartbeat:Connect(function()
					if not InfiniteParkourActive then
						return
					end

					if not flag14 then
						InfiniteParkourActive = false
						return
					end
					local v31 = os_clock()
					if v31 - n27 < 0.1 then
						return
					end
					n27 = v31

					if not MovementController then
						pcall(function()
							MovementController = require(LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("Controllers"):WaitForChild("Character"):WaitForChild("MovementController"))
						end)

						return
					end

					pcall(function()
						local v32 = v30.getupvalues(MovementController.Parkour)

						if v32 then
							for k, v33 in pairs(v32) do
								if type(v33) == "number" then
									v30.setupvalue(MovementController.Parkour, k, 0)
								end
							end
						end
					end)
				end)

				table.insert(tbl9, connection5)
			end)

			task.spawn(function()
				ReplicatedStorage:WaitForChild("Knit", 5)

				local function fn50()
					local ok, result = pcall(function()
						return _dbgLib and _dbgLib.setupvalue or setupvalue
					end)

					if ok and result then
						return result
					end
					return setupvalue
				end

				fn50()
				local exclude = Enum.RaycastFilterType.Exclude
				RaycastParams.new().FilterType = exclude
				local v30 = nil

				local function fn51(arg)
					local animations = ReplicatedStorage:FindFirstChild("Animations")

					if animations then
						local misc = animations:FindFirstChild("Misc")
						misc = misc and misc:FindFirstChild("Movement")
						local parkour = misc and misc:FindFirstChild("Parkour")

						if parkour then
							local ok, result = pcall(function()
								return arg:LoadAnimation(parkour)
							end)

							if ok and result then
								v30 = result
								result:Play(0.1)
							end
						end
					end
				end

				local connection5 = RunService.Heartbeat:Connect(function(...) end)
				table.insert(tbl9, connection5)
			end)

			local tbl19 = {
				"Stun",
				"Stunned",
				"StunTime",
				"HitStun",
				"BlockStun",
				"CantMove",
				"Disabled",
				"Freeze",
				"Frozen",
				"Slow",
				"Hit",
				"Knockback",
			}

			local tbl20 = { "stun", "hit", "hurt", "flinch", "knockback", "ragdoll", "getup", "pain", "downed" }
			local function fn50(l)if not l then return;end;local I,D=l:FindFirstChildOfClass("Humanoid"),l:FindFirstChild("HumanoidRootPart");if NoStunActive then for S=1,# tbl19 ,1 do local u= tbl19 [S];S=l:GetAttribute(u);if S~=nil and S~=false and S~=0 then if type(S)=="number"then l:SetAttribute(u,0);elseif type(S)=="boolean"then l:SetAttribute(u,false);else l:SetAttribute(u,nil);end;end;end;for S,u in ipairs(l:GetChildren())do if u:IsA("ValueBase")then S=string.lower(u.Name);if string.find(S,"stun")or(string.find(S,"freeze"))or(string.find(S,"disabled"))then if u:IsA("BoolValue")then u.Value=false;elseif u:IsA("NumberValue")or(u:IsA("IntValue"))then u.Value=0;end;end;end;end;if I then I.PlatformStand=false;I.Sit=false;I.AutoRotate=true;local S=I:GetState();if S==Enum.HumanoidStateType.PlatformStanding or S==Enum.HumanoidStateType.Seated or S==Enum.HumanoidStateType.Physics or S==Enum.HumanoidStateType.Ragdoll or S==Enum.HumanoidStateType.FallingDown then I:ChangeState(Enum.HumanoidStateType.Running);end;end;if D and not( v21 and  v21 .Active)then if D.Anchored then D.Anchored=false;end;end;if I then local S=I:FindFirstChildOfClass("Animator");if S then for u,j in ipairs(S:GetPlayingAnimationTracks())do if j.Animation then u=string.lower(j.Animation.Name or"");for S=1,# tbl20 ,1 do if string.find(u, tbl20 [S])then pcall(function()j:Stop(0);end);break;end;end;end;end;end;end;end;if NoRagdollActive then D=l:GetAttribute("Ragdoll");if D and D~=0 then l:SetAttribute("Ragdoll",0);end;if I then I:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false);I:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false);local o=I:GetState();if o==Enum.HumanoidStateType.Ragdoll or o==Enum.HumanoidStateType.FallingDown then I:ChangeState(Enum.HumanoidStateType.GettingUp);end;end;end;end

			local function fn51(character)
				if not character then
					return
				end

				table.insert(tbl9, character.AttributeChanged:Connect(function()
					if NoStunActive or NoRagdollActive then
						fn50(character)
					end
				end))
			end

			if LocalPlayer.Character then
				fn33(LocalPlayer.Character)
				fn51(LocalPlayer.Character)

				if toggles.AutoMahitoBlackflash and toggles.AutoMahitoBlackflash.Value then
					fn20(LocalPlayer.Character)
				end

				fn40(LocalPlayer.Character)
				fn38(LocalPlayer.Character)
				fn45(LocalPlayer.Character)
			end

			table.insert(tbl9, LocalPlayer.CharacterAdded:Connect(fn33))
			table.insert(tbl9, LocalPlayer.CharacterAdded:Connect(fn51))

			table.insert(tbl9, LocalPlayer.CharacterAdded:Connect(function(character)
				if toggles.AutoMahitoBlackflash and toggles.AutoMahitoBlackflash.Value then
					fn20(character)
				end

				fn40(character)
				fn38(character)
				fn45(character)

				if v21.Active then
					task.wait(1)
					toggles.Invisibility:SetValue(false)
				end

				if SpeedEnabled then
					task.wait(0.5)
					local humanoid2 = character:FindFirstChildOfClass("Humanoid")

					if humanoid2 then
						humanoid2.WalkSpeed = SpeedValue
					end
				end
			end))

			table.insert(tbl9, RunService.Heartbeat:Connect(function(...) end))
			local n27 = 15
			local n28 = 2
			local n29 = 0

			local function fn52(arg)
				if not arg then
					return false
				end
				local info = arg:FindFirstChild("Info")

				if info then
					local domainTag = info:FindFirstChild("DomainTag")
					if domainTag and domainTag:IsA("BoolValue") and domainTag.Value then
						return true
					end
				end

				return false
			end

			local function fn53(arg)
				if arg:IsA("BasePart") then
					return arg.CFrame
				end
				local primaryPart = arg.PrimaryPart or arg:FindFirstChild("DomainBG")
				if primaryPart and primaryPart:IsA("BasePart") then
					return primaryPart.CFrame
				end

				for _, descendant in ipairs(arg:GetDescendants()) do
					if descendant:IsA("BasePart") and descendant.Size.Magnitude > 50 then
						return descendant.CFrame
					end
				end

				return nil
			end

			local function fn54(arg)
				local n30 = 0

				for _, descendant in ipairs(arg:GetDescendants()) do
					if descendant:IsA("BasePart") then
						local n31 = descendant.Size.Magnitude / 2

						if n30 < n31 then
							n30 = n31
						end
					end
				end

				if n30 == 0 and arg:IsA("BasePart") then
					n30 = arg.Size.Magnitude / 2
				end

				return n30
			end

			local function fn55(arg, arg2, arg3)
				local v30 = fn53(arg3)
				if not v30 then
					return false
				end
				local position = arg2.Position
				local v31 = fn54(arg3)
				local position2 = v30.Position
				local n30 = arg3:IsA("BasePart") and arg3.Size.X / 2 or v31
				local n31 = arg3:IsA("BasePart") and arg3.Size.Y / 2 or v31
				local n32 = arg3:IsA("BasePart") and arg3.Size.Z / 2 or v31
				local v32 = v30:PointToObjectSpace(position)
				local n33 = n30 + n27
				local flag14 = math.abs(v32.X) < n33

				if flag14 then
					local n34 = n31 + n27
					flag14 = math.abs(v32.Y) < n34
				end

				if flag14 then
					local n34 = n32 + n27
					flag14 = math.abs(v32.Z) < n34
				end

				if flag14 then
					return true
				end

				if (position - position2).Magnitude < v31 + n27 then
					return true
				end
				return false
			end

			local function fn56(arg, arg2)
				local now2 = os.clock()
				if now2 - n29 < n28 then
					return
				end
				local v30 = fn53(arg2)
				if not v30 then
					return
				end
				local position = arg.Position
				local position2 = v30.Position
				local n30 = fn54(arg2) + n27
				local n31 = position - position2
				local unit

				if n31.Magnitude < 1 then
					unit = Vector3.new(math.random() - 0.5, 0, math.random() - 0.5).Unit
				else
					unit = n31.Unit
				end

				local n32 = position2 + unit * (n30 + 20)
				local hit = workspace:Raycast(n32 + Vector3.new(0, 100, 0), Vector3.new(0, -200, 0))
				local vector

				if hit then
					vector = Vector3.new(n32.X, hit.Position.Y + 5, n32.Z)
				else
					vector = Vector3.new(n32.X, position.Y, n32.Z)
				end

				n29 = now2
				local n33 = math.clamp((vector - position).Magnitude / 800, 0.05, 0.15)
				local n34 = arg.CFrame - arg.CFrame.Position
				local tbl21 = { CFrame = CFrame.new(vector) * n34 }
				local tween = TweenService:Create(arg, TweenInfo.new(n33, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), tbl21)
				tween:Play()
				tween.Completed:Wait()
			end

			local function fn57()
				if not AntiDomainActive then
					return
				end
				local character = LocalPlayer.Character
				if not character then
					return
				end
				local humanoidRootPart2 = character:FindFirstChild("HumanoidRootPart")
				if not humanoidRootPart2 then
					return
				end

				if fn52(character) then
					return
				end
				local domains = workspace:FindFirstChild("Domains")
				if not domains then
					return
				end

				for _, child in ipairs(domains:GetChildren()) do
					if fn55(character, humanoidRootPart2, child) then
						fn56(humanoidRootPart2, child)
						break
					end
				end
			end

			task.spawn(function()
				local domains = workspace:WaitForChild("Domains", 10) or workspace:FindFirstChild("Domains")

				if domains then
					domains.ChildAdded:Connect(function(child)
						if not AntiDomainActive then
							return
						end
						task.wait(0.2)
						local character = LocalPlayer.Character
						local humanoidRootPart2 = character and character:FindFirstChild("HumanoidRootPart")

						if character and humanoidRootPart2 and not fn52(character) then
							if fn55(character, humanoidRootPart2, child) then
								fn56(humanoidRootPart2, child)
							end
						end
					end)
				end
			end)

			task.spawn(function()
				while flag11 do
					task.wait(0.1)

					if AntiDomainActive then
						pcall(fn57)
					end
				end
			end)

			task.spawn(function()
				local tbl21 = {}
				local tbl22 = {}
				local tbl23 = {}
				local eniDamageNumbers = workspace.CurrentCamera:FindFirstChild("ENI_DamageNumbers")

				if eniDamageNumbers then
					pcall(function()
						eniDamageNumbers:Destroy()
					end)
				end

				eniDamageNumbers = Instance.new("Folder")
				eniDamageNumbers.Name = "ENI_DamageNumbers"
				eniDamageNumbers.Parent = workspace.CurrentCamera
				local n30 = 120
				local highway = Enum.Font.Highway
				local n31 = 1.6
				local n32 = 0.9
				local n33 = 2
				local n34 = 2.5

				local function fn58(parent, arg)
					local uiGradient = Instance.new("UIGradient")
					local colorSequence = ColorSequence.new
					local tbl24 = {}
					local v30 = ColorSequenceKeypoint.new(0, arg)
					local v31 = ColorSequenceKeypoint.new(0.4, Color3.new(math.min(arg.R + 0.35, 1), math.min(arg.G + 0.35, 1), math.min(arg.B + 0.35, 1)))
					local v32 = ColorSequenceKeypoint.new(0.55, arg)
					local v33 = ColorSequenceKeypoint.new(0.7, Color3.new(math.max(arg.R - 0.2, 0), math.max(arg.G - 0.2, 0), math.max(arg.B - 0.2, 0)))
					tbl24[1] = v30
					tbl24[2] = v31
					tbl24[3] = v32
					tbl24[4] = v33

					do
						local values = table.pack(ColorSequenceKeypoint.new(1, arg))
						table.move(values, 1, values.n, 5, tbl24)
					end

					uiGradient.Color = colorSequence(tbl24)
					uiGradient.Rotation = 90
					uiGradient.Parent = parent
				end

				local function fn59(arg, arg2)
					if not arg or not arg.Parent then
						return
					end
					local humanoidRootPart2 = arg:FindFirstChild("HumanoidRootPart")
					if not humanoidRootPart2 then
						return
					end
					local v30 = tbl22[arg]

					if v30 and v30.Parent then
						v30:Destroy()
					end

					local textSize = options.DamageTextSize and options.DamageTextSize.Value or 75
					local color = options.DamageColor and options.DamageColor.Value or Color3.fromRGB(255, 30, 30)
					local value = toggles.DamageGradientEnabled and toggles.DamageGradientEnabled.Value
					local n35 = math.random() * 3.1415926535897931 * 2
					local n36 = math.random() * n34
					local n37 = math.cos(n35) * n36
					local n38 = math.sin(n35) * n36
					local rotation = math.random(-120, 120) / 10
					local billboardGui = Instance.new("BillboardGui")
					billboardGui.Name = "Dmg"
					billboardGui.Size = UDim2.new(0, 380, 0, 90)
					billboardGui.StudsOffset = Vector3.new(n37, 3, n38)
					billboardGui.AlwaysOnTop = true
					billboardGui.LightInfluence = 0
					billboardGui.MaxDistance = n30 + 30
					billboardGui.Adornee = humanoidRootPart2
					billboardGui.Parent = eniDamageNumbers
					local textLabel = Instance.new("TextLabel")
					textLabel.Size = UDim2.new(1, 0, 1, 0)
					textLabel.BackgroundTransparency = 1
					textLabel.Font = highway
					textLabel.TextSize = textSize
					textLabel.TextColor3 = color
					textLabel.TextStrokeTransparency = 0.15
					textLabel.TextStrokeColor3 = Color3.fromRGB(10, 10, 10)
					textLabel.TextTransparency = 0
					textLabel.Rotation = rotation
					textLabel.Text = tostring(math.floor(arg2))
					textLabel.Parent = billboardGui

					if value then
						fn58(textLabel, color)
					end

					local textLabel2 = Instance.new("TextLabel")
					textLabel2.Size = UDim2.new(1, 0, 1, 0)
					textLabel2.BackgroundTransparency = 1
					textLabel2.Font = highway
					textLabel2.TextSize = textSize
					textLabel2.TextColor3 = Color3.fromRGB(0, 0, 0)
					textLabel2.TextTransparency = 0.5
					textLabel2.Rotation = rotation
					textLabel2.Text = tostring(math.floor(arg2))
					textLabel2.ZIndex = 0
					textLabel2.Parent = billboardGui
					billboardGui.Size = UDim2.new(0, 0, 0, 0)
					TweenService:Create(billboardGui, TweenInfo.new(0.1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 380, 0, 90) }):Play()
					tbl22[arg] = billboardGui
					Vector3.new(n37, 3, n38)
					local vector = Vector3.new(n37, 3 + n33 * n31, n38)
					local tween = TweenService:Create(billboardGui, TweenInfo.new(2, Enum.EasingStyle.Linear), { StudsOffset = vector })
					tween:Play()

					task.delay(0.9, function()
						if not billboardGui.Parent then
							return
						end
						local n39 = n33 - n32
						TweenService:Create(textLabel, TweenInfo.new(n39, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { TextTransparency = 1, TextStrokeTransparency = 1 }):Play()
						TweenService:Create(textLabel2, TweenInfo.new(n39, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { TextTransparency = 1 }):Play()
						TweenService:Create(billboardGui, TweenInfo.new(n39, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Size = UDim2.new(0, 285, 0, 67.5) }):Play()
					end)

					tween.Completed:Connect(function()
						billboardGui:Destroy()

						if tbl22[arg] == billboardGui then
							tbl22[arg] = nil
						end
					end)
				end

				local function fn60(arg)
					local humanoidRootPart2 = arg:FindFirstChild("HumanoidRootPart")
					if not humanoidRootPart2 then
						return false
					end
					return (humanoidRootPart2.Position - Camera.CFrame.Position).Magnitude <= n30
				end

				local function fn61(arg)
					if not arg:IsA("Model") then
						return
					end

					if arg == LocalPlayer.Character then
						return
					end
					local flag14 = arg.Name:lower():find("dummy") ~= nil or arg:FindFirstChild("Enemy") ~= nil or arg:FindFirstChild("Dummy") ~= nil
					local flag15 = Players:GetPlayerFromCharacter(arg) ~= nil
					local humanoid2 = arg:FindFirstChildOfClass("Humanoid")
					if not humanoid2 then
						return
					end
					tbl21[arg] = humanoid2.Health

					local connection5 = humanoid2.HealthChanged:Connect(function(health)
						if not flag11 then
							return
						end

						if not (toggles.VisualizeDamageEnabled and toggles.VisualizeDamageEnabled.Value) then
							return
						end
						local flag16 = flag14

						if flag14 then
							flag16 = not (toggles.DummyEspEnabled and toggles.DummyEspEnabled.Value)
						end

						if flag16 then
							tbl21[arg] = health
							return
						end

						if not arg.Parent then
							return
						end

						if not fn60(arg) then
							return
						end
						local n35 = (tbl21[arg] or health) - health
						tbl21[arg] = health
						if n35 <= 0.5 then
							return
						end
						fn59(arg, n35)
					end)

					table.insert(tbl23, connection5)
					local connection6 = nil

					connection6 = humanoid2.AncestryChanged:Connect(function(child, parent)
						if not parent then
							tbl21[arg] = nil
							tbl22[arg] = nil

							if connection5 then
								connection5:Disconnect()
							end

							if connection6 then
								connection6:Disconnect()
							end
						end
					end)

					table.insert(tbl23, connection6)
				end

				local function fn62()
					local characters = workspace:FindFirstChild("Characters")

					if characters then
						for _, child in ipairs(characters:GetChildren()) do
							if not tbl21[child] then
								fn61(child)
							end
						end
					end

					for _, child in ipairs(workspace:GetChildren()) do
						if child:IsA("Model") and not tbl21[child] and (child.Name:lower():find("dummy") or child:FindFirstChild("Humanoid")) then
							fn61(child)
						end
					end
				end

				local characters = workspace:WaitForChild("Characters", 15)

				if characters then
					fn62()

					table.insert(tbl23, characters.ChildAdded:Connect(function(child)
						task.wait(0.5)
						fn61(child)
					end))

					table.insert(tbl23, characters.ChildRemoved:Connect(function(child)
						tbl21[child] = nil
						tbl22[child] = nil
					end))
				end

				table.insert(tbl23, workspace.ChildAdded:Connect(function(child)
					if child:IsA("Model") and (child.Name:lower():find("dummy") or child:FindFirstChild("Humanoid")) then
						task.wait(0.5)
						fn61(child)
					end
				end))

				task.spawn(function()
					while flag11 do
						task.wait(3)
						fn62()
					end
				end)

				task.spawn(function()
					while flag11 do
						task.wait(1)
					end

					for _, v30 in ipairs(tbl23) do
						v30:Disconnect()
					end

					pcall(function()
						eniDamageNumbers:Destroy()
					end)
				end)
			end)

			local function fn58()
				local tbl21 = {}
				local tbl22 = {}

				local function fn59()
					for _, v30 in pairs(tbl21) do
						if v30.connections then
							for _, connection5 in ipairs(v30.connections) do
								connection5:Disconnect()
							end
						end

						if v30.gui then
							pcall(function()
								v30.gui:Destroy()
							end)
						end
					end

					tbl21 = {}
					local characters = workspace:FindFirstChild("Characters")

					if characters then
						for _, child in ipairs(characters:GetChildren()) do
							local head = child:FindFirstChild("Head")

							if head then
								local eniReveal = head:FindFirstChild("ENI_Reveal")

								if eniReveal then
									pcall(function()
										eniReveal:Destroy()
									end)
								end
							end
						end
					end
				end

				local function fn60(arg)
					local playerFromCharacter = Players:GetPlayerFromCharacter(arg)
					if playerFromCharacter then
						return playerFromCharacter, false
					end

					if arg.Name:lower():find("dummy") or arg:FindFirstChild("Dummy") or arg:GetAttribute("Evade") then
						return nil, true
					end
					return nil, false
				end

				local function fn61(child)
					if not flag11 then
						return
					end

					if tbl21[child] then
						return
					end
					local v30, v31 = fn60(child)
					if not (v30 or v31) then
						return
					end

					if v30 == LocalPlayer then
						return
					end

					task.spawn(function()
						if not child.Parent then
							return
						end
						local head = child:WaitForChild("Head", 2)
						local moveset = child:WaitForChild("Moveset", 2)
						if not (head and moveset and child.Parent) then
							return
						end

						if tbl21[child] then
							return
						end

						if v31 and #moveset:GetChildren() == 0 then
							local character = LocalPlayer.Character
							character = character and character:FindFirstChild("Moveset")

							if character then
								for _, child2 in ipairs(character:GetChildren()) do
									if child2:IsA("NumberValue") then
										child2:Clone().Parent = moveset
									end
								end
							end
						end

						local reveal = ReplicatedStorage:FindFirstChild("Utils") and ReplicatedStorage.Utils:FindFirstChild("Reveal")
						if not reveal then
							return
						end
						local item = reveal:FindFirstChild("Handle") and reveal.Handle:FindFirstChild("Item")
						if not item then
							return
						end
						local clone = reveal:Clone()
						clone.Name = "ENI_Reveal"

						if clone:FindFirstChild("Handle") then
							clone.Handle:Destroy()
						end

						clone.AlwaysOnTop = true
						clone.MaxDistance = 999999
						clone.Adornee = head
						clone.Parent = head
						local moveset2 = clone:WaitForChild("Moveset")
						local ult = clone:WaitForChild("Ult")
						clone:WaitForChild("Evasive")
						local tbl23 = {}
						local tbl24 = {}

						local function fn62(arg)
							if not arg:IsA("NumberValue") then
								return
							end

							if moveset2:FindFirstChild(arg.Name) then
								return
							end
							local clone2 = item:Clone()
							clone2.Name = arg.Name
							clone2.Parent = moveset2

							if arg:GetAttribute("Key") then
								clone2.LayoutOrder = arg:GetAttribute("Key")
							end

							tbl23[arg] = { item = clone2, cdBar = clone2:FindFirstChild("Cooldown"), lastUse = arg:GetAttribute("LastUse") or 0 }
							local connection5 = nil

							connection5 = arg.AncestryChanged:Connect(function()
								if not arg.Parent then
									pcall(function()
										clone2:Destroy()
									end)

									tbl23[arg] = nil
									connection5:Disconnect()
								end
							end)

							table.insert(tbl24, connection5)

							local connection6 = arg:GetAttributeChangedSignal("LastUse"):Connect(function()
								if tbl23[arg] then
									tbl23[arg].lastUse = arg:GetAttribute("LastUse") or 0
								end
							end)

							table.insert(tbl24, connection6)
						end

						for _, child2 in ipairs(moveset:GetChildren()) do
							fn62(child2)
						end

						local connection5 = moveset.ChildAdded:Connect(function(child2)
							fn62(child2)
						end)

						table.insert(tbl24, connection5)

						local function fn63()
							local attribute2

							if v30 then
								attribute2 = v30:GetAttribute("Ultimate") or 0
							else
								attribute2 = child:GetAttribute("Ultimate") or 0
							end

							local fill = ult:FindFirstChild("Fill")

							if fill then
								fill.Size = UDim2.new(1, 0, attribute2 / 100, 0)
							end
						end

						if v30 then
							local connection6 = v30:GetAttributeChangedSignal("Ultimate"):Connect(fn63)
							table.insert(tbl24, connection6)
						else
							local connection6 = child:GetAttributeChangedSignal("Ultimate"):Connect(fn63)
							table.insert(tbl24, connection6)
						end

						fn63()

						local connection6 = child.AncestryChanged:Connect(function(child2, parent)
							if not parent then
								removeESP(child)
							end
						end)

						table.insert(tbl24, connection6)
						tbl21[child] = { gui = clone, trackedSkills = tbl23, connections = tbl24, isDummy = v31 }
						clone.Enabled = toggles.CooldownEspEnabled and toggles.CooldownEspEnabled.Value or false
					end)
				end

				local function fn62(child)
					local v30 = tbl21[child]

					if v30 then
						if v30.connections then
							for _, connection5 in ipairs(v30.connections) do
								connection5:Disconnect()
							end
						end

						if v30.gui then
							pcall(function()
								v30.gui:Destroy()
							end)
						end

						tbl21[child] = nil
					end
				end

				local characters = workspace:FindFirstChild("Characters")

				if characters then
					table.insert(tbl22, characters.ChildAdded:Connect(fn61))
					table.insert(tbl22, characters.ChildRemoved:Connect(fn62))

					for _, child in ipairs(characters:GetChildren()) do
						task.spawn(fn61, child)
					end
				end

				local connection5 = nil
				local n30 = 0

				connection5 = RunService.Heartbeat:Connect(function()
					if not flag11 then
						connection5:Disconnect()
						return
					end

					if not (toggles.CooldownEspEnabled and toggles.CooldownEspEnabled.Value) then
						return
					end
					local now2 = os.clock()
					if now2 - n30 < 0.1 then
						return
					end
					n30 = now2
					local serverTimeNow = workspace:GetServerTimeNow()

					for _, v30 in pairs(tbl21) do
						if v30.trackedSkills then
							for k, trackedSkill in pairs(v30.trackedSkills) do
								local value = k.Value
								local n31 = value - serverTimeNow - trackedSkill.lastUse

								if n31 > 0 then
									local n32 = math.clamp(n31 / value, 0, 1)

									if trackedSkill.cdBar then
										trackedSkill.cdBar.Size = UDim2.new(1, 0, n32, 0)
									end

									trackedSkill.item.BackgroundColor3 = Color3.fromRGB(45, 20, 20)
								elseif trackedSkill.cdBar and trackedSkill.cdBar.Size.Y.Scale > 0 then
									trackedSkill.cdBar.Size = UDim2.new(1, 0, 0, 0)
									trackedSkill.item.BackgroundColor3 = Color3.new(1, 1, 1)
									TweenService:Create(trackedSkill.item, TweenInfo.new(0.5), { BackgroundColor3 = Color3.fromRGB(31, 31, 31) }):Play()
								end
							end
						end
					end
				end)

				table.insert(tbl22, connection5)

				local function fn63()
					local enabled = toggles.CooldownEspEnabled and toggles.CooldownEspEnabled.Value or false

					for _, v30 in pairs(tbl21) do
						if v30.gui then
							v30.gui.Enabled = enabled
						end
					end
				end

				task.spawn(function()
					repeat
						task.wait(0.5)
					until toggles.CooldownEspEnabled

					toggles.CooldownEspEnabled:OnChanged(fn63)
				end)

				task.spawn(function()
					while flag11 do
						task.wait(1)
					end

					for _, v30 in ipairs(tbl22) do
						v30:Disconnect()
					end

					fn59()
				end)
			end

			fn58()

			local function fn59()
				local str5 = "rbxassetid://116811846715462"
				local str6 = "rbxassetid://84716311536982"
				local hui = gethui and gethui() or v15 or LocalPlayer:FindFirstChild("PlayerGui")
				local gojoDomainNotifier = hui:FindFirstChild("GojoDomainNotifier")

				if gojoDomainNotifier then
					pcall(function()
						gojoDomainNotifier:Destroy()
					end)
				end

				local screenGui2 = Instance.new("ScreenGui")
				screenGui2.Name = "GojoDomainNotifier"
				screenGui2.ResetOnSpawn = false
				screenGui2.Parent = hui
				local frame3 = Instance.new("Frame")
				frame3.Name = "NotifyFrame"
				frame3.Size = UDim2.new(0, 320, 0, 75)
				frame3.Position = UDim2.new(0.5, -160, 0, -100)
				frame3.BackgroundColor3 = Color3.fromRGB(12, 8, 20)
				frame3.BackgroundTransparency = 1
				frame3.BorderSizePixel = 0
				frame3.Parent = screenGui2
				local uiCorner = Instance.new("UICorner")
				uiCorner.CornerRadius = UDim.new(0, 12)
				uiCorner.Parent = frame3
				local uiStroke = Instance.new("UIStroke")
				uiStroke.Color = Color3.fromRGB(138, 43, 226)
				uiStroke.Thickness = 2
				uiStroke.Transparency = 1
				uiStroke.Parent = frame3
				local uiGradient = Instance.new("UIGradient")
				local colorSequence = ColorSequence.new
				local tbl21 = {}
				local v30 = ColorSequenceKeypoint.new(0, Color3.fromRGB(138, 43, 226))
				local v31 = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(186, 85, 211))
				local new = ColorSequenceKeypoint.new
				local color = Color3.fromRGB
				tbl21[1] = v30
				tbl21[2] = v31

				do
					local values = table.pack(new(1, color(0, 255, 255)))
					table.move(values, 1, values.n, 3, tbl21)
				end

				uiGradient.Color = colorSequence(tbl21)
				uiGradient.Parent = uiStroke
				local textLabel = Instance.new("TextLabel")
				textLabel.Name = "Title"
				textLabel.Size = UDim2.new(1, 0, 0.5, 0)
				textLabel.Position = UDim2.new(0, 0, 0.15, 0)
				textLabel.BackgroundTransparency = 1
				textLabel.Font = Enum.Font.GothamBold
				textLabel.Text = "0.2 Domain Detected"
				textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				textLabel.TextSize = 14
				textLabel.TextTransparency = 1
				textLabel.Parent = frame3
				local textLabel2 = Instance.new("TextLabel")
				textLabel2.Name = "SubText"
				textLabel2.Size = UDim2.new(1, 0, 0.35, 0)
				textLabel2.Position = UDim2.new(0, 0, 0.55, 0)
				textLabel2.BackgroundTransparency = 1
				textLabel2.Font = Enum.Font.GothamSemibold
				textLabel2.Text = "INFINITE VOID ACTIVE"
				textLabel2.TextColor3 = Color3.fromRGB(180, 150, 255)
				textLabel2.TextSize = 11
				textLabel2.TextTransparency = 1
				textLabel2.Parent = frame3
				local thread = nil

				local function hideGojoNotification()
					if thread then
						if thread ~= coroutine.running() then
							pcall(task.cancel, thread)
						end

						thread = nil
					end

					TweenService:Create(frame3, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(0.5, -160, 0, -100), BackgroundTransparency = 1 }):Play()
					TweenService:Create(uiStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quad), { Transparency = 1 }):Play()
					TweenService:Create(textLabel, TweenInfo.new(0.3, Enum.EasingStyle.Quad), { TextTransparency = 1 }):Play()
					TweenService:Create(textLabel2, TweenInfo.new(0.3, Enum.EasingStyle.Quad), { TextTransparency = 1 }):Play()
				end

				local function showGojoNotification(text, text2, arg)
					if thread then
						if thread ~= coroutine.running() then
							pcall(task.cancel, thread)
						end

						thread = nil
					end

					textLabel.Text = text
					textLabel2.Text = text2
					TweenService:Create(frame3, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Position = UDim2.new(0.5, -160, 0.08, 0), BackgroundTransparency = 0.15 }):Play()
					TweenService:Create(uiStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quad), { Transparency = 0 }):Play()
					TweenService:Create(textLabel, TweenInfo.new(0.3, Enum.EasingStyle.Quad), { TextTransparency = 0 }):Play()
					TweenService:Create(textLabel2, TweenInfo.new(0.3, Enum.EasingStyle.Quad), { TextTransparency = 0 }):Play()

					if arg then
						thread = task.delay(arg, function()
							hideGojoNotification()
						end)
					end
				end

				local flag14 = false
				local v32 = nil

				local function fn60()
					local tbl22 = {}

					for _, player in ipairs(Players:GetPlayers()) do
						if player ~= LocalPlayer and player.Character then
							local humanoid2 = player.Character:FindFirstChild("Humanoid")
							local humanoidRootPart2 = player.Character:FindFirstChild("HumanoidRootPart")

							if humanoid2 and humanoidRootPart2 and humanoid2.Health > 0 then
								table.insert(tbl22, player.Character)
							end
						end
					end

					return tbl22
				end

				local function fn61(arg)
					if not _G.AC_BYPASSED then
						showGojoNotification("AC CHECK FAILED", "Bypass AC First before Gojo 0.2!", 3)
						return
					end
					showGojoNotification("TELEPORTING", "Cycling through targets until domain ends...")
					local value = options.GojoKillAllDetectionDelay and options.GojoKillAllDetectionDelay.Value
					local value2

					if value then
						value2 = value
					else
						value2 = options.GojoFarmDetectionDelay and options.GojoFarmDetectionDelay.Value
					end

					task.wait(value2 or 0.2)
					local now2 = os.clock()

					while true do
						if flag14 and os.clock() - now2 < 7 then
							local flag15 = not arg

							if flag15 then
								flag15 = not (toggles.GojoKillAllEnabled and toggles.GojoKillAllEnabled.Value or toggles.AutoGojoFarmEnabled and toggles.AutoGojoFarmEnabled.Value)
							end

							if flag15 then
								hideGojoNotification()
								return
							end

							if not _G.AC_BYPASSED then
								hideGojoNotification()
								return
							end
							local v33 = fn60()

							if #v33 == 0 then
								showGojoNotification("No Target Found Buddy", "NO TP DONE", 1)
								task.wait(0.3)
							else
								for _, v34 in ipairs(v33) do
									if not flag14 or os.clock() - now2 >= 7 then
										break
									end
									local flag16 = not arg

									if flag16 then
										flag16 = not (toggles.GojoKillAllEnabled and toggles.GojoKillAllEnabled.Value or toggles.AutoGojoFarmEnabled and toggles.AutoGojoFarmEnabled.Value)
									end

									if flag16 then
										break
									end
									local character = LocalPlayer.Character
									local humanoidRootPart2 = character and character:FindFirstChild("HumanoidRootPart")
									character = character and character:FindFirstChild("Humanoid")
									if not humanoidRootPart2 or character and character.Health <= 0 then
										flag14 = false
										return
									end
									local humanoidRootPart3 = v34:FindFirstChild("HumanoidRootPart")
									local humanoid2 = v34:FindFirstChild("Humanoid")

									if humanoidRootPart3 and humanoid2 and humanoid2.Health > 0 then
										humanoidRootPart2.CFrame = humanoidRootPart3.CFrame * CFrame.new(0, 0, -3.5)
										task.wait(options.GojoTpSpeed and options.GojoTpSpeed.Value or 0.2)
									end
								end
							end

							task.wait(0.01)
							continue
						end

						hideGojoNotification()
						return
					end
				end

				local function autoPopSequence()
					task.spawn(function()
						pcall(function()
							require(game.ReplicatedStorage.Knit.Knit).GetController("ToolController"):Special()
						end)

						task.wait(0.05)

						pcall(function()
							game.ReplicatedStorage.Knit.Knit.Services.InfiniteVoidService.RE.Activated:FireServer()
						end)
					end)
				end

				_G.triggerGojo02KillAll = function(arg)
					task.spawn(function()
						local flag15 = (LocalPlayer:GetAttribute("Ultimate") or 0) < 100

						if flag15 then
							flag15 = not (LocalPlayer.Character and LocalPlayer.Character:GetAttribute("Awakened"))
						end

						if flag15 then
							showGojoNotification("Missing Ultimate", "Firstly Get 100% Ult", 3)
							return
						end

						pcall(function()
							game.ReplicatedStorage.Knit.Knit.Services.GojoService.RE.Ultimate:FireServer()
						end)

						task.wait(0.12)
						autoPopSequence()
						flag14 = true
						_G.isGojoDomainActive = true
						showGojoNotification(" 0.2s DOMAIN ", "0.2 Domain Activated")
						task.wait(2)

						if flag14 then
							fn61(arg)
						end
					end)
				end

				_G.autoPopSequence = autoPopSequence
				_G.showGojoNotification = showGojoNotification
				_G.hideGojoNotification = hideGojoNotification

				local function fn62(arg)
					local humanoid2 = arg:WaitForChild("Humanoid", 10)
					if not humanoid2 then
						return
					end
					local animator = humanoid2:WaitForChild("Animator", 10)
					if not animator then
						return
					end
					local connection5 = nil
					local connection6 = nil

					connection6 = humanoid2.Died:Connect(function()
						flag14 = false
						_G.isGojoDomainActive = false
						hideGojoNotification()

						if connection6 then
							connection6:Disconnect()
							connection6 = nil
						end
					end)

					connection5 = animator.AnimationPlayed:Connect(function(arg2)
						if not flag11 then
							connection5:Disconnect()
							return
						end
						local animation = arg2.Animation

						if toggles.Always02DomainEnabled and toggles.Always02DomainEnabled.Value then
							if animation.AnimationId == str6 or animation.Name == "Ultimate" then
								autoPopSequence()
							end
						end

						if toggles.GojoKillAllEnabled and toggles.GojoKillAllEnabled.Value or toggles.AutoGojoFarmEnabled and toggles.AutoGojoFarmEnabled.Value then
							if animation.AnimationId == str5 or animation.Name == "ShortVoid" then
								flag14 = true
								_G.isGojoDomainActive = true
								v32 = arg2
								showGojoNotification(" 0.2s DOMAIN ", "0.2 Domain")
								local connection7 = nil

								connection7 = arg2.Stopped:Connect(function()
									if v32 == arg2 then
										flag14 = false
										_G.isGojoDomainActive = false
										hideGojoNotification()

										if toggles.Invisibility and toggles.Invisibility.Value then
											task.delay(0.4, function()
												if type(_G.RefreshInvisibility) == "function" then
													_G.RefreshInvisibility()
												end
											end)
										end
									end

									connection7:Disconnect()
								end)

								task.delay(2.2, function()
									if flag14 then
										fn61()
									end
								end)
							end
						end
					end)

					local connection7 = nil

					connection7 = humanoid2.Destroying:Connect(function()
						if connection5 then
							connection5:Disconnect()
						end

						if connection6 then
							connection6:Disconnect()
						end

						connection7:Disconnect()
					end)
				end

				if LocalPlayer.Character then
					task.spawn(fn62, LocalPlayer.Character)
				end

				local connection5 = LocalPlayer.CharacterAdded:Connect(function(character)
					if not flag11 then
						charConn:Disconnect()
						return
					end
					fn62(character)
				end)

				task.spawn(function()
					while flag11 do
						task.wait(1)
					end

					connection5:Disconnect()

					pcall(function()
						screenGui2:Destroy()
					end)

					_G.autoPopSequence = nil
					_G.showGojoNotification = nil
					_G.hideGojoNotification = nil
				end)
			end

			if ElopezLoading then
				ElopezLoading:SetCurrentStep(4)
			end

			if ElopezLoading then
				ElopezLoading:SetMessage("Finalizing...")
			end

			if ElopezLoading then
				task.wait(0.7)
			end

			task.spawn(fn59)

			pcall(function()
				lib2:SetLibrary(lib)
				lib3:SetLibrary(lib)
				lib3:IgnoreThemeSettings()

				lib3:SetIgnoreIndexes({
					"MenuKeybind",
					"AimlockKeybind",
					"BlackflashKeybind",
					"SideDashKeybind",
					"AutoBlockKeybind",
					"ProjectileBlockKeybind",
					"OPLockKeybind",
					"GojoKillAllKeybind",
					"AutoGojoFarmKeybind",
					"BoxEspColor",
					"NameEspColor",
					"DummyChamsColor",
					"TracerColor",
					"DamageColor",
					"LockedEspColor",
				})

				lib2:SetFolder("Elopez Hub")
				lib3:SetFolder("Elopez Hub/configs")

				pcall(function()
					lib3:BuildConfigSection(ConfigTab)
				end)

				pcall(function()
					lib2:ApplyToTab(ConfigTab)
				end)

				lib3:LoadAutoloadConfig()

				pcall(function()
					if toggles.LockAllButtons and toggles.LockAllButtons.Value then
						fn48(true)
					end
				end)

				pcall(function()
					if applyStaticGradient then
						task.defer(applyStaticGradient)
					end
				end)

				if toggles.AutoMahitoBlackflash and toggles.AutoMahitoBlackflash.Value then
					if LocalPlayer.Character then
						fn20(LocalPlayer.Character)
					end
				end

				if toggles.ShowNotifications and toggles.ShowNotifications.Value then
					lib:Notify({ Title = "Elopez Hub", Description = "Beta Release Loaded", Time = 4 })
				end
			end)
		end

		if ElopezLoading then
			task.wait(0.4)
		end

		if ElopezLoading then
			pcall(function()
				ElopezLoading:Continue()
			end)
		end

		ElopezLoading = nil
	end

	fn16()

	if not (not UserSettings():HasTag("ጰ\u{BD2}\u{9D5}಼ፐമ෩") and not fn2(UserSettings():HasTag("ጰ\u{BD2}\u{9D5}಼ፐമ෩"), true, 889216)) then
		local now2 = os.clock()

		heartbeat:Connect(function()
			n23 += 1

			if 0 == n23 % 2660 then
				if n < 2887 or not flag8 and v12._2c771ebd63a3a048f15b8a39 ~= "_3b863f42412de96683fdbf5c" and os.clock() - now2 >= 45 then
					fn("J2_031")

					while true do
					end
				end
			end
		end)

		return 1
	end

	fn("J2_017")

	while true do
	end
end
