## The 'find' command

# Find all bash scripts within and below the current directory
find . -name "*.sh"

# Find all bash scripts within the current directory and one level below
find . -maxdepth 1 -name "*.sh"

# Find all text files if data_manipulation is in the path
find . -path "*data_manipulation*" -name "*.txt"

# Find all executable (-perm /+x) non-invisible (! -name ".*") files (-type f)
find . -perm /+x ! -name ".*" -type f

# Find all executable non-invisible files and ignore .git directories 
# \ is the escape character so we are ignoring anything containing the pattern /. - i.e. hidden directories?
find . -perm /+x -not -path "*/\.*" -type f