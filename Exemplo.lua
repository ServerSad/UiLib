local ServerUi = loadstring(game:HttpGet("https://raw.githubusercontent.com/ServerSad/UiLib/refs/heads/main/Lib/uilib.lua"))()

ServerUi:MakeRoles({
	Especial = {
		Color = "#FFFF00",
		Users = {11223344, "SeuNome", "NomeDoMeuAmigo"}
	},
	User = {
		Color = "#00FF00",
		Users = "everyone"
	}
})

local Window = ServerUi:MakeWindow({
	Name = "Interface Completa",
	SaveConfig = true,
	ConfigFolder = "ConfigDoPlayer",
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
	Icon = "rbxassetid://4483345998",
	RequiredRole = "AllRoles"
})

local Tab2 = Window:MakeTab({
	Name = "Tab Especial",
	Icon = "rbxassetid://4483345998",
	RequiredRole = "Especial"
})

ServerUi:MakeNotification({
	Name = "Bem vindo!",
	Content = "ss",
	Time = 3
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

Tab:AddButton({
	Name = "Clique aqui!",
	Callback = function()
		ServerUi:MakeNotification({
			Name = "Sucesso!",
			Content = "Você clicou no botão.",
			Time = 3
		})
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
ServerUi:Init()
