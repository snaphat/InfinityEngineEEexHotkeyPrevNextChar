# InfinityEngineEEexHotkeyPrevNextChar

This script adds hotkeys for quickly selecting the previous or next character in Infinity Engine games, leveraging [EEex](https://github.com/Bubb13/EEex).

## Installation
1. Download the `M_Hotkey.lua` file from this repository.
2. Place `M_Hotkey.lua` into your game's `override` directory.

   - This folder is typically found in the installation directory of your Infinity Engine game.

3. Ensure you are running the game with EEex enabled.

## Usage
- Press `[` key to select the previous character.
- Press `]` key to select the next character.

## Customization
To change the hotkeys:
1. Open `M_Hotkey.lua` in a text editor.
2. Locate these lines:
   ```lua
   table.insert(B3Hotkey_Hotkeys, {function() B3Hotkey_AttemptToSelectPrevCharacter() end, {}, {0x5B}}) -- [ key
   table.insert(B3Hotkey_Hotkeys, {function() B3Hotkey_AttemptToSelectNextCharacter() end, {}, {0x5D}}) -- ] key
   ```
3. Replace `0x5B` and `0x5D` with the key codes of your choice. Refer to following list for ascii values:
   ![Wikipedia ASCII-Table](https://upload.wikimedia.org/wikipedia/commons/d/dd/ASCII-Table.svg)
4. Save your changes.
