hs.hotkey.bind({"option"}, "space", function()
  local alacritty = hs.application.get('alacritty')
  if (alacritty ~= nil and alacritty:isFrontmost()) then
    alacritty:hide()
  else
    hs.application.launchOrFocus("/Applications/Alacritty.app")
  end
end)
hs.loadSpoon('ControlEscape'):start() -- Load Hammerspoon bits from https://github.com/jasonrudolph/ControlEscape.spoon
--- hs.loadSpoon('ClipboardTool'):bindHotkeys(
--- {
--- show_clipboard={{"ctrl", "shift"}, "C"},
--- toggle_clipboard={{"cmd"}, "V"}
--- })
--- hs.loadSpoon('ClipboardTool'):start()

--- hs.loadSpoon('WindowHalfsAndThirds')
--- spoon.WindowHalfsAndThirds:bindHotkeys(spoon.WindowHalfsAndThirds.defaultHotkeys)

--- hs.loadSpoon('Seal'):start()                  
