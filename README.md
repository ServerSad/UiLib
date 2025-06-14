# 📘 Documentação Completa da OrionLib Modificada

Este documento ensina como utilizar **todas as funcionalidades da biblioteca OrionLib** em scripts de interface gráfica no Roblox.

---

## 📦 Colocando a biblioteca

Primeiro, carregue a biblioteca com:

```lua
local OrionLib = loadstring(game:HttpGet("https://exemplo.com/minha-lib.lua"))()
```

Substitua o link pelo URL real do seu GitHub, Pastebin, etc.

---

## 🪟 Criando a Janela Principal

```lua
local Window = OrionLib:MakeWindow({
	Name = "Título da GUI",
	SaveConfig = true,
	ConfigFolder = "NomeDaPasta",
	IntroText = "Texto de boas-vindas",
	IntroEnabled = true,
	ShowIcon = true,
	Icon = "rbxassetid://IMAGEM",
	IntroIcon = "rbxassetid://IMAGEM",
	SearchBar = {
		Default = "🔍 Procurar...",
		ClearTextOnFocus = true
	}
})
```

### Explicações:
- `SaveConfig`: Salva as configurações do usuário.
- `ConfigFolder`: Nome da pasta onde a config será salva.
- `SearchBar`: Habilita barra de busca para abas.
- `ShowIcon`, `Icon`, `IntroIcon`: Exibem ícones na GUI.

---

## 🧩 Criando uma Aba (Tab)

```lua
local Tab = Window:MakeTab({
	Name = "Minha Aba",
	Icon = "rbxassetid://4483345998"
})
```

---

## 🔘 Botão

```lua
Tab:AddButton({
	Name = "Clique aqui",
	Callback = function()
		print("Botão clicado!")
	end
})
```

---

## ✅ Toggle

```lua
Tab:AddToggle({
	Name = "Ativar algo",
	Default = false,
	Flag = "meuToggle",
	Save = true,
	Callback = function(state)
		print("Toggle:", state)
	end
})
```

---

## 🎚️ Slider

```lua
Tab:AddSlider({
	Name = "Volume",
	Min = 0,
	Max = 100,
	Default = 50,
	Increment = 5,
	ValueName = "%",
	Flag = "sliderVolume",
	Save = true,
	Callback = function(value)
		print("Volume:", value)
	end
})
```

---

## 📦 Dropdown

```lua
Tab:AddDropdown({
	Name = "Escolha uma cor",
	Options = {"Vermelho", "Verde", "Azul"},
	Default = "Vermelho",
	Flag = "corSelecionada",
	Save = true,
	Callback = function(option)
		print("Cor escolhida:", option)
	end
})
```

---

## ⌨️ Bind (tecla de atalho)

```lua
Tab:AddBind({
	Name = "Tecla rápida",
	Default = Enum.KeyCode.F,
	Hold = false,
	Flag = "teclaRapida",
	Save = true,
	Callback = function()
		print("Tecla pressionada!")
	end
})
```

- `Hold = true`: ativa somente enquanto estiver pressionando a tecla.

---

## 📝 Textbox

```lua
Tab:AddTextbox({
	Name = "Digite algo",
	Default = "",
	TextDisappear = true,
	Callback = function(text)
		print("Você digitou:", text)
	end
})
```

---

## 🏷️ Label (Texto fixo)

```lua
Tab:AddLabel("Este é um texto fixo na interface")
```

---

## 📄 Parágrafo

```lua
Tab:AddParagraph("Título", "Texto longo explicativo.\nVocê pode usar quebras de linha.")
```

---

## 📃 Log (mensagem destacada)

```lua
Tab:AddLog("Sistema iniciado com sucesso.")
```

---

## 🔔 Notificação (popup)

```lua
OrionLib:MakeNotification({
	Name = "Título",
	Content = "Mensagem de conteúdo",
	Time = 3
})
```

---

## 💾 Salvando configurações

Se você ativou `SaveConfig = true`, tudo será salvo automaticamente com:

```lua
OrionLib:Init()
```

---

## 🧪 Flags (Para acessar valores)

Você pode acessar valores com:

```lua
local valor = OrionLib.Flags["meuToggle"].Value
```

E pode forçar mudanças com:

```lua
OrionLib.Flags["sliderVolume"]:Set(75)
```

---

## 💡 Dica Final

Organize elementos em várias abas para GUIs limpas e intuitivas!

---
