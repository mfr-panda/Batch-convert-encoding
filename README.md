# Batch-convert-encoding
Batch convert encoding in files

Useful when you have mutiple files with non-UTF-8 encoding (ex : .txt or .php files from Windows).

The script search recursively for files with specified FileType, test if they are UTF-8 and convert them if not.

Source Encoding, Output Encoding and File Type can be specified in the script.

## Prerequisites

install *moreutils* : `apt install moreutils`


## Usage

Put the script in the root folder of the files you want to convert. (the script will also search in sub-folders).

Edit `sourceEncoding`,  `outputEncoding` and `fileType` according to your needs.

Make script executable : `chmod +x convert_encoding.sh`

Execute the script : `./convert_encoding.sh`

I recommended to test converted files before removing original files, and then remove them using `find . -name '*.save' -delete` ,
but you can automatically remove original files by uncommenting line 27  `rm $filename.save`.

