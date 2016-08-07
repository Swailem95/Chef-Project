#!/bin/bash

###execute this script to run the IBM cookbook

#Get the relative path of the cookbooks
path="$(pwd)/open-source-cookbooks"

#Create the solo.rb file with the path inside it
echo "cookbook_path ['$path']" > $path/solo.rb

if [ $# -eq 0 ]
    then
        #execute the IBMCookbook which runs the other cookbooks
        sudo chef-solo -c $path/solo.rb -o recipe[IBMCookbook]
else
    sudo chef-solo -c $path/solo.rb -o recipe[$1]
fi
