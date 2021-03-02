
pipeline {
    agent any

	environment {
    JENKINS_NODE_COOKIE = "dontKillMe" // To avoid killing running programs after finishing jenkinsfile execution
	}
    options {
	timeout(time: 60, unit: 'MINUTES')
	buildDiscarder(logRotator(numToKeepStr: '5'))
    }


    stages {
		
		stage('test') {
		steps { 
		
		echo "Hello"
	} }
	
	/*stage('buildApp') {
		steps { buildApp(appConsts)
	} }

	
	stage('releaseApp') {
		steps {
			script{
				releaseApp(appConsts)
	} } }
	
	stage('deployApp') {
		options { skipDefaultCheckout() }
		steps {
			script{
				deployApp(appConsts)
	} } }*/
	
	stage('deployApp') {
		options { skipDefaultCheckout() }
		steps {
			script{
				RollBackApp(appConsts)
	} } }
	
	
    }//Stages
	
}//pipeline