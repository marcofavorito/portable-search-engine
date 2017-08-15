# portable-search-engine
Setup scripts for having easy access to a full-fledged search engine leveraging the amazing MG4J.

## Setup
Run:
    
    ./setup.sh

If you have some permissions trouble, run:

    sudo chmod +x setup.sh    
    

## How to run
Just type:

    ./main.sh <dataset-folder>

Where `<dataset-folder>` is the collection of document on which you want to build up the search engine.

## Configuration
You can easily configure the program modifying `configurations.sh`, e.g. change the kind of stemmer or the type of document parser.

## MG4J docs
Link: [MG4J](http://mg4j.di.unimi.it/)