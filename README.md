
# 📘 Documentação Oficial — ServerUi UI Library

Esta documentação ensina como utilizar **todas as funcionalidades da biblioteca ServerUi** para criar GUIs completas e organizadas.

## Suporte a icones lucideblox:
[Clique aqui para ver os icones](https://raw.githubusercontent.com/frappedevs/lucideblox/refs/heads/master/src/modules/util/icons.json)

---

## 📦 Importando a biblioteca

```lua
local ServerUi = loadstring(game:HttpGet("https://raw.githubusercontent.com/ServerSad/UiLib/refs/heads/main/Lib/uilib.lua"))()
```

---

## 👥 Sistema de Cargos (Roles)

```lua
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
```

**Explicações:**
- `NomeDoCargo`: Identificador do cargo (ex: "Especial").
- `Color`: Cor hexadecimal aplicada no nome do usuário.
- `Users`: Lista de IDs ou nomes de usuários que pertencem ao cargo.
- `"everyone"`: Aplica o cargo a qualquer jogador que usar o script.

---

## 🪟 Criando a Janela Principal

```lua
local Window = ServerUi:MakeWindow({
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

**Explicações:**
- `SaveConfig`: Habilita salvamento automático.
- `ConfigFolder`: Pasta onde as configurações serão guardadas.
- `IntroEnabled`: Mostra uma introdução animada.
- `SearchBar`: Ativa campo de busca para abas.
- `Icon` / `IntroIcon`: Ícones da GUI.

---

## 🧩 Criando uma Aba (Tab)

```lua
local Tab = Window:MakeTab({
    Name = "Minha Aba",
    Icon = "rbxassetid://4483345998",
    RequiredRole = "AllRoles"
})
```

**Controle de Acesso com Cargos:**
- `RequiredRole`: Define quem pode ver a aba.
- Pode ser:
  - Uma string: `"Admin"`, `"User"`, etc.
  - Uma lista: `{"Admin", "Mod"}`
  - Ou `"AllRoles"` para permitir acesso a todos.

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

## ✅ Toggle (Interruptor)

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

## 🎚️ Slider (Deslizante)

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

## 📦 Dropdown (Lista suspensa)

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

## ⌨️ Bind (Tecla de Atalho)

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

- `Hold = true`: Executa somente enquanto a tecla estiver pressionada.

---

## 📝 Textbox (Campo de texto)

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

## 📄 Parágrafo (Texto longo)

```lua
Tab:AddParagraph("Título", "Texto explicativo.\nVocê pode usar quebras de linha.")
```

---

## 📃 Log (Mensagem em destaque)

```lua
Tab:AddLog("Sistema iniciado com sucesso.")
```

---

## 🔔 Notificação (Popup)

```lua
ServerUi:MakeNotification({
    Name = "Título",
    Content = "Mensagem de conteúdo",
    Time = 3
})
```

---

## 💾 Salvando Configurações

Se você definiu `SaveConfig = true`, basta rodar:

```lua
ServerUi:Init()
```

As configurações serão carregadas automaticamente nos próximos usos.

---

## 🧪 Usando Flags (Acesso a valores)

**Leitura:**

```lua
local valor = ServerUi.Flags["meuToggle"].Value
```

**Alterar manualmente:**

```lua
ServerUi.Flags["sliderVolume"]:Set(75)
```

---

## 💡 Dica Final

Organize seus elementos em abas, use permissões para esconder painéis sensíveis e explore as cores para uma UI intuitiva e bonita.
