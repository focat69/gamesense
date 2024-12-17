# **gamesense.lua UI Library Documentation**

```lua
local Library = loadstring(game:HttpGetAsync 'https://raw.githubusercontent.com/focat69/gamesense/main/source')()
```

## **Library Initialization**

### `Library:New(options: table)`

Creates a new window for the UI library.

| **Argument** | **Type** | **Default**     | **Description**                                           |
|--------------|----------|-----------------|-----------------------------------------------------------|
| `Name`      | `string` | `"gamesense.lua"` | The name of the UI window. **If the name starts with `gamesense`, the word `sense` will appear green.** |
| `Padding`   | `number` | `6`             | Padding between UI components.                            |

**Example:**

```lua
local Window = Library:New({
    Name = "gamesense | Rivals Premium",
    Padding = 8
})
Window:Destroy() -- destroys window (wow)
```

## **Creating Tabs**

### `Window:CreateTab(options: table)`

Creates a new tab inside the UI window.

| **Argument** | **Type** | **Default** | **Description**           |
|--------------|----------|-------------|---------------------------|
| `Name`      | `string` | `"Tab"`     | The name of the tab.      |

**Example:**

```lua
local aimbotTab = Window:CreateTab({ Name = "Aimbot" })
local visualsTab = Window:CreateTab({ Name = "Visuals" })
```


## **Components**

### **Button**

#### `Tab:Button(options: table)`

Adds a button to the tab.

| **Argument** | **Type**   | **Default** | **Description**                                   |
|--------------|------------|-------------|-------------------------------------------------|
| `Name`      | `string`   | `"Button"`  | The name of the button.                          |
| `Callback`  | `function` | `function()`| A function to run when the button is clicked.    |

#### **Methods:**

- `Button:SetText(text: string)`  
   Updates the button's display text.

- `Button:SetCallback(fn: function)`  
   Changes the button's callback function.

**Example:**

```lua
local btn = aimbotTab:Button({
    Name = "Click me!",
    Callback = function()
        print("Button clicked")
    end
})

local i = 0
btn:SetCallback(function()
    i += 1
    btn:SetText("Clicked " .. tostring(i) .. " times")
end)

-- Now upon clicking, instead of "Button clicked", the button will display 
-- the number of times it has been clicked.
```


### **Label**

#### `Tab:Label(options: table)`

Adds a label (text display) to the tab.

| **Argument** | **Type** | **Default**                         | **Description**                         |
|--------------|----------|-------------------------------------|-----------------------------------------|
| `Message`   | `string` | `"This is an example label."`       | The text to display in the label.       |

#### **Methods:**

- `Label:SetText(text: string)`  
   Updates the label's message.

**Example:**

```lua
local label = aimbotTab:Label({
    Message = "Silent aim is currently detected. Use with caution."
})

label:SetText("Silent aim is FUD! :D")
```


### **Slider**

#### `Tab:Slider(options: table)`

Adds a slider to the tab.

| **Argument** | **Type**   | **Default** | **Description**                          |
|--------------|------------|-------------|------------------------------------------|
| `Name`      | `string`   | `"Slider"`  | The name of the slider.                  |
| `Min`       | `number`   | `0`         | The minimum value for the slider.        |
| `Max`       | `number`   | `100`       | The maximum value for the slider.        |
| `Default`   | `number`   | `50`        | The initial value of the slider.         |
| `Step`      | `number`   | `1`         | How much the value increments by         |
| `Callback`  | `function` | `function()`| A function called when the slider value changes. |

#### **Methods:**

- `Slider:SetValue(v: number)`  
   Sets the slider's value programmatically.

- `Slider:GetValue()`  
   Returns the slider's current value.

**Example:**

```lua
local slider = miscTab:Slider({
    Name = "Walkspeed",
    Min = 0,
    Max = 100,
    Default = 10,
    Step = 1,
    Callback = function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end
})

slider:SetValue(20) -- Sets the slider value to 20
print(slider:GetValue()) -- Prints the current value of the slider
```


### **Toggle**

#### `Tab:Toggle(options: table)`

Adds a toggle switch to the tab.

| **Argument** | **Type**   | **Default** | **Description**                              |
|--------------|------------|-------------|----------------------------------------------|
| `Name`      | `string`   | `"Toggle"`  | The name of the toggle.                      |
| `State`     | `boolean`  | `false`     | The initial state of the toggle (on/off).    |
| `Callback`  | `function` | `function()`| A function called when the toggle changes.   |

#### **Methods:**

- `Toggle:SetValue(bool: boolean)`  
   Sets the toggle's state.

- `Toggle:GetValue()`  
   Returns the current state of the toggle.

**Example:**

```lua
local toggle3d = miscTab:Toggle({
    Name = "3D Rendering",
    State = true,
    Callback = function(state)
        print("3D Rendering: ", state)
    end
})

toggle3d:SetValue(false) -- Turns off the toggle
print(toggle3d:GetValue()) -- Prints false
```


### **Textbox**

#### `Tab:Textbox(options: table)`

Adds a textbox input field to the tab.

| **Argument**   | **Type**   | **Default**                       | **Description**                          |
|----------------|------------|-----------------------------------|------------------------------------------|
| `Placeholder` | `string`   | `"Enter your username..."`        | Placeholder text displayed in the textbox. |
| `Callback`    | `function` | `function()`                      | A function called when input is submitted. |

#### **Methods:**

- `Textbox:SetValue(text: string)`  
   Sets the textbox value programmatically.

- `Textbox:GetValue()`  
   Returns the current text in the textbox.

**Example:**

```lua
local webhookTextbox = webhookTab:Textbox({
    Placeholder = "Enter webhook URL...",
    Callback = function(input)
        print("Webhook URL entered: " .. input)
    end
})

webhookTextbox:SetValue("https://discord.com/api/webhooks/1234567890/abcdefg")
print(webhookTextbox:GetValue()) -- Prints the current input value
```

---

## **Notifications**

### `Library:Notify(options: table)`

Displays a temporary notification.

| **Argument**    | **Type** | **Default**                            | **Description**                       |
|-----------------|----------|----------------------------------------|---------------------------------------|
| `Description`  | `string` | `"This is an example notification!"`  | The notification text.                |
| `Duration`     | `number` | `5`                                    | Duration of the notification (in seconds). |

**Example:**

```lua
Library:Notify({
    Description = "Script executed successfully!",
    Duration = 3
})
```

---

# **Note**

- The library automatically handles validation for all arguments using `Library:_validate()`.
- Meaning if you miss a field (like `Name` for a Button) it will set it self to the default value.

---

This is my first ever proper UI library, so any feedback is appreciated. I hope you find this useful! `:)`

Made with 💕 by [@focat69](https://github.com/@focat69)  
Check out https://weao.xyz & https://shotta.city whilst you're at it.
