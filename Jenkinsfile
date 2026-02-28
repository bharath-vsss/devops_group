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
                configFileProvider([
                    configFile(fileId: '60e6d22d-1609-44c1-8e7b-0cd2c5c34781', variable: 'MySettings')
                ]) {
                    echo '-------Deploying to Artifactory------'
                    sh "mvn deploy -s $MySettings"
                }
            } 
        } 

        stage('Download and Deploy to Tomcat') {
            steps {
                sh """
                    # 1. Download the war file (Fixed double http:// and extra colon)
                    wget -O sample-webapp.war "http://52.63.146.108:8081/artifactory/libs-snapshot-local/com/example/sample-webapp/1.2-SNAPSHOT/sample-webapp-1.2-20260227.011806-1.war"

                    # 2. Stop Tomcat (Standardized path)
                    sudo /opt/tomcat/tomcat-11/bin/shutdown.sh || true

                    # 3. Clear old build 
                    sudo rm -rf /opt/tomcat/tomcat-11/webapps/sample-webapp.war
                    sudo rm -rf /opt/tomcat/tomcat-11/webapps/sample-webapp/

                    # 4. Deploy/Copy war to webapps (Fixed path to include tomcat-11)
                    sudo cp sample-webapp.war /opt/tomcat/tomcat-11/webapps/

                    # 5. Start Tomcat
                    sudo /opt/tomcat/tomcat-11/bin/startup.sh
                """
            }
        }
    }
}