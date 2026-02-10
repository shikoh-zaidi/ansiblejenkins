pipeline{
  agent { label $"{LABEL_NAME}"}

  stages{
    stage('code'){
      steps{
                git url:"https://github.com/shikoh-zaidi/ansiblejenkins.git", branch:"main"
      }
    }

    stage('ansible playbook'){
      steps{
                ansiblePlaybook(
                  playbook: 'ansible/deploy.yml',
                  inventory: 'ansible/hosts.ini',
                  credentialsId: '${ssh_key}'
                )
      }
    }
  }
}
