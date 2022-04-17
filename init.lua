-- alacritty shortcut <option> + <space>
hs.hotkey.bind({"option"}, "space", function()
  local alacritty = hs.application.get('alacritty')
  if (alacritty ~= nil and alacritty:isFrontmost()) then
    alacritty:hide()
  else
    hs.application.launchOrFocus("/Applications/Alacritty.app")
  end
end)

-- obsidian shortcut <cmd> + <alt> + <N>
hs.hotkey.bind({"cmd", "alt"}, "N", function()
  local obsidian = hs.application.get('obsidian')
  if (obsidian ~= nil and obsidian:isFrontmost()) then
    obsidian:hide()
  else
    hs.application.launchOrFocus("/Applications/Obsidian.app")
  end
end)

-- vscode shortcut <cmd> + <alt> + <V>
hs.hotkey.bind({"cmd", "alt"}, "V", function()
  local code = hs.application.get('code')
  if (code ~= nil and code:isFrontmost()) then
    code:hide()
  else
    hs.application.launchOrFocus("/Applications/Visual Studio Code.app")
  end
end)

-- rstudio shortcut <cmd> + <alt> + <R>
hs.hotkey.bind({"cmd", "alt"}, "R", function()
  local code = hs.application.get('rstudio')
  if (code ~= nil and code:isFrontmost()) then
    code:hide()
  else
    hs.application.launchOrFocus("/Applications/RStudio.app")
  end
end)

-- Teams shortcut <cmd> + <alt> + <T>
hs.hotkey.bind({"cmd", "alt"}, "T", function()
  local code = hs.application.get('teams')
  if (code ~= nil and code:isFrontmost()) then
    code:hide()
  else
    hs.application.launchOrFocus("/Applications/Microsoft Teams.app")
  end
end)

-- outlook shortcut <cmd> + <alt> + <O>
hs.hotkey.bind({"cmd", "alt"}, "O", function()
  local code = hs.application.get('outlook')
  if (code ~= nil and code:isFrontmost()) then
    code:hide()
  else
    hs.application.launchOrFocus("/Applications/Microsoft Outlook.app")
  end
end)

-- chrome shortcut <cmd> + <alt> + <C>
hs.hotkey.bind({"cmd", "alt"}, "C", function()
  local code = hs.application.get('chrome')
  if (code ~= nil and code:isFrontmost()) then
    code:hide()
  else
    hs.application.launchOrFocus("/Applications/Google Chrome.app")
  end
end)

hs.loadSpoon('ControlEscape'):start() 