local Library = loadstring(
    game:HttpGetAsync("https://raw.githubusercontent.com/focat69/gamesense/refs/heads/main/source?t=" .. tostring(tick()))
)()

local Window = Library:New({
    Name = "Example Tab",
    Padding = 5
})

local TabOne = Window:CreateTab({
    Name = "Tab 1"
})

local CallbackButton = TabOne:Button({
    Name = "I will be renamed",
    Callback = function()
		print("I was clicked!")
	end
})



-- Adjust the button's callback/function
CallbackButton:SetCallback(function()
	print("I was clicked yet again")
end)


-- Adjusts the button's name
CallbackButton:SetText("Click me!") 

-- Add a Label to TabOne
local ExampleLabel = TabOne:Label({
    Message = "Hello, I am a text!"
})


-- Add a Slider to TabOne
local ExampleSlider = TabOne:Slider({
    Name = "Slider Value",
    Min = 0,
    Max = 100,
    Default = 50,
    Step = 5,
    Callback = function(value)
        print("Slider value changed to:", value)
        ExampleLabel:SetText("Slider Value: " .. tostring(value)) -- Updates label with slider value
    end
})

-- Set Slider value to 75
ExampleSlider:SetValue(75)


-- Add a Toggle to TabOne
local ExampleToggle = TabOne:Toggle({
    Name = "Enable Feature",
    State = false,
    Callback = function(state)
        print("Toggle state changed to:", state)
        ExampleLabel:SetText("Feature Enabled: " .. tostring(state))
    end
})

-- Set the toggle to 'true'
ExampleToggle:SetValue(true)

-- Add a Textbox to TabOne
local ExampleTextbox = TabOne:Textbox({
    Placeholder = "Enter your name...",
    Callback = function(text)
        ExampleLabel:SetText("Hello, " .. text .. "!")
    end
})

-- Add a Notification when Script Executes
Library:Notify({
    Description = "Script loaded successfully!",
    Duration = 3
})


-- Destroy the UI
-- Window:Destroy() 