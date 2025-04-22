local _0x7a2b = require("gamesense/color")
local _0x1f4e = "A7CFFF2 :3 ~ CCCCCCF"
local _0x9c3d = function(s) return string.char(tonumber(s, 16)) end
local _0x5b8a = function(s) local t = ""; for i=1,#s,2 do t=t.._0x9c3d(s:sub(i,i+1)) end return t end
local _0x3e6f = _0x5b8a("4c7561") local _0x2d1c = _0x5b8a("42")

local _0x8b7c = ui.new_checkbox(_0x3e6f, _0x2d1c, "\a".._0x1f4e.."4e66696e6974796c7561")
local _0x4a9d = ui.new_combobox(_0x3e6f, _0x2d1c, "\a".._0x1f4e.."4d6f64653a", {"436f6e666967", "52616765426f74", "416e74692d41696d", "4578706c6f6974", "427579426f74"})
ui.set_visible(_0x4a9d, false)

local _0x6e2f = ui.new_label(_0x3e6f, _0x2d1c, " ")

local _0x1b5a = ui.new_label(_0x3e6f, _0x2d1c, "\a".._0x1f4e.."496e666f726d6174696f6e")
local _0x7d3c = ui.new_label(_0x3e6f, _0x2d1c, "\a333333FF3c2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d3e")
local _0x2a8f = ui.new_label(_0x3e6f, _0x2d1c, "\a".._0x1f4e.."48656c6c6f212049276d20496e66696e69747921")
local _0x9e4b = ui.new_label(_0x3e6f, _0x2d1c, "\a".._0x1f4e.."4f68686820796f7572206469636b2069732076657279206269677e2e2e")
local _0x3f6d = ui.new_label(_0x3e6f, _0x2d1c, "\a".._0x1f4e.."49206c6f766520752c204841204e4f2049204e4f204c4f56452055")
local _0x8c2e = ui.new_label(_0x3e6f, _0x2d1c, "\a".._0x1f4e.."49206c6f766520796f7572206469636b7e7e")
local _0x5d7f = ui.new_label(_0x3e6f, _0x2d1c, "\a".._0x1f4e.."4a6f696e3a206473632e67672f696e66696e6974796c7561")
local _0x1e9a = ui.new_label(_0x3e6f, _0x2d1c, "\a".._0x1f4e.."4c6f616465723a20496e66696e6974794c6f61646572")
local _0x6b3d = ui.new_label(_0x3e6f, _0x2d1c, "\a".._0x1f4e.."56657273696f6e3a20302e3362")
local _0x4f8e = ui.new_label(_0x3e6f, _0x2d1c, "\a333333FF3c2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d3e")

local _0x2c9b = ui.new_checkbox(_0x3e6f, _0x2d1c, "\a".._0x1f4e.."5265736f6c766572")
local _0x7f4a = ui.new_combobox(_0x3e6f, _0x2d1c, "\a".._0x1f4e.."5265736f6c766572206d6f6465", {"4e657665726c6f7365", "47616d6573656e7365"})
local _0x3a8d = ui.new_checkbox(_0x3e6f, _0x2d1c, "\a".._0x1f4e.."50726564696374696f6e")
local _0x9b6e = ui.new_combobox(_0x3e6f, _0x2d1c, "\a".._0x1f4e.."50726564696374696f6e206d6f6465", {"4e657665726c6f7365", "47616d6573656e7365"})
local _0x5c2f = ui.new_checkbox(_0x3e6f, _0x2d1c, "\a".._0x1f4e.."4261636b547261636b2053686f6f74696e67")
local _0x1d7a = ui.new_checkbox(_0x3e6f, _0x2d1c, "\a".._0x1f4e.."466c69636b206578706c6f6974")
local _0x8e3b = ui.new_checkbox(_0x3e6f, _0x2d1c, "\a".._0x1f4e.."427579426f74")
local _0x6a9c = ui.new_combobox(_0x3e6f, _0x2d1c, "\a".._0x1f4e.."5072696d61727920576561706f6e", {"4e6f6e65", "4175746f2d536e69706572", "415750", "5353472d3038"})
local _0x2b5d = ui.new_combobox(_0x3e6f, _0x2d1c, "\a".._0x1f4e.."5365636f6e6461727920576561706f6e", {"4e6f6e65", "446561676c65", "4475616c204265726574746173", "5238205265766f6c766572", "5465632d39"})
local _0x7e4f = ui.new_multiselect(_0x3e6f, _0x2d1c, "\a".._0x1f4e.."5574696c697479", {"46756c6c2041726d6f72", "526567756c61722041726d6f72", "4d6f6c6f746f76", "4845204772656e616465", "536d6f6b65"})

local _0x4b1e = math.random(1,100); if _0x4b1e > 50 then _0x4b1e = _0x4b1e - 50 end
ui.set_visible(_0x2c9b, false) ui.set_visible(_0x7f4a, false) ui.set_visible(_0x3a8d, false)
ui.set_visible(_0x9b6e, false) ui.set_visible(_0x5c2f, false) ui.set_visible(_0x1d7a, false)
ui.set_visible(_0x8e3b, false) ui.set_visible(_0x6a9c, false) ui.set_visible(_0x2b5d, false)
ui.set_visible(_0x7e4f, false) ui.set_visible(_0x6e2f, false) ui.set_visible(_0x1b5a, false)
ui.set_visible(_0x7d3c, false) ui.set_visible(_0x2a8f, false) ui.set_visible(_0x9e4b, false)
ui.set_visible(_0x3f6d, false) ui.set_visible(_0x8c2e, false) ui.set_visible(_0x5d7f, false)
ui.set_visible(_0x1e9a, false) ui.set_visible(_0x6b3d, false) ui.set_visible(_0x4f8e, false)

local _0x9a7b = {}
local function _0x3c2e(_0x1a4f)
    if not _0x9a7b[_0x1a4f] then
        _0x9a7b[_0x1a4f] = { _0x5e3d = {}, _0x7b2c = 0, _0x2f6a = 0 }
        local _0x6d8e = math.random(1,10); if _0x6d8e > 5 then _0x6d8e = _0x6d8e * 2 end
    end
end

local function _0x8d5f(_0x4e7a)
    while _0x4e7a > 180 do _0x4e7a = _0x4e7a - 360 end
    while _0x4e7a < -180 do _0x4e7a = _0x4e7a + 360 end
    return _0x4e7a + (_0x4b1e % 2)
end

local function _0x6f3a()
    local _0x2e9b = ui.get(_0x8b7c)
    local _0x7c4d = ui.get(_0x4a9d)
    local _0x5a6e = math.random(1,100); if _0x5a6e > 75 then _0x5a6e = _0x5a6e - 25 end
    ui.set_visible(_0x4a9d, _0x2e9b) ui.set_visible(_0x6e2f, _0x2e9b)
    
    local _0x1c7f = _0x2e9b and _0x7c4d == _0x5b8a("436f6e666967")
    for _, v in ipairs({_0x1b5a, _0x7d3c, _0x2a8f, _0x9e4b, _0x3f6d, _0x8c2e, _0x5d7f, _0x1e9a, _0x6b3d, _0x4f8e}) do
        ui.set_visible(v, _0x1c7f)
    end
    
    local _0x9f2a = _0x2e9b and _0x7c4d == _0x5b8a("52616765426f74")
    ui.set_visible(_0x2c9b, _0x9f2a) ui.set_visible(_0x3a8d, _0x9f2a) ui.set_visible(_0x5c2f, _0x9f2a)
    ui.set_visible(_0x7f4a, _0x9f2a and ui.get(_0x2c9b)) ui.set_visible(_0x9b6e, _0x9f2a and ui.get(_0x3a8d))
    
    local _0x4d8b = _0x2e9b and _0x7c4d == _0x5b8a("416e74692d41696d")
    ui.set_visible(_0x1d7a, _0x4d8b)
    
    local _0x3b6c = _0x2e9b and _0x7c4d == _0x5b8a("427579426f74")
    ui.set_visible(_0x8e3b, _0x3b6c) ui.set_visible(_0x6a9c, _0x3b6c and ui.get(_0x8e3b))
    ui.set_visible(_0x2b5d, _0x3b6c and ui.get(_0x8e3b)) ui.set_visible(_0x7e4f, _0x3b6c and ui.get(_0x8e3b))
end

for _, v in ipairs({_0x8b7c, _0x4a9d, _0x2c9b, _0x3a8d, _0x1d7a, _0x8e3b}) do
    ui.set_callback(v, _0x6f3a)
end
_0x6f3a()

local function _0x2d7e(_0x5f3a)
    local _0x1e4b = entity.get(_0x5f3a)
    if not _0x1e4b or not entity.is_alive(_0x1e4b) or not entity.is_enemy(_0x1e4b) then return 0 end
    local _0x7a4c = entity.get_prop(_0x1e4b, "m_angEyeAngles[1]") or 0
    local _0x3d6f = entity.get_prop(_0x1e4b, "m_flLowerBodyYawTarget") or _0x7a4c
    local _0x9c2e = entity.get_prop(_0x1e4b, "m_vecVelocity")
    local _0x4f7b = _0x9c2e and math.sqrt(_0x9c2e[1]^2 + _0x9c2e[2]^2) or 0
    local _0x6e8a = math.random(1,10); if _0x6e8a > 8 then _0x6e8a = _0x6e8a - 5 end
    local _0x2b9c = _0x7a4c
    if math.abs(_0x8d5f(_0x7a4c - _0x3d6f)) > 35 then
        _0x2b9c = _0x3d6f
    elseif _0x4f7b > 100 then
        _0x2b9c = _0x7a4c + (_0x9c2e[1] > 0 and 45 or -45)
    end
    return _0x8d5f(_0x2b9c)
end

local function _0x9e7d(_0x3a4e)
    local _0x5c8b = entity.get(_0x3a4e)
    if not _0x5c8b or not entity.is_alive(_0x5c8b) or not entity.is_enemy(_0x5c8b) then return 0 end
    _0x3c2e(_0x3a4e) local _0x1f7b = _0x9a7b[_0x3a4e]
    local _0x7e2a = entity.get_prop(_0x5c8b, "m_angEyeAngles[1]") or 0
    local _0x4b9d = entity.get_prop(_0x5c8b, "m_flLowerBodyYawTarget") or _0x7e2a
    local _0x2d3e = entity.get_prop(_0x5c8b, "m_vecVelocity")
    local _0x8c5f = _0x2d3e and math.sqrt(_0x2d3e[1]^2 + _0x2d3e[2]^2) or 0
    table.insert(_0x1f7b._0x5e3d, _0x7e2a)
    if #_0x1f7b._0x5e3d > 10 then table.remove(_0x1f7b._0x5e3d, 1) end
    local _0x6a3f = 0
    for i=2,#_0x1f7b._0x5e3d do
        _0x6a3f = _0x6a3f + math.abs(_0x8d5f(_0x1f7b._0x5e3d[i] - _0x1f7b._0x5e3d[i-1]))
    end
    _0x6a3f = #_0x1f7b._0x5e3d > 1 and (_0x6a3f / (#_0x1f7b._0x5e3d - 1)) or 0
    local _0x9f4a = _0x7e2a
    if _0x6a3f > 40 then
        local _0x3e7b = 0
        for _, v in ipairs(_0x1f7b._0x5e3d) do _0x3e7b = _0x3e7b + v end
        _0x9f4a = _0x3e7b / #_0x1f7b._0x5e3d
    elseif math.abs(_0x8d5f(_0x7e2a - _0x4b9d)) > 35 then
        _0x9f4a = _0x4b9d
    elseif _0x1f7b._0x7b2c > 0 then
        local _0x5d3c = {0, 45, -45, 90, -90, 135, -135}
        _0x9f4a = _0x7e2a + _0x5d3c[(_0x1f7b._0x7b2c % #_0x5d3c) + 1]
    end
    if _0x8c5f > 150 then
        _0x9f4a = _0x8d5f(_0x9f4a + (_0x2d3e[1] > 0 and 30 or -30))
    end
    _0x1f7b._0x2f6a = _0x8d5f(_0x9f4a)
    return _0x1f7b._0x2f6a
end

local function _0x4c2b(_0x7d5e)
    local _0x2e4f = entity.get(_0x7d5e)
    if not _0x2e4f or not entity.is_alive(_0x2e4f) or not entity.is_enemy(_0x2e4f) then
        return {x=0,y=0,z=0}
    end
    local _0x8f3a = {entity.get_prop(_0x2e4f, "m_vecOrigin")}
    local _0x6b4c = {entity.get_prop(_0x2e4f, "m_vecVelocity")}
    local _0x1a7b = globals.tickinterval()
    local _0x9e2c = _0x6b4c and math.sqrt(_0x6b4c[1]^2 + _0x6b4c[2]^2) or 0
    local _0x3f4e = _0x9e2c > 100 and 1.2 or 1
    local _0x5b7c = math.random(1,5); if _0x5b7c > 3 then _0x5b7c = _0x5b7c - 2 end
    return {
        x = _0x8f3a[1] + _0x6b4c[1] * _0x1a7b * _0x3f4e,
        y = _0x8f3a[2] + _0x6b4c[2] * _0x1a7b * _0x3f4e,
        z = _0x8f3a[3]
    }
end

local function _0x1e3d(_0x7a5f)
    local _0x4d3e = entity.get(_0x7a5f)
    if not _0x4d3e or not entity.is_alive(_0x4d3e) or not entity.is_enemy(_0x4d3e) then
        return {x=0,y=0,z=0}
    end
    local _0x2f7b = {entity.get_prop(_0x4d3e, "m_vecOrigin")}
    local _0x8c3a = {entity.get_prop(_0x4d3e, "m_vecVelocity")}
    local _0x6e4b = globals.tickinterval()
    local _0x9f5c = globals.getping() * 0.001
    local _0x3b2e = entity.get_prop(_0x4d3e, "m_flSimulationTime") or 0
    local _0x5d4f = math.floor((_0x9f5c + _0x6e4b * 2) / _0x6e4b)
    local _0x1c9a = {
        x = _0x2f7b[1] + _0x8c3a[1] * (_0x6e4b * _0x5d4f),
        y = _0x2f7b[2] + _0x8c3a[2] * (_0x6e4b * _0x5d4f),
        z = _0x2f7b[3]
    }
    local _0x7e5a = client.trace_line(_0x2f7b[1], _0x2f7b[2], _0x2f7b[3], _0x1c9a.x, _0x1c9a.y, _0x1c9a.z, _0x4d3e)
    if _0x7e5a.fraction < 1 then
        _0x1c9a = {x=_0x7e5a.endpos_x, y=_0x7e5a.endpos_y, z=_0x7e5a.endpos_z}
    end
    return _0x1c9a
end

local function _0x9c4a()
    if not ui.get(_0x8b7c) or ui.get(_0x4a9d) ~= _0x5b8a("52616765426f74") then return end
    if not ui.get(_0x5c2f) then return end
    local _0x2a7b = entity.get_local_player()
    if not _0x2a7b or not entity.is_alive(_0x2a7b) then return end
    local _0x8d3e = entity.get_player_weapon(_0x2a7b)
    if not _0x8d3e then return end
    local _0x6f4c = entity.get_prop(_0x8d3e, "m_flNextPrimaryAttack")
    if not _0x6f4c or _0x6f4c > globals.curtime() then return end
    local _0x3c5f = entity.get_players(true)
    if not _0x3c5f then return end
    local _0x1d9a = {client.eye_position()}
    if not _0x1d9a[1] then return end
    for _, _0x7b4e in ipairs(_0x3c5f) do
        if not entity.is_alive(_0x7b4e) then goto _0x5e4b end
        local _0x9e5c = entity.get_records(_0x7b4e)
        if not _0x9e5c or #_0x9e5c == 0 then goto _0x5e4b end
        local _0x4e2f = nil local _0x2b7c = 180 local _0x8f4a = nil local _0x6a5d = 0
        for _, _0x3d4b in ipairs(_0x9e5c) do
            local _0x1f9a = _0x3d4b.simulation_time
            if not _0x1f9a or _0x1f9a == 0 then goto _0x7c3e end
            local _0x5f4c = _0x3d4b.origin
            if not _0x5f4c or not _0x5f4c[1] then goto _0x7c3e end
            local _0x9c6e = _0x3d4b.hitboxes
            if not _0x9c6e then goto _0x7c3e end
            for _0x2e5a, _0x8a3b in pairs(_0x9c6e) do
                if not _0x8a3b[1] then goto _0x6b7e end
                local _0x4f3a = client.trace_line(_0x1d9a[1], _0x1d9a[2], _0x1d9a[3], _0x8a3b[1], _0x8a3b[2], _0x8a3b[3], _0x2a7b)
                if _0x4f3a.fraction > 0.98 then
                    local _0x3e4c = _0x8a3b[1] - _0x1d9a[1]
                    local _0x1a9b = _0x8a3b[2] - _0x1d9a[2]
                    local _0x7f5d = _0x8a3b[3] - _0x1d9a[3]
                    local _0x5c3e = math.sqrt(_0x3e4c^2 + _0x1a9b^2 + _0x7f5d^2)
                    if _0x5c3e == 0 then goto _0x6b7e end
                    local _0x9d4f = math.deg(math.acos((_0x3e4c * _0x3e4c + _0x1a9b * _0x1a9b) / (_0x5c3e * _0x5c3e)))
                    if _0x9d4f < _0x2b7c then
                        local _0x6c2e = client.calculate_damage(_0x7b4e, _0x2e5a, _0x8a3b[1], _0x8a3b[2], _0x8a3b[3])
                        if _0x6c2e and _0x6c2e > 0 then
                            _0x2b7c = _0x9d4f _0x4e2f = _0x3d4b _0x8f4a = _0x2e5a _0x6a5d = _0x6c2e
                        end
                    end
                end
                ::_0x6b7e::
            end
            ::_0x7c3e::
        end
        if _0x4e2f and _0x6a5d > 0 then
            client.exec(string.format("ragebot override backtrack %d %f", _0x7b4e, _0x4e2f.simulation_time))
            client.exec("+attack") client.exec("-attack") break
        end
        ::_0x5e4b::
    end
end

local function _0x3f5a()
    if not ui.get(_0x8b7c) or ui.get(_0x4a9d) ~= _0x5b8a("427579426f74") then return end
    if not ui.get(_0x8e3b) then return end
    local _0x1e7b = entity.get_local_player()
    if not _0x1e7b then return end
    local _0x7a4e = entity.get_prop(_0x1e7b, "m_iTeamNum")
    local _0x5b3c = _0x7a4e == 3
    local _0x9c7d = math.random(1,10); if _0x9c7d > 7 then _0x9c7d = _0x9c7d - 3 end
    local _0x2f4a = ui.get(_0x6a9c)
    if _0x2f4a == _0x5b8a("4175746f2d536e69706572") then
        if _0x5b3c then client.exec("buy scar20") else client.exec("buy g3sg1") end
    elseif _0x2f4a == _0x5b8a("415750") then
        client.exec("buy awp")
    elseif _0x2f4a == _0x5b8a("5353472d3038") then
        client.exec("buy ssg08")
    end
    local _0x8d5a = ui.get(_0x2b5d)
    if _0x8d5a == _0x5b8a("446561676c65") then
        client.exec("buy deagle")
    elseif _0x8d5a == _0x5b8a("4475616c204265726574746173") then
        client.exec("buy elite")
    elseif _0x8d5a == _0x5b8a("5238205265766f6c766572") then
        client.exec("buy revolver")
    elseif _0x8d5a == _0x5b8a("5465632d39") then
        client.exec("buy tec9")
    end
    local _0x6b3e = ui.get(_0x7e4f)
    for _, _0x4c3f in ipairs(_0x6b3e) do
        if _0x4c3f == _0x5b8a("46756c6c2041726d6f72") then
            client.exec("buy vesthelm")
        elseif _0x4c3f == _0x5b8a("526567756c61722041726d6f72") then
            client.exec("buy vest")
        elseif _0x4c3f == _0x5b8a("4d6f6c6f746f76") then
            client.exec("buy molotov")
        elseif _0x4c3f == _0x5b8a("4845204772656e616465") then
            client.exec("buy hegrenade")
        elseif _0x4c3f == _0x5b8a("536d6f6b65") then
            client.exec("buy smokegrenade")
        end
    end
end

local _0x1f4c = 0 local _0x7e3b = 0 local _0x5c4f = {} local _0x9d3e = 0 local _0x2a5b = 5
local _0x8f5c = 0.08 local _0x6c4a = 0 local _0x3d5e = 1 local _0x4e5a = 0 local _0x1a3b = 0
local function _0x7b5f()
    if not ui.get(_0x8b7c) or ui.get(_0x4a9d) ~= _0x5b8a("416e74692d41696d") then return end
    if not ui.get(_0x1d7a) then return end
    local _0x5e3a = entity.get_local_player()
    if not _0x5e3a or not entity.is_alive(_0x5e3a) then return end
    local _0x9e4c = globals.realtime()
    if _0x9e4c - _0x7e3b < _0x8f5c then return end
    local _0x2b4e = entity.get_prop(_0x5e3a, "m_vecVelocity")
    local _0x6d3f = _0x2b4e and math.sqrt(_0x2b4e[1]^2 + _0x2b4e[2]^2) or 0
    local _0x4f5c = math.abs(_0x6d3f - _0x4e5a)
    _0x4e5a = _0x6d3f
    table.insert(_0x5c4f, _0x4f5c)
    if #_0x5c4f > _0x2a5b then table.remove(_0x5c4f, 1) end
    local _0x3c2a = 0
    for _, v in ipairs(_0x5c4f) do _0x3c2a = _0x3c2a + v end
    _0x3c2a = _0x3c2a / #_0x5c4f
    local _0x8a4b = _0x8f5c
    if _0x3c2a > 50 then _0x8a4b = _0x8a4b * 0.8 elseif _0x3c2a < 20 then _0x8a4b = _0x8a4b * 1.2 end
    if _0x9e4c - _0x1a3b > 2 then
        _0x3d5e = (_0x3d5e % 3) + 1 _0x1a3b = _0x9e4c
    end
    local _0x7c5a = 0
    if _0x3d5e == 1 then
        local _0x5f3b = {60, -60, 90, -90}
        _0x7c5a = _0x5f3b[math.random(1, #_0x5f3b)]
    elseif _0x3d5e == 2 then
        local _0x2e4b = {120, -120, 150, -150}
        _0x7c5a = _0x2e4b[math.random(1, #_0x2e4b)]
    else
        local _0x9f2e = {45, -45, 135, -135}
        _0x7c5a = _0x9f2e[math.random(1, #_0x9f2e)]
    end
    _0x9d3e = _0x9d3e + 1
    if _0x9d3e % 3 == 0 then _0x6c4a = math.random(-30, 30) end
    _0x7c5a = _0x8d5f(_0x7c5a + _0x6c4a)
    local _0x4d2a = globals.tickinterval()
    local _0x1c3b = entity.get_prop(_0x5e3a, "m_flSimulationTime") or 0
    local _0x6e5a = (_0x1c3b % 1) * 10
    _0x7c5a = _0x8d5f(_0x7c5a + _0x6e5a)
    if _0x6d3f > 150 then
        _0x7c5a = _0x8d5f(_0x7c5a + (_0x2b4e[1] > 0 and 20 or -20))
    end
    client.exec(string.format("aa override yaw %f", _0x7c5a))
    _0x7e3b = _0x9e4c
end

client.set_event_callback("aim_fire", function(_0x5a3b)
    if not ui.get(_0x8b7c) or ui.get(_0x4a9d) ~= _0x5b8a("52616765426f74") then return end
    local _0x3e2a = _0x5a3b.target
    if ui.get(_0x2c9b) then
        local _0x1f5c = ui.get(_0x7f4a)
        local _0x7b3a = _0x1f5c == _0x5b8a("4e657665726c6f7365") and _0x2d7e(_0x3e2a) or _0x9e7d(_0x3e2a)
        if _0x7b3a ~= 0 then
            client.exec(string.format("ragebot override yaw %d %f", _0x3e2a, _0x7b3a))
        end
    end
    if ui.get(_0x3a8d) then
        local _0x9c5a = ui.get(_0x9b6e)
        local _0x4f2b = _0x9c5a == _0x5b8a("4e657665726c6f7365") and _0x4c2b(_0x3e2a) or _0x1e3d(_0x3e2a)
        if _0x4f2b.x then
            client.exec(string.format("ragebot override pos %d %f %f %f", _0x3e2a, _0x4f2b.x, _0x4f2b.y, _0x4f2b.z))
        end
    end
end)

client.set_event_callback("aim_miss", function(_0x2a3b)
    if not ui.get(_0x2c9b) then return end
    local _0x8f2e = _0x2a3b.target
    _0x3c2e(_0x8f2e)
    _0x9a7b[_0x8f2e]._0x7b2c = _0x9a7b[_0x8f2e]._0x7b2c + 1
end)

client.set_event_callback("pre_frame", function()
    _0x9c4a()
    _0x7b5f()
end)

client.set_event_callback("round_start", function()
    if not ui.get(_0x8b7c) or ui.get(_0x4a9d) ~= _0x5b8a("427579426f74") then return end
    if not ui.get(_0x8e3b) then return end
    client.delay_call(0.5, _0x3f5a)
end)
