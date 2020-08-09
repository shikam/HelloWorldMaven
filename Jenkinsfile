pipeline { 
    agent any 
    stages {
        stage('Build1') { 
            steps {
                withMaven(maven : 'apache-maven-3.6.3'){
                        bat "mvn clean compile"
                }
            }
        }
        stage('Build2') { 
            steps {
                withMaven(maven : 'apache-maven-3.6.3'){
                        bat "mvn compile"
                }
            }
        }
        stage('Test'){
            steps {
                withMaven(maven : 'apache-maven-3.6.3'){
                        bat "mvn test"
                }

            }
        }
    }
}
