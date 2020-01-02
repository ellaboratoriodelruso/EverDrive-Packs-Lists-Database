#!/usr/bin/env awk
#
# This script transform the current EverDrive databases under "EverDrive Pack
# SMDBs" to a new database with a folder structure that can be copied directly
# to MiSTer.
#

BEGIN { 
    OFS="\t"
    FS="\t"
}

# EverDrive Pack SMDBs/MiSTer.txt
$2 ~ /^MiSTer\// { print }

# EverDrive Pack SMDBs/Atari 2600 SMDB.txt
$2 ~ /^Atari 2600\// { gsub("^Atari 2600", "MiSTer/ATARI2600/EverDrive", $2); print }

# EverDrive Pack SMDBs/Atari 5200 SMDB.txt
$2 ~ /^Atari 5200\// { gsub("^Atari 5200", "MiSTer/ATARI5200/EverDrive", $2); print }

# EverDrive Pack SMDBs/Colecovision SMDB.txt
$2 ~ /^Colecovision Atarimax\/COLECO\// { gsub("^Colecovision Atarimax/COLECO", "MiSTer/Coleco/EverDrive", $2); print }

# EverDrive Pack SMDBs/Darksoft Neo Geo SMDB.txt
$2 ~ /^Darksoft Neo Geo\/games\// { gsub("^Darksoft Neo Geo/games", "MiSTer/NeoGeo/EverDrive", $2); print }

# EverDrive Pack SMDBs/EverDrive GBA SMDB.txt
$2 ~ /^EverDrive GBA\// { gsub("^EverDrive GBA", "MiSTer/GBA/EverDrive", $2); print }

# EverDrive Pack SMDBs/EverDrive GB SMDB.txt
$2 ~ /^EverDrive GB\// { gsub("^EverDrive GB", "MiSTer/GAMEBOY/EverDrive", $2); print }

# EverDrive Pack SMDBs/EverDrive GG SMDB.txt
$2 ~ /^EverDrive GG\// { gsub("^EverDrive GG", "MiSTer/SMS/GameGear/EverDrive", $2); print }

# EverDrive Pack SMDBs/EverDrive N8 & PowerPak SMDB.txt
$2 ~ /^EverDrive N8\// { gsub("^EverDrive N8", "MiSTer/NES/EverDrive", $2); print }

# EverDrive Pack SMDBs/Master EverDrive SMDB.txt
$2 ~ /^Master EverDrive\// { gsub("^Master EverDrive", "MiSTer/SMS/MasterSystem/EverDrive", $2); print }

# EverDrive Pack SMDBs/Mega EverDrive SMDB.txt
$2 ~ /^Mega EverDrive\// { gsub("^Mega EverDrive", "MiSTer/Genesis/EverDrive", $2); print }

# EverDrive Pack SMDBs/Super EverDrive & SD2SNES SMDB.txt
$2 ~ /^SD2SNES\// { gsub("^SD2SNES", "MiSTer/SNES/EverDrive", $2); print }

# EverDrive Pack SMDBs/Turbo EverDrive & Super SD System 3 SMDB.txt
$2 ~ /^Turbo EverDrive\// { gsub("^Turbo EverDrive", "MiSTer/TGFX16/EverDrive", $2); print }

# EverDrive Pack SMDBs/Vectrex SMDB.txt
$2 ~ /^Vectrex\// { gsub("^Vectrex", "MiSTer/VECTREX/EverDrive", $2); print }

