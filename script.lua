local color = require("gamesense/color")

-- Основной переключатель скрипта
local infinitylua_toggle = ui.new_checkbox("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFInfinitylua")

-- Комбобокс для выбора режима
local infinitylua_section = ui.new_combobox("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFMode:", {"Config", "RageBot", "Anti-Aim", "Exploit", "BuyBot", "Visual"})
ui.set_visible(infinitylua_section, false)

-- Разделитель
local air = ui.new_label("Lua", "B", " ")

-- Информационные лейблы для вкладки Config
local info_1 = ui.new_label("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFInformation")
local info_sep_top = ui.new_label("Lua", "B", "\a333333FF<------------------------------->")
local info_2 = ui.new_label("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFHello! I'm Infinity!")
local info_3 = ui.new_label("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFOhhh your dick is very big~..")
local info_4 = ui.new_label("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFI love u, HA NO I NO LOVE U")
local info_5 = ui.new_label("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFI love your dick~~")
local info_6 = ui.new_label("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFJoin: dsc.gg/infinitylua")
local info_7 = ui.new_label("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFLoader: InfinityLoader")
local info_8 = ui.new_label("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFVersion: 0.4b")
local info_sep_bottom = ui.new_label("Lua", "B", "\a333333FF<------------------------------->")

-- Настройки для резольвера, предиктов и бэктрека
local resolver_checkbox = ui.new_checkbox("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFResolver")
local resolver_mode = ui.new_combobox("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFResolver mode", {"Neverlose", "Gamesense"})
local predictor_checkbox = ui.new_checkbox("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFPrediction")
local predictor_mode = ui.new_combobox("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFPrediction mode", {"Neverlose", "Gamesense"})
local backtrack_shooting_checkbox = ui.new_checkbox("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFBackTrack Shooting")

-- Настройки для Anti-Aim (Flick Exploit)
local flick_exploit_checkbox = ui.new_checkbox("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFFlick exploit")

-- Настройки для BuyBot
local buybot_enabled = ui.new_checkbox("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFBuyBot")
local primary_weapon = ui.new_combobox("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFPrimary Weapon", {"None", "Auto-Sniper", "AWP", "SSG-08"})
local secondary_weapon = ui.new_combobox("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFSecondary Weapon", {"None", "Deagle", "Dual Berettas", "R8 Revolver", "Tec-9"})
local utility = ui.new_multiselect("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFUtility", {"Full Armor", "Regular Armor", "Molotov", "HE Grenade", "Smoke"})

-- Настройки для Visual (Watermark)
local watermark_enabled = ui.new_checkbox("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFWatermark")
local watermark_pos_x = ui.new_slider("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFWatermark Position X", 0, 1920, 10)
local watermark_pos_y = ui.new_slider("Lua", "B", "\aA7CFFF2 :3 ~ \aCCCCCCFFWatermark Position Y", 0, 1080, 10)

-- Изначально скрываем все элементы
ui.set_visible(resolver_checkbox, false)
ui.set_visible(resolver_mode, false)
ui.set_visible(predictor_checkbox, false)
ui.set_visible(predictor_mode, false)
ui.set_visible(backtrack_shooting_checkbox, false)
ui.set_visible(flick_exploit_checkbox, false)
ui.set_visible(buybot_enabled, false)
ui.set_visible(primary_weapon, false)
ui.set_visible(secondary_weapon, false)
ui.set_visible(utility, false)
ui.set_visible(watermark_enabled, false)
ui.set_visible(watermark_pos_x, false)
ui.set_visible(watermark_pos_y, false)
ui.set_visible(air, false)
ui.set_visible(info_1, false)
ui.set_visible(info_sep_top, false)
ui.set_visible(info_2, false)
ui.set_visible(info_3, false)
ui.set_visible(info_4, false)
ui.set_visible(info_5, false)
ui.set_visible(info_6, false)
ui.set_visible(info_7, false)
ui.set_visible(info_8, false)
ui.set_visible(info_sep_bottom, false)

-- Хранилище данных для резольвера
local resolver_data = {}
local function init_resolver_data(entindex)
    if not resolver_data[entindex] then
        resolver_data[entindex] = {
            yaw_history = {},
            misses = 0,
            resolved_yaw = 0
        }
    end
end

-- Функция нормализации угла
local function normalize_yaw(yaw)
    while yaw > 180 do yaw = yaw - 360 end
    while yaw < -180 do yaw = yaw + 360 end
    return yaw
end

-- Функция обновления интерфейса
local function update_infinity_ui()
    local enabled = ui.get(infinitylua_toggle)
    local section = ui.get(infinitylua_section)
    
    -- Показываем основные элементы только если скрипт включен
    ui.set_visible(infinitylua_section, enabled)
    ui.set_visible(air, enabled)
    
    -- Вкладка Config: показываем информацию
    local show_info = enabled and section == "Config"
    ui.set_visible(info_1, show_info)
    ui.set_visible(info_sep_top, show_info)
    ui.set_visible(info_2, show_info)
    ui.set_visible(info_3, show_info)
    ui.set_visible(info_4, show_info)
    ui.set_visible(info_5, show_info)
    ui.set_visible(info_6, show_info)
    ui.set_visible(info_7, show_info)
    ui.set_visible(info_8, show_info)
    ui.set_visible(info_sep_bottom, show_info)
    
    -- Вкладка RageBot: показываем настройки резольвера, предиктов и бэктрека
    local show_ragebot = enabled and section == "RageBot"
    ui.set_visible(resolver_checkbox, show_ragebot)
    ui.set_visible(predictor_checkbox, show_ragebot)
    ui.set_visible(backtrack_shooting_checkbox, show_ragebot)
    ui.set_visible(resolver_mode, show_ragebot and ui.get(resolver_checkbox))
    ui.set_visible(predictor_mode, show_ragebot and ui.get(predictor_checkbox))
    
    -- Вкладка Anti-Aim: показываем настройки Flick Exploit
    local show_antiaim = enabled and section == "Anti-Aim"
    ui.set_visible(flick_exploit_checkbox, show_antiaim)

    -- Вкладка BuyBot: показываем настройки покупки
    local show_buybot = enabled and section == "BuyBot"
    ui.set_visible(buybot_enabled, show_buybot)
    ui.set_visible(primary_weapon, show_buybot and ui.get(buybot_enabled))
    ui.set_visible(secondary_weapon, show_buybot and ui.get(buybot_enabled))
    ui.set_visible(utility, show_buybot and ui.get(buybot_enabled))

    -- Вкладка Visual: показываем настройки ватермарка
    local show_visual = enabled and section == "Visual"
    ui.set_visible(watermark_enabled, show_visual)
    ui.set_visible(watermark_pos_x, show_visual and ui.get(watermark_enabled))
    ui.set_visible(watermark_pos_y, show_visual and ui.get(watermark_enabled))
end

-- Привязываем колбэки для обновления UI
ui.set_callback(infinitylua_toggle, update_infinity_ui)
ui.set_callback(infinitylua_section, update_infinity_ui)
ui.set_callback(resolver_checkbox, update_infinity_ui)
ui.set_callback(predictor_checkbox, update_infinity_ui)
ui.set_callback(flick_exploit_checkbox, update_infinity_ui)
ui.set_callback(buybot_enabled, update_infinity_ui)
ui.set_callback(watermark_enabled, update_infinity_ui)

-- Инициализация интерфейса
update_infinity_ui()

-- Улучшенный резольвер Neverlose
local function resolver_neverlose(entindex)
    local ent = entity.get(entindex)
    if not ent or not entity.is_alive(ent) or not entity.is_enemy(ent) then return 0 end
    
    local eye_yaw = entity.get_prop(ent, "m_angEyeAngles[1]") or 0
    local lby = entity.get_prop(ent, "m_flLowerBodyYawTarget") or eye_yaw
    local vel = entity.get_prop(ent, "m_vecVelocity")
    local speed = vel and math.sqrt(vel[1]^2 + vel[2]^2) or 0
    
    local resolved_yaw = eye_yaw
    if math.abs(normalize_yaw(eye_yaw - lby)) > 35 then
        resolved_yaw = lby
    elseif speed > 100 then
        resolved_yaw = eye_yaw + (vel[1] > 0 and 45 or -45)
    end
    
    return normalize_yaw(resolved_yaw)
end

-- Улучшенный резольвер Gamesense
local function resolver_gamesense(entindex)
    local ent = entity.get(entindex)
    if not ent or not entity.is_alive(ent) or not entity.is_enemy(ent) then return 0 end
    
    init_resolver_data(entindex)
    local data = resolver_data[entindex]
    local eye_yaw = entity.get_prop(ent, "m_angEyeAngles[1]") or 0
    local lby = entity.get_prop(ent, "m_flLowerBodyYawTarget") or eye_yaw
    local vel = entity.get_prop(ent, "m_vecVelocity")
    local speed = vel and math.sqrt(vel[1]^2 + vel[2]^2) or 0
    
    table.insert(data.yaw_history, eye_yaw)
    if #data.yaw_history > 10 then table.remove(data.yaw_history, 1) end
    
    local delta = 0
    for i = 2, #data.yaw_history do
        delta = delta + math.abs(normalize_yaw(data.yaw_history[i] - data.yaw_history[i-1]))
    end
    delta = #data.yaw_history > 1 and (delta / (#data.yaw_history - 1)) or 0
    
    local resolved_yaw = eye_yaw
    if delta > 40 then
        local avg_yaw = 0
        for _, yaw in ipairs(data.yaw_history) do avg_yaw = avg_yaw + yaw end
        resolved_yaw = avg_yaw / #data.yaw_history
    elseif math.abs(normalize_yaw(eye_yaw - lby)) > 35 then
        resolved_yaw = lby
    elseif data.misses > 0 then
        local angles = {0, 45, -45, 90, -90, 135, -135}
        resolved_yaw = eye_yaw + angles[(data.misses % #angles) + 1]
    end
    if speed > 150 then
        resolved_yaw = normalize_yaw(resolved_yaw + (vel[1] > 0 and 30 or -30))
    end
    
    data.resolved_yaw = normalize_yaw(resolved_yaw)
    return data.resolved_yaw
end

-- Улучшенный предикт Neverlose
local function predictor_neverlose(entindex)
    local ent = entity.get(entindex)
    if not ent or not entity.is_alive(ent) or not entity.is_enemy(ent) then
        return {x = 0, y = 0, z = 0}
    end
    
    local pos = {entity.get_prop(ent, "m_vecOrigin")}
    local vel = {entity.get_prop(ent, "m_vecVelocity")}
    local tick = globals.tickinterval()
    local speed = vel and math.sqrt(vel[1]^2 + vel[2]^2) or 0
    
    local multiplier = speed > 100 and 1.2 or 1.0
    return {
        x = pos[1] + vel[1] * tick * multiplier,
        y = pos[2] + vel[2] * tick * multiplier,
        z = pos[3]
    }
end

-- Улучшенный предикт Gamesense
local function predictor_gamesense(entindex)
    local ent = entity.get(entindex)
    if not ent or not entity.is_alive(ent) or not entity.is_enemy(ent) then
        return {x = 0, y = 0, z = 0}
    end
    
    local pos = {entity.get_prop(ent, "m_vecOrigin")}
    local vel = {entity.get_prop(ent, "m_vecVelocity")}
    local tick = globals.tickinterval()
    local ping = globals.getping() * 0.001
    local sim_time = entity.get_prop(ent, "m_flSimulationTime") or 0
    local ticks = math.floor((ping + tick * 2) / tick)
    
    local predicted = {
        x = pos[1] + vel[1] * (tick * ticks),
        y = pos[2] + vel[2] * (tick * ticks),
        z = pos[3]
    }
    
    local trace = client.trace_line(pos[1], pos[2], pos[3], predicted.x, predicted.y, predicted.z, ent)
    if trace.fraction < 1 then
        predicted = {x = trace.endpos_x, y = trace.endpos_y, z = trace.endpos_z}
    end
    
    return predicted
end

-- Функция BackTrack Shooting
local function backtrack_shooting()
    if not ui.get(infinitylua_toggle) or ui.get(infinitylua_section) ~= "RageBot" then return end
    if not ui.get(backtrack_shooting_checkbox) then return end

    local local_player = entity.get_local_player()
    if not local_player or not entity.is_alive(local_player) then return end

    local weapon = entity.get_player_weapon(local_player)
    if not weapon then return end
    local next_attack = entity.get_prop(weapon, "m_flNextPrimaryAttack")
    if not next_attack or next_attack > globals.curtime() then return end

    local enemies = entity.get_players(true)
    if not enemies then return end

    local eye_pos = {client.eye_position()}
    if not eye_pos[1] then return end

    for _, enemy in ipairs(enemies) do
        if not entity.is_alive(enemy) then goto continue end

        local backtrack_records = entity.get_records(enemy)
        if not backtrack_records or #backtrack_records == 0 then goto continue end

        local best_record = nil
        local best_fov = 180
        local best_hitgroup = nil
        local best_damage = 0

        for _, record in ipairs(backtrack_records) do
            local sim_time = record.simulation_time
            if not sim_time or sim_time == 0 then goto skip_record end

            local origin = record.origin
            if not origin or not origin[1] then goto skip_record end

            local hitboxes = record.hitboxes
            if not hitboxes then goto skip_record end

            for hitgroup, hitbox_pos in pairs(hitboxes) do
                if not hitbox_pos[1] then goto skip_hitbox end

                local trace = client.trace_line(eye_pos[1], eye_pos[2], eye_pos[3], hitbox_pos[1], hitbox_pos[2], hitbox_pos[3], local_player)
                if trace.fraction > 0.98 then
                    local dx = hitbox_pos[1] - eye_pos[1]
                    local dy = hitbox_pos[2] - eye_pos[2]
                    local dz = hitbox_pos[3] - eye_pos[3]
                    local dist = math.sqrt(dx^2 + dy^2 + dz^2)
                    if dist == 0 then goto skip_hitbox end

                    local fov = math.deg(math.acos((dx * dx + dy * dy) / (dist * dist)))
                    if fov < best_fov then
                        local damage = client.calculate_damage(enemy, hitgroup, hitbox_pos[1], hitbox_pos[2], hitbox_pos[3])
                        if damage and damage > 0 then
                            best_fov = fov
                            best_record = record
                            best_hitgroup = hitgroup
                            best_damage = damage
                        end
                    end
                end

                ::skip_hitbox::
            end

            ::skip_record::
        end

        if best_record and best_damage > 0 then
            client.exec(string.format("ragebot override backtrack %d %f", enemy, best_record.simulation_time))
            client.exec("+attack")
            client.exec("-attack")
            break
        end

        ::continue::
    end
end

-- Функция BuyBot
local function buybot()
    if not ui.get(infinitylua_toggle) or ui.get(infinitylua_section) ~= "BuyBot" then return end
    if not ui.get(buybot_enabled) then return end

    local local_player = entity.get_local_player()
    if not local_player then return end

    local team = entity.get_prop(local_player, "m_iTeamNum")
    local is_ct = team == 3

    -- Покупка основного оружия
    local primary = ui.get(primary_weapon)
    if primary == "Auto-Sniper" then
        if is_ct then
            client.exec("buy scar20")
        else
            client.exec("buy g3sg1")
        end
    elseif primary == "AWP" then
        client.exec("buy awp")
    elseif primary == "SSG-08" then
        client.exec("buy ssg08")
    end

    -- Покупка дополнительного оружия
    local secondary = ui.get(secondary_weapon)
    if secondary == "Deagle" then
        client.exec("buy deagle")
    elseif secondary == "Dual Berettas" then
        client.exec("buy elite")
    elseif secondary == "R8 Revolver" then
        client.exec("buy revolver")
    elseif secondary == "Tec-9" then
        client.exec("buy tec9")
    end

    -- Покупка утилити (мультивыбор)
    local selected_utilities = ui.get(utility)
    for _, util in ipairs(selected_utilities) do
        if util == "Full Armor" then
            client.exec("buy vesthelm")
        elseif util == "Regular Armor" then
            client.exec("buy vest")
        elseif util == "Molotov" then
            client.exec("buy molotov")
        elseif util == "HE Grenade" then
            client.exec("buy hegrenade")
        elseif util == "Smoke" then
            client.exec("buy smokegrenade")
        end
    end
end

-- Переработанный Flick Exploit для Anti-Aim (100 строк)
local flick_state = 0
local last_flick_time = 0
local flick_history = {}
local flick_counter = 0
local max_history = 5
local base_frequency = 0.08
local yaw_adjustment = 0
local flick_phase = 1
local last_speed = 0
local phase_timer = 0
local function handle_flick_exploit()
    if not ui.get(infinitylua_toggle) then return end
    if ui.get(infinitylua_section) ~= "Anti-Aim" then return end
    if not ui.get(flick_exploit_checkbox) then return end
    
    local player = entity.get_local_player()
    if not player then return end
    if not entity.is_alive(player) then return end
    
    local current_time = globals.realtime()
    if current_time - last_flick_time < base_frequency then return end
    
    local vel = entity.get_prop(player, "m_vecVelocity")
    local speed = vel and math.sqrt(vel[1]^2 + vel[2]^2) or 0
    local speed_delta = math.abs(speed - last_speed)
    last_speed = speed
    
    table.insert(flick_history, speed_delta)
    if #flick_history > max_history then
        table.remove(flick_history, 1)
    end
    
    local avg_speed_delta = 0
    for _, delta in ipairs(flick_history) do
        avg_speed_delta = avg_speed_delta + delta
    end
    avg_speed_delta = avg_speed_delta / #flick_history
    
    local dynamic_frequency = base_frequency
    if avg_speed_delta > 50 then
        dynamic_frequency = dynamic_frequency * 0.8
    elseif avg_speed_delta < 20 then
        dynamic_frequency = dynamic_frequency * 1.2
    end
    
    if current_time - phase_timer > 2 then
        flick_phase = (flick_phase % 3) + 1
        phase_timer = current_time
    end
    
    local yaw = 0
    if flick_phase == 1 then
        local angles = {60, -60, 90, -90}
        yaw = angles[math.random(1, #angles)]
    elseif flick_phase == 2 then
        local angles = {120, -120, 150, -150}
        yaw = angles[math.random(1, #angles)]
    else
        local angles = {45, -45, 135, -135}
        yaw = angles[math.random(1, #angles)]
    end
    
    flick_counter = flick_counter + 1
    if flick_counter % 3 == 0 then
        yaw_adjustment = math.random(-30, 30)
    end
    
    yaw = normalize_yaw(yaw + yaw_adjustment)
    
    local tick_interval = globals.tickinterval()
    local sim_time = entity.get_prop(player, "m_flSimulationTime") or 0
    local time_factor = (sim_time % 1) * 10
    yaw = normalize_yaw(yaw + time_factor)
    
    if speed > 150 then
        yaw = normalize_yaw(yaw + (vel[1] > 0 and 20 or -20))
    end
    
    client.exec(string.format("aa override yaw %f", yaw))
    last_flick_time = current_time
end

-- 🌈 Градиентная полосочка сверху
local function draw_gradient_bar(x, y, width, height, alpha)
    local segments = 40
    for i = 0, segments - 1 do
        local t = i / (segments - 1)
        local r = math.floor(127 + 127 * math.sin(t * 6.2832))
        local g = math.floor(127 + 127 * math.sin(t * 6.2832 + 2))
        local b = math.floor(127 + 127 * math.sin(t * 6.2832 + 4))
        local seg_width = width / segments
        renderer.rectangle(x + i * seg_width, y, seg_width + 1, height, r, g, b, alpha)
    end
end

-- 🌊 Функция для отрисовки ватермарка
local function draw_watermark()
    if not ui.get(infinitylua_toggle) or ui.get(infinitylua_section) ~= "Visual" then return end
    if not ui.get(watermark_enabled) then return end

    local version = "0.4b"
    local fps = math.floor(1 / globals.frametime())
    local text = string.format("Infinity\aA7CFFF2llua\aCCCCCCFF | dsc.gg/infinitylua | version %s | %dfps", version, fps)

    local text_w, text_h = renderer.measure_text(nil, text)
    local pad_x, pad_y = 8, 6
    local box_w = text_w + pad_x * 2
    local box_h = text_h + pad_y

    -- Получаем позицию из слайдеров
    local x = ui.get(watermark_pos_x)
    local y = ui.get(watermark_pos_y)

    -- Фон
    renderer.rectangle(x - 1, y - 4, box_w + 2, box_h + 2, 50, 50, 50, 255)
    renderer.rectangle(x, y - 3, box_w, box_h, 17, 17, 17, 180)

    -- Радужная полоска
    draw_gradient_bar(x - 1, y - 6, box_w + 2, 2, 255)

    -- Текст
    renderer.text(x + pad_x, y, 200, 200, 200, 255, nil, 0, text)
end

-- Применение при стрельбе (RageBot)
client.set_event_callback("aim_fire", function(e)
    if not ui.get(infinitylua_toggle) or ui.get(infinitylua_section) ~= "RageBot" then return end
    
    local entindex = e.target
    
    if ui.get(resolver_checkbox) then
        local mode = ui.get(resolver_mode)
        local resolved_yaw = mode == "Neverlose" and resolver_neverlose(entindex) or resolver_gamesense(entindex)
        if resolved_yaw ~= 0 then
            client.exec(string.format("ragebot override yaw %d %f", entindex, resolved_yaw))
        end
    end
    
    if ui.get(predictor_checkbox) then
        local mode = ui.get(predictor_mode)
        local predicted_pos = mode == "Neverlose" and predictor_neverlose(entindex) or predictor_gamesense(entindex)
        if predicted_pos.x then
            client.exec(string.format("ragebot override pos %d %f %f %f", entindex, predicted_pos.x, predicted_pos.y, predicted_pos.z))
        end
    end
end)

-- Адаптация при промахах (RageBot)
client.set_event_callback("aim_miss", function(e)
    if not ui.get(resolver_checkbox) then return end
    local entindex = e.target
    init_resolver_data(entindex)
    resolver_data[entindex].misses = resolver_data[entindex].misses + 1
end)

-- Обработка BackTrack Shooting (RageBot)
client.set_event_callback("pre_frame", function()
    backtrack_shooting()
end)

-- Обработка Flick Exploit (Anti-Aim)
client.set_event_callback("pre_frame", function()
    handle_flick_exploit()
end)

-- Обработка BuyBot (покупка в начале раунда с задержкой)
client.set_event_callback("round_start", function()
    if not ui.get(infinitylua_toggle) or ui.get(infinitylua_section) ~= "BuyBot" then return end
    if not ui.get(buybot_enabled) then return end

    -- Добавляем задержку 0.5 секунды перед покупкой
    client.delay_call(0.5, buybot)
end)

-- Обработка отрисовки ватермарка
client.set_event_callback("paint", function()
    draw_watermark()
end)
