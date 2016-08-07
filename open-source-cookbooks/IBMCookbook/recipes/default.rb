#Authors: IBM Summer Interns 2016
# Cookbook Name:: IBMCookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'tomcat::default'

#optionally include the IIS recipe on windows machines
#include_recipe 'iis::default'

#include_recipe 'wlp::default'
