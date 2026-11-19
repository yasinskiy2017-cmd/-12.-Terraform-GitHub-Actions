# Практичне завдання 12 — Розгортання Docker-сервісу на Render через Terraform (VS Code)

## Структура проєкту
- `.vscode/` — налаштування VS Code та рекомендація розширення HashiCorp Terraform.
- `main.tf` — провайдер `render-oss/render` та вебсервіс Docker на порт `3000`.
- `variables.tf` — опис усіх вхідних змінних.
- `outputs.tf` — вивід ID сервісу та публічної URL-адреси.
- `terraform.tfvars` — файл зі значеннями змінних (впишіть туди свої ключі Render і посилання на GitHub).
- `.gitignore` — захист секретів (`terraform.tfvars`, `*.tfstate`, `.terraform/`, `*.pem`).

## Запуск у VS Code
1. Розпакуйте архів і відкрийте папку `terraform-render` у Visual Studio Code (**File → Open Folder...**).
2. Відкрийте `terraform.tfvars` і впишіть свої `render_api_key`, `render_owner_id` та `repo_url`.
3. Відкрийте термінал у VS Code (`Ctrl + ~`) і виконайте:
   ```powershell
   terraform init
   terraform plan
   terraform apply
   ```
