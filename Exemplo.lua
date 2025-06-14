local OrionV2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/ServerSad/UiLib/refs/heads/main/Lib/uilib.lua"))() -- Substitua pelo link real

local Window = OrionV2:MakeWindow({
	Name = "Exemplo",
	SaveConfig = true,
	ConfigFolder = "ConfigDoExemplo",
	IntroText = "Carregando sua GUI...",
	IntroEnabled = true,
	ShowIcon = true,
	Icon = "rbxassetid://14229447778",
	IntroIcon = "rbxassetid://14229447778",
	SearchBar = {
		Default = "🔍 Buscar...",
		ClearTextOnFocus = true
	}
})

-- TAB PRINCIPAL
local Tab = Window:MakeTab({
	Name = "Principal",
	Icon = "rbxassetid://4483345998"
})
local Tab2 = Window:MakeTab({
	Name = "Logs",
	Icon = "rbxassetid://4483345998"
})

-- BOTÃO
Tab:AddButton({
	Name = "Clique aqui!",
	Callback = function()
		OrionLib:MakeNotification({
			Name = "Sucesso!",
			Content = "Você clicou no botão.",
			Time = 3
		})
	end
})

-- TOGGLE
Tab:AddToggle({
	Name = "Modo Hardcore",
	Default = false,
	Flag = "modoHardcore",
	Save = true,
	Callback = function(state)
		print("Modo Hardcore está:", state)
	end
})

-- SLIDER
Tab:AddSlider({
	Name = "Volume",
	Min = 0,
	Max = 100,
	Default = 50,
	Increment = 5,
	ValueName = "%",
	Flag = "volumeUser",
	Save = true,
	Callback = function(val)
		print("Volume:", val)
	end
})

-- DROPDOWN
Tab:AddDropdown({
	Name = "Escolha sua cor favorita",
	Options = {"Vermelho", "Verde", "Azul", "Amarelo"},
	Default = "Vermelho",
	Flag = "corFavorita",
	Save = true,
	Callback = function(opt)
		print("Cor escolhida:", opt)
	end
})

-- BIND
Tab:AddBind({
	Name = "Atalho para Ação",
	Default = Enum.KeyCode.G,
	Hold = false,
	Callback = function()
		print("Atalho ativado!")
	end
})

-- TEXTBOX
Tab:AddTextbox({
	Name = "Digite algo",
	Default = "",
	TextDisappear = true,
	Callback = function(txt)
		print("Você digitou:", txt)
	end
})

-- LABEL
Tab:AddLabel("Este é um rótulo fixo de informação")

-- PARÁGRAFO
Tab:AddParagraph("Aviso", "Este é um parágrafo com mais texto.\nVocê pode mostrar explicações, regras ou tutoriais aqui.")

-- LOG
Tab2:AddLog("Log do sistema iniciado com sucesso.")

-- GUI READY
OrionLib:Init()
