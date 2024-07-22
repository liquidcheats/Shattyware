do -- rainyhook/master/src/keybindlists.lua
	function UserInterface:KeybindsList()
		local KeybindsList = InstanceNew("Frame")
		local KeybindsListCorner = InstanceNew("UICorner")
		local KeybindsListTitle = InstanceNew("TextLabel")
		local ObjectsList = InstanceNew("Frame")
		local ObjectsList_2 = InstanceNew("UIListLayout")

		KeybindsList.Name = "KeybindsList"
		KeybindsList.Parent = UI["1"]
		KeybindsList.BackgroundColor3 = Color3FromRGB(23, 21, 21)
		KeybindsList.BorderColor3 = Color3FromRGB(0, 0, 0)
		KeybindsList.BorderSizePixel = 0
		KeybindsList.Position = UDim2New(0.00636042422, 0, 0.43246755, 0)
		KeybindsList.Size = UDim2New(0, 102, 0, 19)
		UI.KeybindListo = KeybindsList

		KeybindsListCorner.CornerRadius = UDim.new(0, 4)
		KeybindsListCorner.Name = "KeybindsListCorner"
		KeybindsListCorner.Parent = KeybindsList

		KeybindsListTitle.Name = "KeybindsListTitle"
		KeybindsListTitle.Parent = KeybindsList
		KeybindsListTitle.BackgroundColor3 = Color3FromRGB(255, 255, 255)
		KeybindsListTitle.BackgroundTransparency = 1.000
		KeybindsListTitle.BorderColor3 = Color3FromRGB(0, 0, 0)
		KeybindsListTitle.BorderSizePixel = 0
		KeybindsListTitle.Size = UDim2New(1, 0, 1, 0)
		KeybindsListTitle.Font = Enum.Font.RobotoMono
		KeybindsListTitle.Text = "hotkeys"
		KeybindsListTitle.TextColor3 = Color3FromRGB(255, 255, 255)
		KeybindsListTitle.TextSize = 12.000

		ObjectsList.Name = "ObjectsList"
		ObjectsList.Parent = KeybindsList
		ObjectsList.BackgroundColor3 = Color3FromRGB(255, 255, 255)
		ObjectsList.BackgroundTransparency = 1.000
		ObjectsList.BorderColor3 = Color3FromRGB(0, 0, 0)
		ObjectsList.BorderSizePixel = 0
		ObjectsList.Position = UDim2New(0, 0, 1, 0)
		ObjectsList.Size = UDim2New(0, 102, 0, 13)

		ObjectsList_2.Name = "ObjectsList"
		ObjectsList_2.Parent = ObjectsList
		ObjectsList_2.SortOrder = Enum.SortOrder.LayoutOrder

		local KeybindsListOptions = {}
		UserInterface.KeybindList = KeybindsListOptions

		function KeybindsListOptions:Add(title, state)
			if table.find(UserInterface.KeybindsListObjects, title) then return end

			local HotkeyFrame = InstanceNew("Frame")
			local HotkeyTitle = InstanceNew("TextLabel")
			local HotkeyState = InstanceNew("TextLabel")

			HotkeyFrame.Name = title
			HotkeyFrame.Parent = ObjectsList
			HotkeyFrame.BackgroundColor3 = Color3FromRGB(255, 255, 255)
			HotkeyFrame.BackgroundTransparency = 1.000
			HotkeyFrame.BorderColor3 = Color3FromRGB(0, 0, 0)
			HotkeyFrame.BorderSizePixel = 0
			HotkeyFrame.Size = UDim2New(0, 102, 0, 12)

			HotkeyTitle.Name = "HotkeyTitle"
			HotkeyTitle.Parent = HotkeyFrame
			HotkeyTitle.BackgroundColor3 = Color3FromRGB(255, 255, 255)
			HotkeyTitle.BackgroundTransparency = 1.000
			HotkeyTitle.BorderColor3 = Color3FromRGB(0, 0, 0)
			HotkeyTitle.BorderSizePixel = 0
			HotkeyTitle.Size = UDim2New(1, 0, 0, 12)
			HotkeyTitle.Font = Enum.Font.RobotoMono
			HotkeyTitle.Text = title
			HotkeyTitle.TextColor3 = Color3FromRGB(255, 255, 255)
			HotkeyTitle.TextSize = 12.000
			HotkeyTitle.TextXAlignment = Enum.TextXAlignment.Left

			HotkeyState.Name = "HotkeyState"
			HotkeyState.Parent = HotkeyFrame
			HotkeyState.BackgroundColor3 = Color3FromRGB(255, 255, 255)
			HotkeyState.BackgroundTransparency = 1.000
			HotkeyState.BorderColor3 = Color3FromRGB(0, 0, 0)
			HotkeyState.BorderSizePixel = 0
			HotkeyState.Size = UDim2New(1, 0, 0, 12)
			HotkeyState.Font = Enum.Font.RobotoMono
			HotkeyState.Text = string.lower(state)
			HotkeyState.TextColor3 = Color3FromRGB(255, 255, 255)
			HotkeyState.TextSize = 12.000
			HotkeyState.TextXAlignment = Enum.TextXAlignment.Right

			table.insert(UserInterface.KeybindsListObjects, title)
			return Options
		end

		function KeybindsListOptions:SetVisibility(Title, Visibility)
			local object = ObjectsList:FindFirstChild(Title)
			if object then
				ObjectsList:FindFirstChild(Title).Visible = Visibility
			end
		end

		function KeybindsListOptions:SetMode(Title, Mode)
			local object = ObjectsList:FindFirstChild(Title)
			if object then
				ObjectsList:FindFirstChild(Title)["HotkeyState"].Text = string.lower(Mode)
			end
		end

		function KeybindsListOptions:SetInterfaceVisibility(Visibility)
			KeybindsList.Visible = Visibility
		end

		return KeybindsListOptions
	end
end
