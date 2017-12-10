#1/bin/bash
#This is a second script so it's not as long
name=$USER
shortname=$(cat /etc/passwd | grep "$name" | awk -F : '{print $5}' | cut -d " " -f1)
echo -e "Hello me: $name (local script var from system var \$USER)\n"
echo "I also go by $shortname (script var)"
echo -e "\n\nThis line has posiitional params/args from the CLI (if entered):
 num 1: $1,
 second thing: $2,
 third: $3"
shift
echo "Shifting... (shift plucks 0th [=$1] input & 'shifts' all down by one)"
echo -e "\n\nThis line has the same posiitional params/args from the CLI (after shift):
 num 1: $1,
 second thing: $2,
 third: $3"
echo "\$# hold the number of pos args: $#
\$@ Holds all the current args as a list: $@
\$* Has the current args as a single value: $*"
\$? Holds the last error
