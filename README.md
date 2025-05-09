# nvim_GolangIDE



This Neovim configuration is specifically crafted for efficient development in Golang, with a focus on utilizing the latest plugins and modern tooling.

The setup includes:

Code autocompletion, syntax highlighting, integrated snippets, and testing frameworks.

Intelligent hints and automation for Golang programming, along with full support for Golang templates.

Integration of Neovim extensions and Visual Studio Code enhancements for an improved development experience.

Built-in support for interaction with Kubernetes and Helm, enabling seamless infrastructure and DevOps workflows.

Custom configurations tailored for editing various DevOps-related files, such as Jenkinsfiles, GitLab CI/CD pipelines, and Ansible playbooks and roles.

Key features:


Optimized for use with the i3 Tiling Window Manager to maximize productivity and streamline the development environment.

The idea of ​​creating it emerged based on making your own custom version that would be extremely easy, adaptable to changes at will regarding situations and technologies, and provide something new in open source.

# -----


Ця версія конфігурації Neovim спеціально створена для ефективної роботи з мовою Golang, з акцентом на використання найновіших плагінів та сучасних інструментів.

Конфігурація включає:

Автодоповнення коду, підсвічування синтаксису, інтеграцію сніпетів та системи тестування.

Підказки та автоматизацію для програмування на Golang, а також роботу з Golang templates.

Інтеграцію доповнень Neovim і розширень із Visual Studio Code для ще кращого середовища розробки.

Підтримку взаємодії з Kubernetes та Helm, що дозволяє ефективно працювати з інфраструктурними проєктами.

Спеціальні налаштування для роботи з файлами DevOps-спрямування, такими як Jenkinsfiles,  GitLab CI/CD, а також плейбуки та ролі Ansible.

Особливості:


Конфігурація оптимізована для роботи в середовищі з використанням i3 Tiling Window Manager для максимальної продуктивності та зручності.

ідея створення   появилася на основі  зробити свій кастомний варіант який був би надзвичайно легким , піддавався змінам по бажанню відносно ситуацій та технологій , та надати щось нове в опенсорс. 

# ---



plugins.vim is main file for provision neovim components

```
~/.config/nvim
 $ ls
autoload  coc-settings.json  init.vim  lua  plugin_config  snippets  vim-plug

~/.config/nvim/snippets)
 └> $ tree
.
├── go.json
├── golang2_snippets
│   ├── go.lua
│   └── init.lua
└── golang_snippets
    ├── go.lua
    └── init.lua

```


Here’s what each folder or file is for:

| Name                  | Description |
|-----------------------|-------------|
| `autoload/`           | Traditional Vim folder for autoload functions or plugins (used by some plugin managers like vim-plug). |
| `coc-settings.json`   | Settings for the `coc.nvim` plugin — a VSCode-style language server/client for Neovim. |
| `init.vim`            | Your main Neovim config file (written in VimScript). |
| `lua/`                | Where you can store Lua modules or configuration if you use Lua-based plugins or config. |
| `plugin_config/`      | Often used to keep plugin configurations separated by file — e.g., one file per plugin. |
| `snippets/`           | Folder for code snippets, used by plugins like `UltiSnips`, `LuaSnip`, `coc-snippets`, etc. |
| `vim-plug/`           | Likely contains `plugins.vim`, where your `Plug` declarations live (plugin manager config). |

---

## 🔧 Example of how it all connects

If you're using a hybrid config (VimScript + Lua), you might have something like this:

### `init.vim`:
```vim
source $HOME/.config/nvim/vim-plug/plugins.vim
lua require('myconfig')  " loads lua/myconfig.lua
```

### `lua/myconfig.lua`:
```lua
require("plugin_config.gitsigns")
require("plugin_config.gh")
```

---

![working with autocomplite code](screenshot_1.png)

![Working with autocomplite code](screenshot_2.png)

![show tree of project](screenshot_3.png)

![golang-lint and other tools show problems](screenshot_4.png)

![get snippets slice code golang](screenshot_5.png)

![snippets wfrom directory golang2_snippets and golang_snippets](screenshot_6.png)

![working with Telescope in nvim](screenshot_7.png)

![working with modules](screenshot_8.png)

![automatically show with lines suitable borders of code](screenshot_9.png)

![working with modules](screenshot_10.png)

![dinamical lines and autoshow](screenshot_11.png)

![dinamical lines and autoshow ](screenshot_12.png)

![show config plugin in nvim ](screenshot_13.png)

![open K9s  ](screenshot_14.png)

![search file in different ways  ](screenshot_15.png)

![git files  ](screenshot_16.png)

![git branch  ](screenshot_17.png)

![1 step to see log in pods  ](screenshot_18.png)

![2 step to see log in pods  ](screenshot_19.png)

![3 step to see log in pods  ](screenshot_20.png)

![4 step to see log in pods  ](screenshot_21.png)

![to see the commits change   ](screenshot_22.png)

![buffer   ](screenshot_23.png)

![configuration for golang autocomplite and tests  ](screenshot_24.png)

![example of work with kubernetes controllers in nvim  ](screenshot_25.png)

![makefile  ](screenshot_26.png)

![helm charts and helpers   ](screenshot_27.png)


![helm charts in buffers   ](screenshot_28.png)

![helm charts in two terminals with configuration i3    ](screenshot_29.png)

![golang templates   ](screenshot_30.png)

![combine I3 with coding, K9s and search file as example ](screenshot_31.png)

![combine I3 with git commits and K9s  as example ](screenshot_32.png)

![buffers for working with golang function ](screenshot_33.png)

![buffers for working with golang main function ](screenshot_34.png)

![buffers for search file ](screenshot_35.png)

![describtion file and possibility to open  ](screenshot_36.png)




Вот как пошагово найти `LEETCODE_SESSION` и `csrftoken` из cookies на сайте LeetCode:

---

## 🔍 Шаги для получения `LEETCODE_SESSION` и `csrftoken`:

### ✅ Вариант 1: Через инструменты разработчика браузера (ручной способ)

1. **Открой [leetcode.com](https://leetcode.com)** и войди в свой аккаунт.
2. Нажми `F12` или `Ctrl+Shift+I`, чтобы открыть инструменты разработчика.
3. Перейди во вкладку **Application** (в Chrome) или **Хранилище > Cookies** (в Firefox).
4. Слева найди раздел **Cookies → [https://leetcode.com](https://leetcode.com)**
5. В таблице найди строки:

   * `LEETCODE_SESSION`
   * `csrftoken`
6. Скопируй **значения** (Value) из этих строк.

---

### ✅ Вариант 2: Через расширение браузера (проще)

#### Если используешь **Chrome**:

1. Установи [EditThisCookie](https://chrome.google.com/webstore/detail/editthiscookie/fngmhnnpilhplaeedifhccceomclgfbg)
2. Перейди на [leetcode.com](https://leetcode.com) и нажми на иконку EditThisCookie.
3. Найди:

   * `LEETCODE_SESSION`
   * `csrftoken`
4. Скопируй их значения.

---

После этого вставь значения в файл `~/.leetcode/leetcode.config.json` вот так:

```json
{
  "cookies": {
    "LEETCODE_SESSION": "скопированное_значение",
    "csrftoken": "скопированное_значение"
  },
  "leetcode_base_url": "https://leetcode.com",
  "user": {
    "username": "mehanic2000"
  }
}
```

Чтобы интегрировать Exercism с Neovim и работать над задачами прямо в редакторе, можно использовать плагин [exercism.nvim](https://github.com/2KAbhishek/exercism.nvim). Этот плагин предоставляет команды и привязки клавиш для управления упражнениями Exercism непосредственно из Neovim.([GitHub][1])

---

### ⚙️ Требования

Перед установкой плагина убедитесь, что выполнены следующие условия:

1. **Установлен и настроен Exercism CLI**:

   * Скачайте и установите Exercism CLI с официального сайта.
   * Сконфигурируйте его с помощью команды:

     ```bash
     exercism configure --token=<your-api-token>
     ```

2. **Установлены зависимости Neovim**:

   * Плагины:

     * [`utils.nvim`](https://github.com/2KAbhishek/utils.nvim) — для вспомогательных функций.
     * [`termim.nvim`](https://github.com/2KAbhishek/termim.nvim) — для поддержки терминала (опционально).

---

### 📦 Установка плагина

Если вы используете менеджер плагинов [lazy.nvim](https://github.com/folke/lazy.nvim), добавьте следующий блок в вашу конфигурацию:([Reddit][2])

```lua
{
  '2kabhishek/exercism.nvim',
  cmd = {
    'ExercismLanguages',
    'ExercismList',
    'ExercismSubmit',
    'ExercismTest',
  },
  keys = {
    '<leader>exa',
    '<leader>exl',
    '<leader>exs',
    '<leader>ext',
  },
  dependencies = {
    '2kabhishek/utils.nvim',
    '2kabhishek/termim.nvim',
  },
  opts = {
    exercism_workspace = '~/exercism',
    default_language = 'go',
    add_default_keybindings = true,
    icons = {
      concept = '',
      practice = '',
    },
  },
}
```



Убедитесь, что вы также установили и настроили зависимости `utils.nvim` и `termim.nvim`.([GitHub][1])

---

### 🛠️ Использование

После установки плагина доступны следующие команды:

* `:ExercismLanguages` — список доступных языков.
* `:ExercismList [язык]` — список упражнений для указанного языка.
* `:ExercismTest` — запуск тестов для текущего упражнения.
* `:ExercismSubmit` — отправка решения упражнения.([GitHub][1])

Если вы включили `add_default_keybindings`, то также доступны следующие сочетания клавиш:([GitHub][1])

* `<leader>exa` — список языков.
* `<leader>exl` — список упражнений.
* `<leader>ext` — запуск тестов.
* `<leader>exs` — отправка решения.([GitHub][1])

---

### 💡 Дополнительные советы

* Для улучшенного опыта рекомендуется использовать [tmux-tea](https://github.com/2kabhishek/tmux-tea), который позволяет запускать каждое упражнение в отдельной сессии tmux.
* Убедитесь, что ваш рабочий каталог Exercism (`exercism_workspace`) соответствует настройкам CLI.([GitHub][1])

---

Если вам нужна помощь с установкой зависимостей или настройкой плагина, пожалуйста, сообщите, и я предоставлю подробные инструкции.

[1]: https://github.com/2KAbhishek/exercism.nvim?utm_source=chatgpt.com "2KAbhishek/exercism.nvim: Exercism Meets Neovim - GitHub"
[2]: https://www.reddit.com/r/dotnet/comments/1czewmh/neovim_and_the_dotnetcli_workflow_integration/?utm_source=chatgpt.com "NeoVim and the dotnet-cli workflow integration - Reddit"


Да, команда:

```bash
exercism configure --token=ВАШ_ТОКЕН
```

используется для **настройки вашего CLI-клиента `exercism`**, чтобы он мог аутентифицироваться на сайте [exercism.org](https://exercism.org).

---

### 🔑 Где взять токен?

1. Перейдите на [https://exercism.org/settings/api\_cli](https://exercism.org/settings/api_cli)
2. Скопируйте **"API Key"**
3. Выполните в терминале:

```bash
exercism configure --token=ВАШ_СКОПИРОВАННЫЙ_ТОКЕН
```

---

### ⚙️ Что произойдёт?

Это создаст или обновит файл конфигурации `~/.config/exercism/user.json`, содержащий:

```json
{
  "token": "ваш-токен",
  "workspace": "/home/you/exercism",
  "api": "https://api.exercism.org/v2"
}
```

---

### ✅ После этого вы можете:

* Загружать задачи: `exercism download --exercise=hello-world --track=go`
* Решать их прямо в `nvim`
* Использовать `:ExercismTest`, `:ExercismSubmit` и т.д.

Хочешь, чтобы я проверил корректность локальной установки?


Отлично! 🎉 Вы успешно загрузили упражнение `hello-world` из трека **Go** в ваш каталог Exercism.

Теперь вы можете:

### ✅ Открыть задание в Neovim:

```bash
nvim ~/exercism/go/hello-world
```

Или, если вы используете NERDTree:

```vim
:NERDTree ~/exercism/go/hello-world
```

### 🧠 Что дальше:

Внутри директории `hello-world` обычно будет:

* Файл `hello_world.go` — ваш код.
* Файл `hello_world_test.go` — тесты, которые вы должны пройти.
* `README.md` — описание задания.

### 🚀 Полезные команды (если `exercism.nvim` настроен):

* `:ExercismTest` — запустить тесты для текущего упражнения.
* `:ExercismSubmit` — отправить решение после завершения.

Хотите, я покажу пример, как решить `hello-world` на Go?


┌────(mehanic (84.146.19.253) [No SSH] [No VPN] [🔹 no_active_playbook] [ansible_core:2.18.5])────(~)
 └> $ exercism configure

You have configured the Exercism command-line client:

Config dir:                       /home/mehanic/.config/exercism
Token:         (-t, --token)      f515b07e-557f-429a-ad89-4c31b5f5e254
Workspace:     (-w, --workspace)  /home/mehanic/exercism
API Base URL:  (-a, --api)        https://api.exercism.org/v1


┌────(mehanic (84.146.19.253) [No SSH] [No VPN] [🔹 no_active_playbook] [ansible_core:2.18.5])────(~)
 └> $ exercism download --track=go --exercise=hello-world

Downloaded to
/home/mehanic/exercism/go/hello-world

┌────(mehanic (84.146.19.253) [No SSH] [No VPN] [🔹 no_active_playbook] [ansible_core:2.18.5])────(~)
 └> $ cd /home/mehanic/exercism/

┌────(mehanic (84.146.19.253) [No SSH] [No VPN] [🔹 no_active_playbook] [ansible_core:2.18.5])────(~/exercism)
 └> $ ls
go

┌────(mehanic (84.146.19.253) [No SSH] [No VPN] [🔹 no_active_playbook] [ansible_core:2.18.5])────(~/exercism)
 └> $ cd go/

┌────(mehanic (84.146.19.253) [No SSH] [No VPN] [🔹 no_active_playbook] [ansible_core:2.18.5])────(~/exercism/go)
 └> $ ls
hello-world


Когда вы выполните `:ExercismSubmit`, произойдёт следующее:

---

### ✅ Что происходит после `:ExercismSubmit`:

1. **Ваш файл с решением отправляется на сервер Exercism.**
2. Вы увидите сообщение вроде:

   ```
   Your solution was submitted successfully!
   View it at: https://exercism.org/tracks/go/exercises/hello-world/solutions/your-username
   ```
3. Exercism может дать вам:

   * **отзыв от ментора** (если трек менторируемый),
   * **автоматический фидбек** (если нет менторов),
   * **возможность двигаться дальше к следующему упражнению.**

---

### 🧭 Как перейти к следующему упражнению:

Вариант 1 — **через сайт**
Зайдите на [exercism.org](https://exercism.org), откройте трек Go — и продолжите следующий уровень (кнопка "Next Exercise").

Вариант 2 — **в Neovim с `exercism.nvim`**
Выполните:

```vim
:ExercismList
```

Это покажет список доступных упражнений. Выберите следующее — и скачайте его через `:ExercismDownload`, либо просто нажмите на него, если у вас настроено действие выбора.

---

Хотите, чтобы следующий шаг (загрузка и открытие нового упражнения) происходил автоматически после `:ExercismSubmit`?
