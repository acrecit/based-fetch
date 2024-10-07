#!/bin/bash

# Color definitions
RED='\e[1;31m'
GREEN='\e[1;32m'
YELLOW='\e[1;33m'
BLUE='\e[1;34m'
MAGENTA='\e[1;35m'
CYAN='\e[1;36m'
WHITE='\e[1;37m'
RESET='\e[0m'

# ASCII art
ascii_art() {
 local arts=(
        # Sonnenrad
        "
  ⠀⠀⠀⠀⠀⠀⢀⣠⣤⣶⠶⠶⢿⡿⠶⠶⣶⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀
  ⠀⠀⠀⢀⣴⡾⣿⠉⠀⠀⣀⣀⣼⡇⠀⢀⡀⠀⠉⣿⢷⣦⡀⠀⠀⠀⠀⠀
 ⠀⠀⢀⣴⠟⠁⢀⣹⣷⠀⠸⣿⠉⠉⠁⠀⣾⠟⠻⢾⠏⠀⠈⠻⣦⡀⠀⠀⠀
 ⠀⣰⡿⠁⠀⠰⣿⡋⠀⠀⠀⢻⡆⠀⠀⢰⡟⠀⠀⠀⢀⣴⣦⡀⠈⢿⣆⠀⠀
 ⣰⡟⠛⢷⡦⠀⠈⠻⣦⡀⠀⣸⣿⣤⣤⣿⣅⠀⢀⣴⠟⠁⠙⣷⡾⠛⢻⣆⠀
 ⣿⠀⢀⣿⡁⠀⠀⠀⠈⣿⣿⣿⣿⣷⣾⣿⣿⣿⣿⠁⠀⠀⠀⢀⣀⠀⠀⣿⡄
 ⡇⠀⠈⠙⠛⠻⠶⣦⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣴⠶⠟⠛⢻⡇⠀⢸⡇
 ⡷⠶⣶⡆⠀⠀⠀⠀⣿⣹⣿⣿⣿⣿⣿⣿⣿⣿⣏⣿⠀⠀⠀⠀⠸⠿⠶⢾⣿
 ⡇⠀⢸⣧⣤⣴⠶⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠻⠶⣦⣤⣄⡀⠀⢸⡇
 ⣿⠀⠀⠉⠁⠀⠀⠀⢀⣿⣿⣿⣿⡿⢿⣿⣿⣿⣿⡀⠀⠀⠀⢈⣿⠁⠀⣿⠃
 ⠹⣧⣤⡾⢿⣄⢀⣴⠟⠁⠀⢙⣿⠛⠛⣿⡏⠀⠈⠻⣦⡀⠀⠺⢷⣤⣼⠏⠀
 ⠀⠹⣷⡀⠈⠻⠟⠁⠀⠀⠀⣼⠇⠀⠀⠸⣧⠀⠀⠀⣨⣿⠆⠀⢀⣾⠏⠀⠀
 ⠀⠀⠈⠻⣦⡀⠀⣰⡿⣦⣴⡿⠀⢀⣀⣀⣿⡆⠀⢾⣏⠁⢀⣴⠟⠁⠀⠀⠀
 ⠀⠀⠀⠀⠈⠻⢷⣿⣀⠀⠈⠁⠀⢸⡟⠉⠉⠀⠀⣀⣿⡾⠟⠁⠀⠀⠀⠀⠀
 ⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠿⠶⠶⣾⣷⠶⠶⠿⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀        
        "

        # Swastika
        "
⠀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀
⣼⣿⣿⣿⢿⣿⣟⣿⣿⣻⣿⣟⡿⠿⢯⡿⠿⢿⣽⣿⣿⣻⣿⢿⣻⣿⣿⢿⣿⣧
⣿⣿⡿⣿⣿⣿⣻⣿⠿⠛⠉⠀⠀⢀⣴⣷⣀⠀⠀⠉⠛⠿⣿⣿⣿⣿⣻⣿⣿⣿
⣿⣿⣿⣿⣿⣽⠟⠁⠀⠀⠀⢀⣴⣿⣿⣿⠟⠁⠀⡀⠀⠀⠈⠻⣿⣽⣿⡿⣟⣿
⣿⣿⡿⣷⣿⠃⠀⠀⠀⢀⣴⣿⣿⣿⠟⠁⠀⠀⣠⣷⣄⠀⠀⠀⠘⣿⣿⣿⣿⣿
⣿⣿⣿⣿⠃⠀⡀⠀⠘⢿⣿⣿⣿⣅⠀⠀⣠⣾⣿⣿⣿⣷⣄⠀⠀⠘⣿⣷⣿⣿
⣿⣿⣽⡟⠀⢠⣧⡀⠀⠀⠙⢿⣿⣿⣷⣾⣿⣿⡿⠻⣿⣿⣿⣷⣄⠀⢹⣿⣿⣻
⣿⣿⣿⡇⠰⣿⣿⣿⣦⡀⠀⠀⣹⣿⣿⣿⣿⣏⠀⠀⠈⠻⣿⣿⣿⡗⢸⣿⣿⣿
⣿⣿⣾⣧⠀⠈⢻⣿⣿⣿⣦⣾⣿⣿⡿⢿⣿⣿⣷⣄⠀⠀⠈⠻⠃⠀⣸⣿⣿⣽
⣿⣿⡿⣿⡄⠀⠀⠈⢻⣿⣿⣿⡿⠋⠀⠀⢙⣿⣿⣿⣷⡄⠀⠀⠀⢠⣿⣿⣿⣿
⣿⣿⣿⣿⣿⡄⠀⠀⠀⠈⠿⠋⠀⠀⢀⣴⣿⣿⣿⠿⠃⠀⠀⠀⢠⣿⣿⣿⣟⣿
⣿⣿⣿⣾⣿⣿⣦⡀⠀⠀⠀⠀⠀⣴⣿⣿⣿⡟⠋⠀⠀⠀⢀⣴⣿⣿⣿⡿⣿⣿
⣿⣿⣟⣿⣷⣿⣿⣿⣷⣤⣀⠀⠀⠈⠻⡟⠋⠀⠀⣀⣤⣾⣿⣿⣿⣿⡿⣿⣿⣿
⢻⣿⣿⢿⣻⣿⣯⣿⣿⣿⣿⣿⣿⣶⣶⣶⣶⣾⣿⣿⣿⣿⣿⣿⣻⣷⣿⣿⣟⡏
⠀⠙⠿⢿⣿⡿⣿⣿⣷⣿⢿⣿⢿⣿⡿⣿⣿⡿⣿⣿⣟⣯⣷⣿⣿⣿⣻⠯⠋⠀
        "

        # Sukuna
        "

⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠘⢿⣿⣿⣿⡿⠉⣿⣿⡿⣻⠃⠀⠘⣿⣿⣿⣿⠋⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠙⢿⡿⠃⢀⣿⠿⠁⠁⠀⠀⠀⣿⣿⠟⠁⠀⢻⣿⣿⠟⠋⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠈⢿⣿⠛⠿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠘⠋⠀⠀⠀⠀⠀⢰⣟⡵⠀⠀⢀⣾⠏⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠈⢿⡆⠀⠀⠙⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣟⡿⠁⠀⡾⠉⠇⠀⠀⠛⢛⡛⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢹⣿⡇⠀⠀⠀⠻⠀⠀⢸⠀⠀⢱⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠉⠉⠀⢀⡼⠁⠀⠀⠀⠀⠀⠀⢀⣤⡿⠟⠋⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⣿⣿⠀⠀⠀⠀⡀⠀⠸⣆⠀⠀⠂⠁⠀⠀⠀⠀⢹⠀⠀⠀⠀⠀⢰⠏⠀⠀⢀⡀⠀⠀⠀⠐⠉⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⡇⠹⣿⠷⠀⠀⠀⢸⡄⠀⠀⠀⢠⡄⠀⠀⠀⠀⠀⣾⠀⠀⠀⠀⠀⠀⣀⣴⠞⠉⠠⠖⠀⠠⠀⠀⠀⠀⠀⠾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠙⢷⠀⠈⠀⠀⠐⢦⣀⢳⡄⠀⠀⠈⢳⡀⠀⠀⠀⢀⣿⢀⣴⢆⣠⣴⣾⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⢉⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠄⠀⠀⠀⠀⠀⠀⠈⠁⠀⠁⢤⣀⣈⣳⣄⣀⣠⣾⠿⢋⡿⠿⠿⣿⣃⣉⣀⣠⣤⣴⡶⠿⠋⣀⣀⠀⠀⠀⠀⠀⣀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣦⠈⠉⠉⠉⠁⠀⠀⠀⠀⠠⣤⣀⡀⠀⣀⣰⣴⠖⠛⠛⠋⣭⠁⢨⣇⠀⢠⡄⠀⠀⠀⠀⠀⠀⠀⠈⢻⢷⡼⠟⠉⠀⠀⠀⠀⠀⠫⠵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣧⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠷⣾⠟⠀⠀⠀⠀⠀⢠⡏⢀⣸⣿⠀⣦⢹⣆⠀⠀⠀⠀⠀⠀⠀⠈⠙⠷⣄⠀⠀⠀⠀⠀⠀⢦⣀⣀⣉⣻⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⡻⢯⠅⠀⠐⠦⢤⣤⣥⠤⠴⠒⣴⠏⠀⠀⠀⠀⠀⠀⣸⣧⣸⡿⠛⢰⣿⠾⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢨⣿⡇⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣤⠶⠀⠀⠀⠀⠀⣠⡾⠁⠀⠀⠀⠀⠀⠀⠀⣽⡟⠉⣿⠀⢸⡏⠀⠀⠙⠂⣀⣀⣤⣤⠶⠆⠀⠀⠀⢹⣧⡀⢤⣀⠀⠀⢀⣈⣻⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⡟⢿⠿⠿⠿⠛⠋⠁⠀⠀⠀⠀⢀⣴⣿⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠀⠀⡇⠀⢀⣴⠿⠋⣄⣤⠤⠤⠀⠀⠀⠀⠀⢻⣿⣷⣮⣷⣦⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣷⡀⠀⠀⠀⠀⣠⠀⠀⠀⢠⣶⣻⣿⠇⠀⠀⠀⠐⠚⠉⠉⠉⠛⠻⡶⣤⡀⠀⠀⠀⠀⣿⢉⣴⠟⣉⣥⣤⠶⠶⠶⢶⡀⠀⢹⣿⣿⣷⣦⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣄⣀⣀⣴⠋⠀⣀⣴⢿⡿⢫⡿⠀⠀⠀⠀⠀⢠⣶⣾⣛⣛⣛⣿⣿⣻⣆⠀⠀⠀⠻⠿⠱⡿⠋⣸⣷⣤⡀⠀⣠⣇⠀⠘⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⡋⢁⣤⣾⣿⠗⢈⣴⣿⣷⠀⠀⢀⡶⠚⠉⠉⢀⣤⣄⠙⢯⡈⠛⢙⣦⣀⡀⠀⠀⠀⢧⣤⣹⣿⣟⣀⣴⣯⡏⣶⡶⠀⣿⡿⠋⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣆⣸⣿⣿⣿⡀⠀⢈⡻⣄⠀⠀⠻⣾⢿⣀⡬⠁⣰⣿⣿⠿⠿⣷⣦⣄⣀⣀⡀⠀⠀⠀⣩⣷⣾⣿⡧⠀⣿⢠⡞⣳⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣴⢦⡙⣿⣷⣦⠾⠚⠋⠁⣀⣼⡿⠋⠉⠀⠀⠈⠉⠉⠉⠁⠀⠀⠀⠀⠰⠻⡿⢿⣷⢴⢡⣟⢳⡍⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢀⠈⠻⣇⣸⣷⡿⣟⠶⠆⠀⠀⠀⠈⠉⠉⠀⠀⡀⠀⠀⢠⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⢰⢈⣿⣿⠁⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠿⠛⣦⡈⣻⣿⡟⠛⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣷⡠⠾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡿⢸⣼⡿⠃⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠸⣿⣇⠉⠻⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⣀⣀⣀⣀⣰⣦⡀⠀⠀⣾⣧⡾⠋⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠹⢿⣧⣄⠙⣿⡄⠀⠀⠀⠀⠀⠀⠀⣀⣤⠴⠖⠚⠛⠋⣉⣀⣀⣀⣤⣤⡟⠁⠀⢰⣿⢿⣧⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠉⠉⢷⣼⣿⡆⠀⠀⢠⣶⠖⢫⣉⣀⣤⣶⣶⣿⣯⣿⡿⠟⣩⠼⠋⠀⠀⠀⣾⣿⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣴⣿⡸⣿⣄⠀⠈⠙⠳⠶⠤⠍⠍⠉⠁⠀⠤⠤⣖⡏⠀⠀⠀⠀⢠⣾⡿⣳⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢷⡹⣿⣷⣄⠀⠀⠀⠀⠀⠀⠒⠒⠒⠛⠛⠉⠀⢀⣀⣀⣴⣿⢋⣾⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡈⠻⢦⡙⢿⣷⣄⣀⠀⣠⣶⣤⣄⡀⠀⠀⣴⢿⣿⠿⠿⠟⣵⠟⣱⠏⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠙⠳⣭⣛⠿⠿⠛⠛⣷⣽⡆⠀⢀⣯⡼⠃⠀⣠⡾⠃⣴⠃⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠉⠛⠦⣤⣀⠈⠻⠛⠀⠀⠀⠀⣠⡾⠋⣀⣴⡇⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⣀⣄⠀⠀⠀⠀⠀⠉⠛⠓⠒⠒⠒⠒⠛⠁⣠⡞⢹⣿⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢀⡞⢻⣹⠀⠀⠀⠀⠀⠰⡄⠀⠀⠀⠀⠀⢠⡾⠉⠀⢸⣿⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠘⡿⣧⠀⠀⠀⠀⠀⢻⡄⠀⠀⠀⣴⠏⠀⠀⠀⣸⡏⠀⠀⢸⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢻⡇⠀⠀⢹⣽⡀⠀⠀⠀⠀⠈⢳⣦⣀⡾⠃⠀⠀⠀⠀⣿⠃⠀⠀⢸⠀⠈⠉⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣁⣀⣸⡇⠀⠀⠈⢿⣇⠀⠀⠀⠀⠀⠀⠸⢿⠁⠀⠀⠀⠀⠀⣿⠀⠀⠀⢸⡇⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠉⠉⠻⣿⠀⠀⠀⠘⣿⡆⢸⡛⠳⣤⡀⠀⠸⡇⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀⡄⠀⠀⠀⢻⣇⢸⡇⠀⠀⠙⠻⠾⠃⠀⠀⠀⠀⢰⡇⠀⠀⠀⢧⠀⠀⠀⠀⠀⠀⠘⢿⠿⠿⠿⠿⠇⠈⠛⠿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⢡⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⢀⡇⠀⠀⠀⠀⢻⡦⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠁⠀⠀⠀⢸⣆⠀⠀⠀⠀⠀⠀⠘⣤⣤⣤⣤⣤⣄⠀⠀⠀
⣿⣿⣿⣿⣿⣿⠿⠛⠉⠀⠀⠾⠟⠛⠉⠉⠀⠀⠀⠀⠀⠀⢠⣿⠀⠀⠀⠀⠀⠀⢹⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⢠⡇⠀⠀⠀⠀⢸⣿⣦⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⡀⠀⠀
⠿⠛⠋⠀⠀⠀⣀⣤⠀⠀⣠⣤⣤⣶⣶⣿⠇⠀⠀⠀⠀⣰⣿⣿⠀⠀⠀⠀⠀⠀⠀⢻⣿⠀⠀⠀⠀⠀⠀⠀⠀⣾⠁⠀⠀⠀⠀⢸⢿⠘⠷⣄⣀⣀⣀⣀⣨⣿⡿⠿⠟⠛⣛⣀⠀
⠀⠀⠀⠀⠀⠾⣯⣄⡀⢠⣿⣿⣿⣿⣿⡟⠀⠀⠀⣠⡾⣿⠏⣿⠀⠀⠀⠀⠀⠀⠀⠀⢿⣷⡀⠀⠀⠀⠀⠀⢠⠇⠀⣀⣀⣤⣤⠾⠞⠓⠊⠉⠉⠉⠉⠀⠀⠀⢷⣶⣿⣿⣿⣿⡆
⠀⠀⠀⠀⠀⠀⠀⠀⠉⢉⣙⣛⠻⠿⠿⠧⠤⠴⢿⣯⣿⠃⠀⣿⣀⣀⣀⣀⠀⠀⠀⠀⠀⢻⣷⣦⣀⠀⢀⣴⣿⡔⠋⠁⠀⠀⠀⠀⠀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿
  "

        # Iron Eagle
        "
 ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⣀⣀⣀⣀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣟⣿⣿⣻⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿
⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⡄⠀⠀⠀⠀⠀⠀⠀⠀⠸⠟⠛⠿⣿⣿⣿⣿⣿
⠀⠀⠙⠻⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣮⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣌⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿
⠀⠀⢰⣦⣤⣤⣴⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣶⡀⣶⣶⣶⣶⣶⣤⣤⣶⡆⢶⣶⣶⣶⣴⣶⣶⣭⡻⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿
⠀⠀⠀⠉⠛⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⢷⡹⢿⠿⢿⢿⣛⣫⣵⣶⣿⠸⣿⣿⣿⣿⣿⣿⣿⣮⡻⣿⣿⣷⣤⡀⠀⠀⠀⠀⠀⣠⣶⣿⣿⣿⣿⣿⣿⣿
⠀⠀⠀⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡸⣿⣿⣿⣿⣿⡿⣟⣥⣶⡆⠿⣿⣿⣿⣿⣿⣿⣿⣮⡻⣿⣿⣿⣦⣄⢀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠉⣙⣛⣛⣛⣛⣛⣛⣛⣛⣛⣛⣛⣛⣛⣛⣛⣛⣛⣛⣛⣇⢨⣭⣭⣷⣶⣿⣿⠿⣫⣴⣾⠸⢿⣿⣿⣿⣿⣿⣿⣿⣮⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⡻⠿⠿⣟⣯⣵⣿⣿⠿⣣⣾⣿⠘⡿⢿⣿⣿⣿⣿⣿⣿⣿⣝⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⣭⣭⣭⣭⣭⣭⣭⣭⣭⣭⣭⣭⣭⣭⣭⣭⣭⣭⣥⢿⣿⣿⣿⠿⣋⣥⣾⣿⢟⣵⣿⡿⢘⣟⢿⣿⣿⣿⣿⣿⣿⣷⡝⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡍⣭⣶⣿⣿⡿⢛⣵⣿⣿⣿⣵⣿⣿⢈⣭⡛⣿⣿⣿⣿⣿⣧⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣿⡛⢛⣥⣾⣿⣿⡿⣫⣾⣿⣿⣳⣿⣿⢁⣶⣶⠙⣿⡻⣿⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡜⢿⣿⢿⣫⣾⣿⣿⡿⣵⣿⣿⣏⣾⣿⣿⣼⣿⣿⢩⡄⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠀⠀⢿⣿⣿⡿⣿⣾⣿⣿⢏⣾⣿⣿⢻⣿⣿⡇⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⢾⣿⣿⡿⣣⣾⣿⣿⢫⣿⣿⣿⢱⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⢾⣿⣿⠿⣣⣿⣿⣿⢏⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠿⢿⡿⣫⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⡿⣿⡏⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣇⣿⣿⣿⣇⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⣿⠿⠿⠏⠙⠿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡺⠛⣽⡎⣿⡏⣿⣇⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣶⡼⣿⣷⣭⣥⣿⣿⣿⣿⢸⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣾⣿⣥⣿⣿⣿⣿⢿⣿⣿⣿⢸⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⢸⣿⣿⡿⣫⣿⢿⡿⣿⣷⠝⠛⠋⢀⣽⣿⣯
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⢟⣌⡛⢫⣾⣿⣿⡟⠛⠃⠀⠀⢀⣴⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣶⣾⣯⣾⣿⣿⡎⣻⣿⠋⠁⠀⠀⢀⣴⣿⣿⣿⣿⣿⡿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣴⣿⠉⠀⠀⢀⣴⣿⣿⣿⣿⣿⡿⠋⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣮⣿⣼⣿⢹⣿⢻⣿⠆⠀⠀⠀⠘⢿⣿⣿⣿⣿⣿⣄⠀⣠
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣽⢿⣿⡏⣿⣿⣿⠇⠀⣰⣦⡀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⡿⢰⣿⣯⠿⣤⣾⣿⣿⣿⣦⡀⠀⠀⠙⢿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣽⠛⣣⣬⡝⢫⣶⠈⠻⣿⣿⣿⣿⣿⣦⣠⣾⣿⣿⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣇⢿⣿⣇⢛⣱⡆⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢨⣭⣴⣿⣿⣿⢿⣶⡀⠀⠀⠈⠻⣿⣿⣿⣿⣿⠋⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣛⣛⢿⣿⣻⣯⣵⣿⠀⠀⠀⠀⠈⠻⣿⠟⠁⠀⠀⣠⣾
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣻⣷⣿⣷⡻⣿⣟⣸⠃⣀⠀⠀⠀⠀⠀⢀⣠⣾⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⣭⣽⠻⣿⡝⢛⣛⠹⡿⣠⡄⢀⠀⠀⠈⠻⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢽⡾⠿⠃⣿⣿⣷⣶⣿⣿⣻⣇⣶⡄⠀⣈⣻⣋
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠿⣷⣯⡟⣿⣿⣿⣿⠿⣿⣿⣷⢠⣿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢸⣿⡿⣿⡛⣿⣶⣮⣍⢸⢻⡿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠱⣿⠿⣿⣷⢸⣸⣇⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠋⠈⣉⣉⣉
        "

        # Hatsune Miku
        "  
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠤⠄⠀⠀⣈⡟⠖⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡶⠚⣳⡠⠐⠈⠁⠀⠀⠀⢀⡀⠈⡷⣜⣃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠾⡫⢂⣴⢠⠑⣀⠀⠀⠀⠙⢤⣿⣪⠟⠢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡾⠱⣼⠽⠆⣞⠪⣤⡀⢡⡀⠈⢛⢿⣀⠀⡈⢦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⢿⠇⡆⣸⠀⠙⡜⡄⠀⠙⢶⣻⣦⡄⢻⣷⡂⠈⢂⠱⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⣸⡇⣇⣿⢦⣄⠈⠢⠀⢾⣿⣿⣯⠺⣦⣻⣏⢂⠀⢔⢂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣟⡗⣿⣿⠘⠛⠀⠀⠀⠈⠙⢀⣿⣸⡿⠉⢙⣧⡱⡀⠉⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡿⣿⣻⣿⡆⠀⠀⡀⠀⠀⠀⢀⣿⠏⠀⠀⢀⡎⢮⠾⡢⡀⢦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣯⢧⡟⢻⡒⠄⣀⠀⠠⠐⣯⠑⠇⠀⠀⠀⠹⡰⢧⠐⣌⢄⢂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣯⣽⣦⢳⡈⢳⢠⢿⠧⠔⠒⢈⢲⠄⠘⠣⡀⠀⢡⠹⡧⡀⠈⡒⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢋⡷⡻⠗⠁⠒⣧⣿⠿⠴⠦⠋⠁⠀⠀⠀⠰⠀⠀⠣⠱⡀⢆⠈⠂⢢⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⢱⠁⣀⠂⡠⠯⠁⠀⠀⠀⠐⣀⡀⠀⠀⣀⣧⠀⠀⠑⢵⡀⠑⢄⠀⠑⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡎⡀⠈⠄⡑⠀⠀⠀⠈⠀⡇⠀⢩⣆⠀⠘⠉⢣⠀⠀⠀⠈⠒⠌⠳⡀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠸⢰⠀⠀⢀⠀⢀⠸⠀⠀⡾⠸⡀⠀⢀⣈⣇⠀⠀⠀⠀⢆⡀⠉⠶⢱⢀⠀⠈⠆⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠊⠀⠃⡐⠀⠀⡆⠐⡀⠀⡆⡰⠁⠀⢹⣾⣿⣝⣻⠁⠀⠀⠀⠀⠀⠁⠐⠀⠢⡉⠀⠰⢊⠀⠂⣀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣿⠃⡘⠀⠉⠀⢠⠁⠀⠀⠀⢜⠁⠀⠀⠀⠹⢷⣮⢽⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠫⠒⠤⣈⠛⡠⠌⠙⠩⠉⠒⠨⠔⡠⢀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡏⢠⠁⢀⠇⠀⡦⡀⠀⢀⣮⠂⠀⠀⠀⠀⠀⠹⣿⣾⡽⣦⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠐⠀⠉⡊⠒⢄⠀⠀⠁⠂⠀⠉⠢⡱⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⠆⣦⣤⢈⠀⡈⠁⠑⠂⣲⠃⠀⠀⠀⠀⠀⠀⠀⢹⣿⡿⣽⢗⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠢⠈⠢⠀⠀⠀⠈⠐⠵⢱⡀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣶⡟⠠⠈⠉⠸⣄⠀⠀⡀⠀⣏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⢿⣽⣎⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠔⣄⠀⠀⢀⠀⠁⠀⠀⠀⠰
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⠋⢀⠖⡆⠢⠐⡃⠀⠂⠄⠀⢹⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢻⣿⣾⣶⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⢡⡀⠀⠂⠀⠀⠀⠀⢸
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⡿⠋⠁⠀⠈⣀⡌⠐⠠⠀⠀⠰⠀⠀⠀⠈⠂⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣷⡷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠄⢸⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢶⣾⡿⠿⣿⣷⣄⡀⢀⣷⣿⣿⣄⠃⠀⠀⠀⢀⠀⣀⣤⣾⣿⣦⣀⠀⠀⣀⣀⣀⣠⠀⠀⠹⣿⣟⣯⣦⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢙⡈⠇⢠⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡇⠀⢁⣿⠃⣿⣿⣿⣿⣿⣿⣿⣤⣤⣤⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⠸⠀⠀⠆⢻⣿⣿⡿⠟⠀⠤⠤⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣵⠀⡆⠀⡜⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠠⡀⢠⣇⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⢿⣿⣿⡟⢀⠆⠀⠀⠀⡇⠀⠀⠀⠀⡀⠉⠙⠫⢍⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠀⠆⡐⠀⢠⡁⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢦⠀⠀⠀⠀⠀⠈⢂⠡⣑⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡷⣟⡿⣯⠇⡡⠋⠀⠀⠀⠀⠰⠀⡇⠀⠢⢈⠣⡉⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡆⢘⠰⠁⢀⢻⠂⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠔⠕⠉⠀⠀⠀⠀⠀⠀⠀⣹⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣾⣟⣾⠿⠛⢙⠁⠈⠁⠀⠀⠀⠀⠀⠈⠱⠃⠀⠀⠀⠑⠨⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡘⡀⢎⠀⢀⠎⡜⠀⠀
⠀⠀⠀⠀⢀⣀⡀⠠⢤⡠⠔⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠞⠉⢈⠛⡿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⠻⠙⠁⠀⡏⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣐⢯⠏⣠⢯⠎⡌⠀⠀
⡅⠐⢆⡀⣀⠤⠄⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠠⠞⠁⠀⢔⡠⣾⣏⣷⠀⠂⠈⠀⠉⠉⠉⠤⠠⡄⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠁⣬⠏⣰⡿⢃⠎⠀⠀⠀
⠘⣦⠈⠺⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠴⢋⠠⠀⡠⣔⢋⡴⠊⡹⢵⡀⠀⠀⠀⠀⠀⠀⢃⠀⠘⡄⠀⠀⠀⠀⠀⠀⠘⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠊⠀⣰⠋⣴⠟⡔⠁⠀⠀⠀⠀
⠀⠈⠡⢂⠸⠢⢀⡀⠀⠀⠀⠀⠀⠀⠠⠔⠞⠓⢈⢀⣔⠫⠜⠒⠁⡀⢊⣞⣶⡆⠀⠀⠀⠀⠈⠀⢠⠀⠀⢱⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡞⠃⢜⡵⠊⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠁⠂⠤⣀⣀⣀⠀⠁⠀⣀⣀⡼⠤⠛⠊⠁⠀⠀⢀⠠⠊⣔⣵⠟⠋⢡⠀⠀⠀⠀⢀⣀⡤⠀⠀⠈⢃⠀⠀⠀⠀⠀⠀⣸⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠁⣠⣾⡿⢛⡨⠖⠁⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠂⠀⠀⠀⠙⠓⠂⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢁⣠⠾⠛⠁⠀⠀⠈⣿⣿⣿⢿⣟⣿⣿⠀⠀⠀⠀⣦⣀⣠⣤⣶⢿⣾⡄⠠⢐⡖⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⣊⢠⣴⣟⣯⢵⡠⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⣀⣀⡀⠠⢄⡂⠀⢀⡠⠔⠊⠁⠀⠀⠀⠀⠀⠀⢹⣿⣯⢷⣫⢾⣿⠀⠀⠀⠀⠹⣿⡿⣱⢫⢾⣿⡍⠐⠒⠁⠤⠔⡂⠒⠒⢒⡒⠦⢦⠤⢀⡠⠛⠒⢋⠩⢊⢝⡤⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠁⠀⠀⠀⠨⢉⠡⠐⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣻⣞⣿⣿⠀⠀⠀⠀⠀⢻⣿⡵⣋⡞⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⣀⠤⠒⠐⠈⢀⢠⡐⢌⣶⠟⠙⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠠⣂⠔⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣷⣻⣾⣿⠀⠀⠀⠀⠀⠀⢻⣷⡹⢞⣿⣿⡤⠄⣀⢀⡀⡂⠧⣥⣄⠰⠦⠑⠚⢉⡠⠆⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⡀⠔⠃⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣯⣷⣿⡀⠀⠀⠀⠀⠀⠈⣷⢿⡹⣎⣿⣦⡀⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠘⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠔⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣯⣿⣿⡇⠀⠀⠀⠀⠀⠀⠸⣿⡽⣽⣞⣿⣿⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢺⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠻⣿⣷⣻⣾⣽⣿⣿⢦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣾⣿⣽⣿⣿⣶⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⡅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⠿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢺⣿⣿⣿⣿⣯⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⠿⢛⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠯⣙⠋⠡⣐⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠒⠒⠢⠔⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
        "
    )
    echo -e "${WHITE}"
    echo -e "${arts[$RANDOM % ${#arts[@]}]}"
    echo -e "${RESET}"
}
# System information functions
get_os() {
    echo -e "${GREEN}OS:${RESET} $(uname -s) $(uname -r)"
}
get_hostname() {
    echo -e "${GREEN}Host:${RESET} $(hostname)"
}
get_uptime() {
    echo -e "${GREEN}Uptime:${RESET} $(uptime -p)"
}
get_cpu() {
    echo -e "${GREEN}CPU:${RESET} $(lscpu | grep 'Model name' | cut -f 2 -d ":" | awk '{$1=$1}1')"
}
get_memory() {
    local total=$(free -h | awk '/^Mem:/ {print $2}')
    local used=$(free -h | awk '/^Mem:/ {print $3}')
    echo -e "${GREEN}Memory:${RESET} $used / $total"
}
get_disk() {
    echo -e "${GREEN}Disk:${RESET} $(df -h --output=used,size / | awk 'NR==2 {print $1 " / " $2}')"
}
get_packages() {
    if command -v pacman &> /dev/null; then
        echo -e "${GREEN}Packages:${RESET} $(pacman -Q | wc -l) (pacman)"
    elif command -v apt &> /dev/null; then
        echo -e "${GREEN}Packages:${RESET} $(dpkg --get-selections | wc -l) (apt)"
    elif command -v dnf &> /dev/null; then
        echo -e "${GREEN}Packages:${RESET} $(dnf list installed | wc -l) (dnf)"
    else
        echo -e "${GREEN}Packages:${RESET} Unknown"
    fi
}
get_shell() {
    echo -e "${GREEN}Shell:${RESET} $SHELL"
}
get_quote() {
    local quotes=(
        "The journey of a thousand miles begins with one step. - Lao Tzu"
        "In the middle of difficulty lies opportunity. - Albert Einstein"
        "Be the change you wish to see in the world. - Mahatma Gandhi"
        "The only way to do great work is to love what you do. - Steve Jobs"
        "Imagination is more important than knowledge. - Albert Einstein"
    )
    echo -e "${GREEN}Quote:${RESET} ${quotes[$RANDOM % ${#quotes[@]}]}"
}
# Main function
main() {
    ascii_art
    echo ""
    get_os
    get_hostname
    get_uptime
    get_cpu
    get_memory
    get_disk
    get_packages
    get_shell
    get_quote
}
# Run the script
main
