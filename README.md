# classgen

This is a small script that creates .cpp and .hpp files with empty classes of Orthodox Canonical Form as described at 42 cursus. It can be invoked from any folder in which you want you new class to be created. The invocation goes as follows:

`/path/to/class.sh Classname`

where Classname is, quite obviously, the name of the class. Hint: creating an alias (ex. `alias=/path/to/class.sh`) in a bash config file will make this script even more comfortable to use.

Keep in mind that you'll have to manually set the path variable in the script to indicate path to this folder in your filesystem.

Feel free to change .cpp and .hpp files to your liking. The script basically just changes the class name.
