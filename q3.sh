# Set the directory name
dir_name="$1"

# Remove all permissions for groups and others for each file in the directory
for file in "$dir_name"/*; do
  chmod go-rwx "$file"
done

# Add all permissions for the owner of the files
chmod -R u+rwx "$dir_name"
