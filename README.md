# Bash Backup Script

A simple bash script to automate file backups with timestamps and automatic rotation (deleting old backups).

---

## Features

- Creates compressed backup (.zip) files
- Adds timestamp to each backup file
- Stores backups in a selected folder
- Automatically removes old backups (keeps latest 5)
- Easy to run and configure

---

##  Project Files

- `backup.sh` → Main backup automation script
- `notes/` → Contains screenshots of the project

---

## 🚀 How to Use

### 1. Give execute permission

## bash
`chmod 700 backup.sh`

## Run the script
./backup.sh <source_directory> <backup_directory>
ex:-
./backup.sh /home/vboxuserdata /home/vboxuser/backups

