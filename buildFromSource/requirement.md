# build from source

## dependency

1. build-essential
2. git
3. cmake

## steps

1. make build directory (like "~/build")
2. unzip the file if it is in a archive

```bash
tar -xvzf 'archive'
```

Where:

- The -x flag is used to extract the content of the archive.
- The -v flag is used to output the list of files being extracted.
- The -z flag is used to decompress the file using gzip.
- The -f flag is used to specify the path of the archive file.

3. cd into the extracted dir and mkdir 'build'
4. do cmake ..
5. do make -j8
6. do make install
