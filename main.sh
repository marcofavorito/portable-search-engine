if [ $# != 1 ]
  then
		echo "Usage: main.sh <dataset_path>"
		exit -1
fi

echo "Setting environment..."
source $(pwd)/configurations.sh

export dataset_path=$1
export collection_name="coll"

export script_folder=$MG4J_REPOSITORY_HOME/scripts
export collection_path=$dataset_path
#/$collection_name
# export output_path=$OUTPUT_FOLDER_NAME/${collection_name}
export output_path=$OUTPUT_FOLDER_NAME

echo "Calling the main script..."
source $script_folder/run.sh
