#!/bin/bash

display_usage(){
    echo "usage:./backup.sh <source directory> <backup directory>"

}
if [ $# -eq 0 ]; then
    display_usage
fi

source_path=$1
backup_path=$2
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')

create_backup(){
    zip -r "${backup_path}/backup_${timestamp}.zip" "${source_path}"

    if [ $? -eq 0 ]; then 
        echo "Backup created successfully for ${timestamp}"
    fi
}
rotation(){
    backup=($(ls -t "${backup_path}/backup_"*.zip 2>/dev/null))
    if [ "${#backup[@]}" -gt 5 ]; then
        echo "performing rotation for 5 days"
        backup_to_remove=("${backup[@]:5}")

        for backup in "${backup_to_remove[@]}";
        do 
            rm -f ${backup}
        done
    fi
    }
    create_backup
    rotation