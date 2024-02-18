# My Shell Script Tools

## forzip
### Overview
This script is designed for efficient file processing and archiving in a `_tmp` directory. 
It has been enhanced with parallel processing capabilities to improve execution speed.

### Requirements
- Zsh Shell
- `rename` command

### Installation
Download the script and make it executable:
```bash
chmod +x forzip
```
### Usage
Run the script with two arguments:
```bash
./forzip [mode]
```
[mode]: R for rename digit mode OR any character for normal mode.

## forzip_p
### Overview
This script is designed for efficient file processing and archiving in a `_tmp` directory. 
It has been enhanced with parallel processing capabilities to improve execution speed.

### Requirements
- Zsh Shell
- `rename` command
- `gxargs` command

### Installation
Download the script and make it executable:
```bash
chmod +x forzip_p
```
### Usage
Run the script with two arguments:
```bash
./forzip_p [mode]
```
[mode]: R for rename digit mode OR any character for normal mode.

## redigit
### Overview
This script, `redigit`, is designed for efficient file manipulation, primarily focusing on renaming and reorganizing files within a specific directory structure.

### Requirements
- Zsh shell
- Necessary tools and commands installed (as required by the script's operations).

### Installation
Place the `redigit` script in a desired directory. Make sure it is executable:
```bash
chmod +x redigit
```
### Usage
To use the script, navigate to the directory where the script is located and execute it with appropriate arguments:
```bash
./redigit
```

## list
### Overview
This script, `list`, is designed for creating a list with a specific directory.

### Requirements
- Zsh
- Specify the log directory, ~/work/_logsn as a default directory.

### Installation
Place the `list` script in a desired directory. Make sure it is executable:
```bash
chmod +x list
```
### Usage
To use the script, navigate to the directory where the script is located and execute it with appropriate arguments:
```bash
./list [fullpath direcotry]
```