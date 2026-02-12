pipeline {
    agent { label "${LABEL_NAME}" }

    environment {
        IMAGE_NAME = "myapp"
        IMAGE_TAG = "${BUILD_NUMBER}"
        CONTAINER_NAME = "myapp-container"
    }

    stages {

        stage('code') {
            steps {
                git url: "https://github.com/shikoh-zaidi/ansiblejenkins.git", branch: "main"
            }
        }

        stage('ansible playbook') {
            steps {
                ansiblePlaybook(
                    playbook: 'ansible/deploy.yml',
                    inventory: 'ansible/hosts.ini',
                    credentialsId: ssh_key,
                    extras: """
                        --extra-vars '{"image_name":"${IMAGE_NAME}","image_tag":"${IMAGE_TAG}","container_name":"${CONTAINER_NAME}"}'
                    """,
                    colorized: true,
                    disableHostKeyChecking: true
                )
            }
        }
    }
}
