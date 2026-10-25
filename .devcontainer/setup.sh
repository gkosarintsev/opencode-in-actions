#!/usr/bin/env bash
set -e

echo "=== Установка OpenCode CLI в GitHub Codespaces ==="
curl -fsSL https://opencode.ai/install | bash

# Добавление в PATH
if ! grep -q '.opencode/bin' "$HOME/.bashrc" 2>/dev/null; then
  echo 'export PATH="$HOME/.opencode/bin:$PATH"' >> "$HOME/.bashrc"
fi

export PATH="$HOME/.opencode/bin:$PATH"

echo "=== Проверка установки OpenCode ==="
opencode --version || true

echo "=== Настройка завершена! ==="
echo "Для запуска OpenCode нажмите Ctrl+Esc или введите 'opencode' в терминале."
