#!/bin/bash

STUDENT_NAME="Маратова Аружан"
LOG_FILE="logs/Maratova_Aruzhan_system_report.log"

{
    echo "=========================================="
    echo "Студент: $STUDENT_NAME"
    echo "Дата и время: $(date)"
    echo "Пользователь: $(whoami)"
    echo "ОС и версия ядра: $(uname -a)"
    echo "------------------------------------------"
    echo "Информация о памяти:"
    free -h
    echo "------------------------------------------"
    echo "Использование диска:"
    df -h /
    echo "=========================================="
} | tee -a "$LOG_FILE"
