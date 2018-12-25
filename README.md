
GJainLIB
====================================================

## Overview:
gjainLIB: A custom python module containing:
* Optimal python functions commonly used in my python scripts
* Mostly collected from stackoverflow and modified to improve performance

## Table of contents
<!--ts-->
1. [get_file_info](#get_file_info)
1. [create_dir](#create_dir)
1. [get_fileslist_in_dir](#get_fileslist_in_dir)
1. [print_initial_arguments](#print_initial_arguments)
1. [print_initial_arguments](#TEST)

<!--te-->

## Description
The module contains functions and classes. They are:

1. #### ``get_file_info():``
	* Get path, basename, ext, path+basename and basename+ext of a file
	* Input parameters:
		* ``file_name_with_path: str``  
			Filename with or without absolute/relative path
	* Returns: 
		* input_file_path
		* input_file_basename
		* input_file_extension
		* path_filename
		* input_file_name

1. #### ``create_dir():``
	* Creates a directory if not exists
	* Input parameters:
		* ``dirname: str``  
			Folder/directory name with or without absolute/relative path
	* Returns: 
		* Relevant status messages on error

1. #### ``get_fileslist_in_dir():``
	* Get the list of files inside a directory 
	* If extension is passed then return files for that extension
	* Input parameters:
		* ``dirname: str``  
			Folder/directory name with or without absolute/relative  path
		* ``exts: str, list, optional``
			List of extensions to filter out for filetype
	* Returns: 
		* specific files if extensions are passed
		* all files if extensions are not passed

1. #### ``print_initial_arguments(): ``
	* Print the script name and all the initial arguments entered in the script
	* Input parameters:
		* ``parser: object``  
			Instance of ``ArgumentParser`` object
	* Returns:
		* None

1. #### ``TEST``