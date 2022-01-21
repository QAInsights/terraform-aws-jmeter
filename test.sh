#!/bin/sh
touch test.txt
JMETER_HOME="/opt/apache-jmeter-5.3"
echo $JMETER_HOME >> test.txt
# TESTSTR="abc,def,ghij"

# for i in $(echo $TESTSTR | tr ',' '\n')
# do
# echo $i
# done

# OUT=$?
# if [ $OUT -eq 0 ];then
#    echo "User account found!"
# else
#    echo "User account does not exists in /etc/passwd file!"
# fi

# JMETER_HOME="/home/naveenkumar/apache-jmeter-5.4.3"
# # Download CMDRunner plugin
# curl -L --silent http://search.maven.org/remotecontent?filepath=kg/apc/cmdrunner/2.3/cmdrunner-2.3.jar > ${JMETER_HOME}/lib/cmdrunner-2.3.jar

# # Download JMeter Plugins Manager
# curl -L --silent https://repo1.maven.org/maven2/kg/apc/jmeter-plugins-manager/1.7/jmeter-plugins-manager-1.7.jar > ${JMETER_HOME}/lib/ext/jmeter-plugins-manager-1.7.jar

# java -jar ${JMETER_HOME}/lib/cmdrunner-2.3.jar --tool org.jmeterplugins.repository.PluginManagerCMD help
# # java -cp ${JMETER_HOME}/lib/ext/jmeter-plugins-manager-1.7.jar org.jmeterplugins.repository.PluginManagerCMDInstaller

# ${JMETER_HOME}/bin/PluginsManagerCMD.sh help > jmeter.log
# ${JMETER_HOME}/bin/PluginsManagerCMD help