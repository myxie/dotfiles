# Search 
## find 
* Find file with name/suffix: `find . -name *.log`
	* use `iname` for case insensitive search
    * add -maxdepth N after path for 'nth' depth

## grep
* Find string in file/directory: `grep -r "string" "directory/file"`
* Find string in another command: `command -flag | grep 'string'`

# Exploration 
Directory size: `du -hs <dir>` : `-s` is summary flag otherwise this shows recursive information
	* Alternative `--max-depth=1` will show size of each directory in the `cwd`

# File management
- Compression: `tar -czvf archive_name.tar.gz path/to/dir`
- Extraction: `tar -xzvf archive_name. tar.gz (-C path/to/specific_dir)`

# SSH

## ssh

## scp

- scp through intermediate host
```
scp -o 'ProxyCommand ssh intermediate_user@intermediate_host_ip_or_hostname nc %h %p' final_remote_user@final_remote_host_ip_or_hostname:/path/to/remote/file /path/to/local/destination
``` 

# Python
 - Generating random strings: https://stackoverflow.com/questions/2257441/random-string-generation-with-upper-case-letters-and-digits
- Reverse string: mystr[::-1] (#codegolf)
