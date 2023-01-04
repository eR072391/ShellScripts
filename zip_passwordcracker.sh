#!/bin/bash

# Usage: ./zip_passwordcracker password_list target_zip

zip_file=$2

password_list=$1

while read -r password
do
        unzip -P "$password" "$zip_file" && echo "SUCCESS: password = $password" && exit 0
done < "$password_list"

echo "ERROR: failed to extract the zip file."
exit 1
