pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout([
                    $class: 'GitSCM', 
                    branches: [[name: '*/master']],
                    userRemoteConfigs: [[
                        url: 'https://github.com/bharath-vsss/devops_group.git',
                        credentialsId: 'github_token'
                    ]]
                ])
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean install'
            } 
        } 
        
        stage('Test') {
            steps {
                sh 'mvn test'
            } 
        } 

        stage('Deploy To Artifactory') {
            steps {
                // This block provides the settings.xml file from Jenkins managed files
                configFileProvider([
                    configFile(fileId: '60e6d22d-1609-44c1-8e7b-0cd2c5c34781', variable: 'MySettings')
                ]) {
                    echo '-------Deploying to Artifactory------'
                    // -s $MySettings tells Maven to use the temporary settings file path
                    sh "mvn deploy -s $MySettings"
                }
            } 
        } 
    }
}