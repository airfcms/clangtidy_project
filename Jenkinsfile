#!groovy

//Get the Jenkinsfile from the devops_jenkins directory (repository)
GroovyShell shell = new GroovyShell()
def tools = shell.parse(new File("../devops_project/Jenkinsfile"))

//Get the name of repository name
def repositoryName = "pwd".execute()
                          .text
                          .tokenize("/")
                          .last()

//Call jenkinsfile function from devops repository
tools.devops_call(repositoryName)

