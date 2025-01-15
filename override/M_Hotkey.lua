function B3Hotkey_AttemptToSelectPrevCharacter()
    local sprite = EEex_Sprite_GetSelected()
    local portraitNum = 0

    if sprite ~= nil then
        portraitNum = EEex_Sprite_GetPortraitIndex(sprite)
        if #EEex_Sprite_GetAllSelectedIDs() == 1 then
            portraitNum = portraitNum - 1
        end
    end

    local numCharacters = EEex_Sprite_GetNumCharacters()
	if portraitNum < 0 then
		portraitNum = numCharacters - 1
	end

    B3Hotkey_AttemptToSelectCharacter(portraitNum)
end

function B3Hotkey_AttemptToSelectNextCharacter()
    local sprite = EEex_Sprite_GetSelected()
    local portraitNum = 0

    if sprite ~= nil then
        portraitNum = EEex_Sprite_GetPortraitIndex(sprite)
        if #EEex_Sprite_GetAllSelectedIDs() == 1 then
            portraitNum = portraitNum + 1
        end
    end

    local numCharacters = EEex_Sprite_GetNumCharacters()
	if portraitNum >= numCharacters then
		portraitNum = 0
	end

    B3Hotkey_AttemptToSelectCharacter(portraitNum)
end

table.insert(B3Hotkey_Hotkeys, {function() B3Hotkey_AttemptToSelectPrevCharacter() end, {}, {0x5B}}) -- [ key
table.insert(B3Hotkey_Hotkeys, {function() B3Hotkey_AttemptToSelectNextCharacter() end, {}, {0x5D}}) -- ] key
