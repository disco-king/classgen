# classgen

This is a small script that creates a .cpp and .hpp files with empty classes of Orthodox Canonical Form as described at 42 cursus. It can be invoked from any folder in which you want you new class to be created. The invocation goes as follows:

`/path/to/class Classname`

where Classname is, quite obviously, the name of the class. Hint: creating an alias (ex. `alias=/path/to/class`) is a bash config file will make it even more comfortable to use.

Keep in mind that you'll have to manually set the path variable to indicate path to this folder in tour filesystem.

Feel free to change .cpp and .hpp files to your liking. The script basically just changes the class name.
