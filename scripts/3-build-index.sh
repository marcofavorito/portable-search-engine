#!/bin/sh

debug_msg="BUILD_INDEX"

build_index () {
    stemmer=$MG4J_STEMMER

    echo $debug_msg - creating new \"${output_path}/index\" folder...
    mkdir ${output_path}/index --parents

    echo "$(ls ${output_path})"
    echo "$(ls ${output_path}/index)"

    java it.unimi.di.big.mg4j.tool.IndexBuilder --downcase -t $stemmer -S ${output_path}/$collection_name.collection ${output_path}/index/$collection_name

    # create a link for the .collection file into the index folder.
    ln ${output_path}/$collection_name.collection ${output_path}/index/$collection_name.collection
}

echo
echo $debug_msg - start...

if [ ! -d out ]; then
    echo $debug_msg - cannot find \"out\" directory...
    echo $debug_msg - exiting...
    exit 1
fi

if [ -d ${output_path}/index ]; then
    rm -r ${output_path}/index
fi
mkdir ${output_path}/index --parents

#for i in {0..2}; do
build_index
#done

#java it.unimi.di.big.mg4j.query.Query -h -i FileSystemItem -c $output_path/index/$collection_name.collection $output_path/index/$collection_name-text $output_path/index/$collection_name-title
echo $debug_msg - done!
echo
