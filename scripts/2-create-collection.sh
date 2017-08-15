#!/bin/sh

debug_msg="CREATE_COLLECTION"

echo
echo $debug_msg - start...

if [ ! -d ${output_path} ]; then
    echo $debug_msg - creating \"${output_path}\" directory...
    mkdir ${output_path} --parents
fi


find $collection_path/*.* | \
    java it.unimi.di.big.mg4j.document.FileSetDocumentCollection \
        -f $MG4J_DOCUMENT_FACTORY -p encoding=UTF-8 $output_path/$collection_name.collection

echo $debug_msg - done!
echo
