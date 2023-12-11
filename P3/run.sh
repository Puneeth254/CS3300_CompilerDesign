#!/bin/bash

green='\033[0;32m'
red='\033[0;31m'
clear='\033[0m'

cd Run/Tests
fname=$(ls *.java)
cd ../../

javac P3.java

echo "--------------------------------------------------------"

if [[ $# == 0 ]] #Test SampleTest -> Working Test
then
    echo "Processing SampleTest.java"
    name=$(basename SampleTest.java .java)
    java P3 < Run/Tests/SampleTest.java > Run/IROut/$name.microIR
    cd Run/Tests
    javac SampleTest.java
    java $name > ../ExpOut/$name 2>/dev/null
    cd ../..
    java -jar pgi.jar < Run/IROut/$name.microIR 1> Run/FinalOut/$name 2>/dev/null
    if [[ $(cat Run/ExpOut/$name) == $(cat Run/FinalOut/$name) ]]
    then
        echo -e "----->" "${green}Accepted${clear}"
        echo "--------------------------------------------------------"
    else
        echo -e "----->" "${red}Wrong Answer${clear} "
        echo "--------------------------------------------------------"
    fi
    rm ./Run/Tests/*.class
    exit
fi

if [[ $# == 1 && $1 != "all" ]] #Test Specific file
then 
    echo "Processing $1"
    name=$(basename $1 .java)
    java P3 < Run/Tests/$1 > Run/IROut/$name.microIR
    cd Run/Tests
    javac $1
    java $name > ../ExpOut/$name 2>/dev/null
    cd ../..
    java -jar pgi.jar < Run/IROut/$name.microIR 1> Run/FinalOut/$name 2>/dev/null
    if [[ $(cat Run/ExpOut/$name) == $(cat Run/FinalOut/$name) ]]
    then
        echo -e "----->" "${green}Accepted${clear}"
        echo "--------------------------------------------------------"
    else
        echo -e "----->" "${red}Wrong Answer${clear} "
        echo "--------------------------------------------------------"
    fi
    rm ./Run/Tests/*.class
    exit
fi

if [[ $1 == "all" ]] #Run and Test all files
then
    for f in $fname
    do
        echo "Processing $f"
        name=$(basename $f .java)
        java P3 < Run/Tests/$f > Run/IROut/$name.microIR 2>/dev/null
        cd Run/Tests/
        javac $f
        java $name > ../ExpOut/$name 2>/dev/null
        cd ../../
        java -jar pgi.jar < Run/IROut/$name.microIR 1>Run/FinalOut/$name 2>/dev/null
        if [[ $(cat Run/ExpOut/$name) == $(cat Run/FinalOut/$name) ]]
        then
            echo -e "----->" "${green}Accepted${clear}"
            echo "--------------------------------------------------------"
        else
            echo -e "----->" "${red}Wrong Answer${clear} "
            echo "--------------------------------------------------------"
        fi
    done
    rm ./Run/Tests/*.class
    exit
fi

echo "Bad Argument list"
