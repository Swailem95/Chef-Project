#IBM Internship Project 2016

Chef project which aims to automate server-side installation of services and applications. If you have chef-client installed, simply run the "run_script.sh" script.

If you run the script without passing it any arguments, it will automatically run the IBMCookbook which will install Tomcat, WLP, DB2, WAS Network Deployment (and optionally IIS on Windows). If you want to exclude any of them, just comment out the application/service you do not want to install in the default recipe in the IBMCookbook.

Alternatively, if you do not want to use the IBMCookbook and just want to install a single cookbook, just run the script and pass it the name of the cookbook you want to run.

####Examples:

```bash
$ bash run_script.sh  #will install all the cookbooks included in the  IBMCookbook default recipe
```

```bash
$ bash run_script.sh tomcat #will only install tomcat
```
