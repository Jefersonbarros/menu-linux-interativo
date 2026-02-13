```text
    __    _                      __  ___                 
   / /   (_)___  __  ___  __    /  |/  /__  ____  __  __ 
  / /   / / __ \/ / / / |/_/   / /|_/ / _ \/ __ \/ / / / 
 / /___/ / / / / /_/ />  <    / /  / /  __/ / / / /_/ /  
/_____/_/_/ /_/\__,_/_/|_|   /_/  /_/\___/_/ /_/\__,_/
```

# 🖥️ Menu Interativo Linux: Guia de Estudos e Automação

Este repositório centraliza meu aprendizado sobre o ecossistema **Ubuntu/Linux**.  
Através de um **script Bash interativo**, organizei comandos essenciais, dicas de administração de sistemas e automações em um único lugar.

## 🚀 Objetivo

Facilitar a configuração de novas máquinas e servir como uma base de consulta rápida para comandos que vão desde o básico até o diagnóstico avançado de redes e segurança.

## 🛠️ O que você encontra no Menu?

O script `guia.sh` está organizado nos seguintes tópicos:

1. **Introdução:** Conceitos e estrutura de arquivos.  
2. **Comandos Básicos:** Navegação e manipulação.  
3. **Pacotes:** Gerenciamento com APT e DPKG.  
4. **Usuários:** Permissões (`chmod`/`chown`) e grupos.  
5. **Monitoramento:** Processos, CPU e memória.  
6. **Redes:** Diagnóstico, portas e SSH.  
7. **Segurança:** Configuração de firewall (UFW).  
8. **E muito mais:** Backup, Cron, Shell Scripting e ferramentas Dev.

---

## 💻 Como Rodar

Se você acabou de formatar o PC ou clonou o repositório agora, siga estes passos no terminal:

### 1. Clonar o repositório

```bash
git clone https://github.com/Jefersonbarros/menu-linux-interativo.git
cd menu-linux-interativo
```

### 2. Dar permissão de execução ao arquivo

```bash
chmod +x guia.sh
```

### 3. Iniciar o menu

```bash
./guia.sh
```

## 🤝 Como Contribuir

Contribuições são o que fazem a comunidade open source um lugar incrível para aprender e criar. Qualquer contribuição que você fizer será **muito apreciada**.

1. **Faça um Fork do projeto**
2. **Crie uma Branch para sua Feature** (`git checkout -b feature/NovoComando`)
3. **Faça o Commit de suas alterações** (`git commit -m 'Adicionando novo comando de rede'`)
4. **Faça o Push para a Branch** (`git push origin feature/NovoComando`)
5. **Abra um Pull Request**

### 💡 Ideias de como ajudar:
* Adicionar novos tópicos ao menu principal.
* Corrigir erros de digitação ou bugs nos scripts.
* Sugerir melhorias na interface visual do menu.

