# macOS dotfiles — v2

Снимок настроек терминала Mac от 16 ноября 2026 года. Отличия от `old/`:

- Терминал **Ghostty** вместо kitty; палитра перенесена из kitty, фон `#000000`.
- **Starship** перекрашен в монохромные серые тона.
- **fastfetch** с анимированным логотипом `eye.gif` (протокол графики kitty, Ghostty 1.4+).
- `config.fish`: Homebrew подключается первым, добавлены `~/.local/bin` и `~/go/bin`, fastfetch и starship запускаются только если установлены.
- `rustup.fish` не падает, если `~/.cargo/env.fish` нет.
- `Brewfile` заново снят командой `brew bundle dump`.

## Состав

- `.config/ghostty/config` — Ghostty, шрифт JetBrainsMono Nerd Font Mono 16, запуск fish.
- `.config/fish/` — fish, алиасы, функции и дополнения.
- `.config/starship.toml` — приглашение fish.
- `.config/fastfetch/` — fastfetch и логотип.
- `.config/nvim/` — LazyVim (без изменений относительно `old/`).
- `Brewfile` — программы этого Mac.

## Команды fish

| Команда | Действие |
| --- | --- |
| `dc` | Показать кастомные команды с описаниями |
| `cfg` | Открыть `~/.config/fish/config.fish` в nvim |
| `acfg` | Открыть `~/.config/fish/conf.d/aliases.fish` в nvim |
| `sns` | Подключиться к серверу по локальной сети |
| `zsns` | Подключиться к серверу через ZeroTier |
| `c`, `cls` | Очистить терминал |
| `up` | Показать время работы Mac |

`sns` и `zsns` требуют записей `Host sns` и `Host zsns` в `~/.ssh/config`; ключи и параметры SSH в репозиторий не входят.

## Установка

Из папки `new v2`:

```sh
brew bundle install --file=Brewfile
```

Затем скопируйте нужные файлы из `.config/` в `~/.config/`, предварительно сохранив свои настройки. Плагины Neovim ставятся при первом запуске; закреплённые версии — `:Lazy restore`.

Не включены: `fish_variables`, резервные копии `*.bak*`, история, кэши, учётные данные. Подробно про Neovim (C/C++, C#/.NET, venv) — в [`../old/README.md`](../old/README.md).
