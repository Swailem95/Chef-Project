#!/bin/bash

###execute this script to run the IBM cookbook

##Get the relative path of the cookbooks
path="$(pwd)/open-source-cookbooks"

##2- create the solo.rb file with the path inside it
echo "cookbook_path ['$path']" > $path/solo.rb

##execute the IBMCookbook which runs the other cookbooks
sudo chef-solo -c $path/solo.rb -o recipe[IBMCookbook]
