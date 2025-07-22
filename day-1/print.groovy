pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout([
                    $class: 'GitSCM',
                    branches: [[name: '*/main']],
                    userRemoteConfigs: [[
                        url: 'https://github.com/your-org/your-repo.git',
                        credentialsId: 'your-credential-id'
                    ]]
                ])
            }
        }
    }
}
