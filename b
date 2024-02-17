--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88 
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER
]=]

-- Instances: 2 | Scripts: 1 | Modules: 0
local G2L = {};

-- StarterGui.ScreenGui
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

-- StarterGui.ScreenGui.LocalScript
G2L["2"] = Instance.new("LocalScript", G2L["1"]);


-- StarterGui.ScreenGui.LocalScript
local function C_2()
local script = G2L["2"];
	local Button = game:GetService("CoreGui").Discord.MainFrame -- If your Frame has a different name for your GUI then you should rename "Frame" to the name of your Frame
	
	function onKeyPress(actionName, userInputState, inputObject)
		if userInputState == Enum.UserInputState.Begin then
			Button.Visible = not Button.Visible
		end
	
	end
	
	game.ContextActionService:BindAction("keyPressSpecialName", onKeyPress, true, Enum.KeyCode.M) -- Change only the Letter M to whatever Key you want it to be
	game.ContextActionService:SetPosition("keyPressSpecialName", UDim2.new(.5,0,-.5,0)) -- Change Position to whatever Position you what the icon to be at for mobile players
	game.ContextActionService:SetImage("keyPressSpecialName", "rbxassetid://4534517011") -- Change only ID Number to whatever your icon ID Number is
end;
task.spawn(C_2);

return G2L["1"], require;
