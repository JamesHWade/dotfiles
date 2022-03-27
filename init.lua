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

-- vscode shortcut <cmd> + <alt> + <C>
hs.hotkey.bind({"cmd", "alt"}, "C", function()
  local code = hs.application.get('code')
  if (code ~= nil and code:isFrontmost()) then
    code:hide()
  else
    hs.application.launchOrFocus("/Applications/Visual Studio Code.app")
  end
end)

-- rstudio shortcut <cmd> + <alt> + <C>
hs.hotkey.bind({"cmd", "alt"}, "R", function()
  local code = hs.application.get('rstudio')
  if (code ~= nil and code:isFrontmost()) then
    code:hide()
  else
    hs.application.launchOrFocus("/Applications/RStudio.app")
  end
end)


hs.loadSpoon('ControlEscape'):start() 