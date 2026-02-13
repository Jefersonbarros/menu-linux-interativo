#!/bin/bash

# ==============================================================================
# SCRIPT: GUIA INTERATIVO DE TÓPICOS LINUX (UBUNTU)
# AUTOR: Jeferson Barros
# DESCRIÇÃO: Sistema de navegação para estudos e automação de comandos.
# ==============================================================================

# --- CORES ---
AZUL='\033[0;34m'
VERDE='\033[0;32m'
AMARELO='\033[1;33m'
VERMELHO='\033[0;31m'
NC='\033[0m' # Sem cor

# --- FUNÇÃO PARA EXIBIR A LOGO ---
exibir_logo() {
    echo -e "${AZUL}"
    cat << "EOF"
    __    _                      __  ___                 
   / /   (_)___  __  ___  __    /  |/  /__  ____  __  __ 
  / /   / / __ \/ / / / |/_/   / /|_/ / _ \/ __ \/ / / / 
 / /___/ / / / / /_/ />  <    / /  / /  __/ / / / /_/ /  
/_____/_/_/ /_/\__,_/_/|_|   /_/  /_/\___/_/ /_/\__,_/   
EOF
    echo -e "${NC}"
}

# ==============================================================================
# SEÇÃO DE FUNÇÕES (ONDE VOCÊ ADICIONA O CONTEÚDO DE CADA TÓPICO)
# ==============================================================================

# --- TÓPICO 1: INTRODUÇÃO ---
m1_introducao() {
    clear
    exibir_logo
    echo -e "${AZUL}=== 1. INTRODUÇÃO ===${NC}"
    # [EDITAR AQUI]: Adicione novos textos ou comandos abaixo
    echo "1.1 O que é Linux: Kernel open-source."
    echo "1.3 Estrutura de Arquivos: / (raiz), /etc (config), /home (usuários)."
    
    read -p "Pressione Enter para voltar..."
}

# --- TÓPICO 2: COMANDOS BÁSICOS ---
m2_basicos() {
    clear
    exibir_logo
    echo -e "${AZUL}=== 2. COMANDOS BÁSICOS ===${NC}"
    echo "1) Navegação (ls, cd, pwd)"
    echo "2) Manipulação (mkdir, cp, mv, rm)"
    echo "3) Visualização (cat, less, head)"
    echo "v) Voltar"
    read -p "Escolha uma opção: " sub
    case $sub in
        # [EDITAR AQUI]: Adicione a lógica para cada número abaixo
        1) ls -lh ;;
        2) echo "Exemplo: mkdir nome_da_pasta" ;;
        3) read -p "Arquivo para ler: " arq; cat "$arq" ;;
        v) return ;;
    esac
    read -p "Pressione Enter..."
}

# --- TÓPICO 3: PACOTES ---
m3_pacotes() {
    clear
    exibir_logo
    echo -e "${AZUL}=== 3. GERENCIAMENTO DE PACOTES ===${NC}"
    echo "1) Atualizar listas (Update)"
    echo "2) Instalar programa"
    echo "v) Voltar"
    read -p "Escolha: " sub
    case $sub in
        1) sudo apt update ;;
        2) read -p "Nome do pacote: " p; sudo apt install "$p" ;;
        v) return ;;
    esac
    read -p "Pressione Enter..."
}

# --- TÓPICO 4: USUÁRIOS ---
m4_usuarios() {
    clear
    exibir_logo
    echo -e "${AZUL}=== 4. USUÁRIOS E PERMISSÕES ===${NC}"
    echo "1) Ver meu ID"
    echo "2) Permissão de Execução (+x)"
    echo "v) Voltar"
    read -p "Escolha: " sub
    case $sub in
        # [EDITAR AQUI]: Coloque comandos reais de chmod/chown aqui
        1) id ;;
        2) read -p "Arquivo: " a; chmod +x "$a"; echo "Permissão dada!" ;;
        v) return ;;
    esac
    read -p "Pressione Enter..."
}

# --- TÓPICO 5: PROCESSOS ---
m5_processos() {
    clear
    exibir_logo
    echo -e "${AZUL}=== 5. PROCESSOS E MONITORAMENTO ===${NC}"
    # [EDITAR AQUI]: Adicione comandos como htop, free -h, etc.
    echo "1) Ver Memória RAM"
    echo "2) Ver Espaço em Disco"
    read -p "Escolha: " sub
    case $sub in
        1) free -h ;;
        2) df -h ;;
    esac
    read -p "Pressione Enter..."
}

# --- TÓPICO 6: REDES ---
m6_redes() {
    clear
    exibir_logo
    echo -e "${AZUL}=== 6. REDES ===${NC}"
    echo "1) Ver meu IP"
    echo "2) Testar Conexão (Ping)"
    read -p "Escolha: " sub
    case $sub in
        1) ip -c addr ;;
        2) read -p "Destino: " d; ping -c 4 "$d" ;;
    esac
    read -p "Pressione Enter..."
}

# --- TÓPICO 7: SERVIÇOS ---
m7_servicos() {
    clear
    exibir_logo
    echo -e "${AZUL}=== 7. SERVIÇOS E LOGS ===${NC}"
    # [EDITAR AQUI]: Adicione comandos de systemctl e journalctl
    echo "Dica: Use 'systemctl list-units' para ver serviços ativos."
    read -p "Pressione Enter..."
}

# --- TÓPICO 8: SEGURANÇA ---
m8_seguranca() {
    clear
    exibir_logo
    echo -e "${AZUL}=== 8. SEGURANÇA ===${NC}"
    # [EDITAR AQUI]: Comandos de Firewall (UFW)
    sudo ufw status
    read -p "Pressione Enter..."
}

# --- TÓPICO 9: BACKUP ---
m9_backup() {
    clear
    exibir_logo
    echo -e "${AZUL}=== 9. BACKUP E ARMAZENAMENTO ===${NC}"
    # [EDITAR AQUI]: Comandos de rsync ou tar
    echo "Dica: rsync -avz /origem /destino"
    read -p "Pressione Enter..."
}

# --- TÓPICO 10: AGENDAMENTO ---
m10_agendamento() {
    clear
    exibir_logo
    echo -e "${AZUL}=== 10. AGENDAMENTO ===${NC}"
    # [EDITAR AQUI]: Comandos de Crontab
    crontab -l
    read -p "Pressione Enter..."
}

# --- TÓPICO 11: SHELL SCRIPTING ---
m11_shell() {
    clear
    exibir_logo
    echo -e "${AZUL}=== 11. SHELL SCRIPTING ===${NC}"
    # [EDITAR AQUI]: Adicione dicas de sintaxe de Bash
    echo "Exemplo de IF: if [ \$a == \$b ]; then ... fi"
    read -p "Pressione Enter..."
}

# --- TÓPICO 12: AMBIENTE GRÁFICO ---
m12_grafico() {
    clear
    exibir_logo
    echo -e "${AZUL}=== 12. AMBIENTE GRÁFICO ===${NC}"
    # [EDITAR AQUI]: Comandos para GNOME/Interface
    echo "Abrindo o Nautilus..."
    nautilus . &
    read -p "Pressione Enter..."
}

# --- TÓPICO 13: DEV TOOLS ---
m13_dev() {
    clear
    exibir_logo
    echo -e "${AZUL}=== 13. FERRAMENTAS DE DEV ===${NC}"
    # [EDITAR AQUI]: Comandos de Git, GCC, Docker, etc.
    git --version
    read -p "Pressione Enter..."
}

# --- TÓPICO 14: DEBUG ---
m14_debug() {
    clear
    exibir_logo
    echo -e "${AZUL}=== 14. DEBUG AVANÇADO ===${NC}"
    # [EDITAR AQUI]: Comandos como dmesg, strace
    dmesg | tail -n 10
    read -p "Pressione Enter..."
}

# ==============================================================================
# MENU PRINCIPAL (A ESTRUTURA QUE CHAMA AS FUNÇÕES ACIMA)
# ==============================================================================

while true; do
    clear
    exibir_logo
    echo -e "${AMARELO}==========================================${NC}"
    echo -e "${AMARELO}      SISTEMA DE TÓPICOS LINUX COMPLETO   ${NC}"
    echo -e "${AMARELO}==========================================${NC}"
    echo "1) Introdução              8) Segurança"
    echo "2) Comandos Básicos        9) Backup"
    echo "3) Pacotes (APT)           10) Agendamento"
    echo "4) Usuários/Permissões     11) Shell Scripting"
    echo "5) Processos/Monitor       12) Ambiente Gráfico"
    echo "6) Redes                   13) Dev Tools"
    echo "7) Serviços e Logs         14) Debug Avançado"
    echo "s) Sair"
    echo -e "${AMARELO}==========================================${NC}"
    read -p "Selecione o Tópico (1-14): " principal

    # [EDITAR AQUI]: Se criar um tópico 15, adicione a chamada dele aqui embaixo
    case $principal in
        1) m1_introducao ;;
        2) m2_basicos ;;
        3) m3_pacotes ;;
        4) m4_usuarios ;;
        5) m5_processos ;;
        6) m6_redes ;;
        7) m7_servicos ;;
        8) m8_seguranca ;;
        9) m9_backup ;;
        10) m10_agendamento ;;
        11) m11_shell ;;
        12) m12_grafico ;;
        13) m13_dev ;;
        14) m14_debug ;;
        s|S) echo -e "${VERDE}Saindo... Até logo!${NC}"; exit 0 ;;
        *) echo -e "${VERMELHO}Opção inválida!${NC}"; sleep 1 ;;
    esac
done
