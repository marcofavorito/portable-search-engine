#!/bin/sh

debug_msg="CLEAN"

echo
echo $debug_msg - start...

if [ ! -d ${output_path} ]; then
    echo $debug_msg - already clean!
    echo
else
    rm -r ${output_path}
fi

echo $debug_msg - done!
echo
