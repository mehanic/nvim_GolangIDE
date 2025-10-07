#!/usr/bin/env bash

command -v black >/dev/null 2>&1 || {
  echo "install black..."
  pipx install black
}

command -v ruff >/dev/null 2>&1 || {
  echo "install ruff..."
  pipx install ruff
}


exec nvim "$@"



set -e

echo "Подготовка окружения для Neovim + Python/Go..."

echo "Проверка Python..."
if ! command -v python3 &>/dev/null; then
  echo "Python3 не найден. Установи его вручную."
  exit 1
fi

echo "Python"
pipx install black || true
pipx install ruff || true
pipx install isort || true

echo "install bibliotheck"
pipx install pytest || true

if ! command -v pyright &>/dev/null; then
  echo "Установка Pyright (LSP)..."
  npm install -g pyright
fi

echo "Проверка Go..."
if ! command -v go &>/dev/null; then
  echo " Go is noot find"
  exit 1
fi


set -euo pipefail

echo "Installing Go tools..."
go install golang.org/x/tools/gopls@latest
go install github.com/incu6us/goimports-reviser/v2@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install github.com/fatih/gomodifytags@latest
go install github.com/josharian/impl@latest
go install github.com/haya14busa/goplay/cmd/goplay@latest
go install github.com/ramya-rao-a/go-outline@latest
go install github.com/segmentio/golines@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install github.com/securego/gosec/v2/cmd/gosec@latest
go install github.com/cweill/gotests/...@latest
go install github.com/mitchellh/gox@latest
go install github.com/onsi/ginkgo/v2/ginkgo@latest
go install github.com/kisielk/errcheck@latest
go install honnef.co/go/tools/cmd/staticcheck@latest
go install github.com/mgechev/revive@latest
go install github.com/lighttiger2505/sqls@latest
go install github.com/sshelll/gott/v2@latest

echo "Go tools installed"

echo "Installing Python tools via pipx..."
pipx install black
pipx install isort
pipx install ruff
pipx install pyright
pipx inject pyright python-lsp-server[all]

echo "Python tools installed"

echo "Installing formatters via npm (if needed)..."
npm install -g prettier

echo "Installing test runners & helpers..."
pipx install pytest
pipx install tox
go install gotest.tools/gotestsum@latest

echo "Installing LSP servers for YAML, JSON, Docker..."
npm install -g yaml-language-server
npm install -g vscode-langservers-extracted  # includes JSON, ESLint, etc.
npm install -g dockerfile-language-server-nodejs
npm install -g bash-language-server

echo "All done! Ready to use in Neovim"

echo "Установка goimports и других тулов..."
go install golang.org/x/tools/cmd/goimports@latest
go install golang.org/x/tools/cmd/godoc@latest
go install sigs.k8s.io/kuttl/cmd/kuttl@latest
go install github.com/lighttiger2505/sqls@latest
go install github.com/gruntwork-io/terratest/modules/terraform
go install github.com/gruntwork-io/terratest/modules/terraform@latest

# Инструмент	Назначение
# asmfmt	Форматирование Go-ассемблера (.s)
# dlv	Отладчик для Go
# fillstruct	Автозаполнение полей в структурах
# ginkgo	BDD-фреймворк для тестирования Go
# godef	Переход к определению в Go-коде
# gofumpt	Форматер кода, более строгий, чем gofmt
# goimports	Автоматическое добавление/удаление импортов
# golangci-lint	Мощный агрегатор линтеров
# golint	Устаревший линтер (можно заменить на revive или staticcheck)
# golines	Разбивает длинные строки кода Go
# gomodifytags	Добавляет/удаляет теги (JSON, XML) у полей struct
# gopls	LSP-сервер для Go (обязателен для Neovim+LSP)
# gotags	Генерация tags-файла (ctags-like)
# gotests	Генерация unit-тестов по функциям
# gotestsum	Удобный вывод результатов go test
# govulncheck	Проверка на известные уязвимости в зависимостях
# errcheck	Поиск необработанных ошибок
# iferr	Генерация if err != nil блоков
# impl	Быстрое добавление реализаций интерфейсов
# mockgen	Генерация моков для интерфейсов
# motion	Неизвестный/кастомный (уточни источник)
# promu	Инструмент для сборки Prometheus-проектов
# revive	Быстрый, современный линтер (альтернатива golint)
# richgo	Красивый вывод go test
# staticcheck	Глубокий анализ кода, статическая проверка
# terraform-ls	LSP-сервер для Terraform
# kubectl-kuttl	Kubernetes testing tool
# imgcat	Отображение изображений в терминале (iTerm2 и Kitty поддерживают)
# gojsonstruct	Генерация struct по JSON
# go-enum	Генерация enum-типов из Go-кода
# diskusage	CLI-инструмент анализа дискового пространства



# ls ~/go/bin
# asmfmt     dlv       fillstruct  godef    gofumpt    gojsonstruct   golines  gomodifytags  gotags   gotestsum    iferr   impl           mockgen  promu   richgo       terraform-ls
# diskusage  errcheck  ginkgo      go-enum  goimports  golangci-lint  golint   gopls         gotests  govulncheck  imgcat  kubectl-kuttl  motion   revive  staticcheck



# gopls — Go LSP
if ! command -v gopls &>/dev/null; then
  echo "Установка gopls (Go LSP)..."
  go install golang.org/x/tools/gopls@latest
fi

if ! command -v npm &>/dev/null; then
  echo "npm не найден. Установи Node.js (https://nodejs.org)"
  exit 1
fi

echo "Install prettier and markdown-preview..."
npm install -g prettier
npm install -g markdownlint-cli

# markdown-preview.nvim dependency (if not already)
mkdir -p ~/.local/share/nvim/site/pack/packer/start/
cd ~/.local/share/nvim/site/pack/packer/start/
if [ ! -d "markdown-preview.nvim" ]; then
  echo "Установка markdown-preview.nvim..."
  git clone https://github.com/iamcco/markdown-preview.nvim
  cd markdown-preview.nvim
  npm install
  cd -
fi

echo "all dependency installed"