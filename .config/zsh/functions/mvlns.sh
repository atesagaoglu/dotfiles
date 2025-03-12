mvlns() {
    # Ensure at least two arguments are provided
    if [[ "$#" -lt 2 ]]; then
        echo "Usage: mvlns <target_directory> <file_or_dir_1> [file_or_dir_2 ...]"
        return 1
    fi

    local target_dir="$1"
    shift # Remove the first argument (target directory) from the list

    # Ensure the target directory exists
    if [[ ! -d "$target_dir" ]]; then
        echo "Target directory '$target_dir' does not exist. Creating it now..."
        mkdir -p "$target_dir"
    fi

    # Iterate over the remaining input arguments
    for item in "$@"; do
        if [[ ! -e "$item" ]]; then
            echo "Error: '$item' does not exist. Skipping..."
            continue
        fi

        local base_name=$(basename "$item")
        local target_path="$target_dir/$base_name"

        # Move the file/directory to the target directory
        mv "$item" "$target_dir"
        echo "Moved '$item' to '$target_path'"

        # Create a symbolic link at the original location
        ln -s "$target_path" "$item"
        echo "Created symbolic link for '$item' -> '$target_path'"
    done
}
