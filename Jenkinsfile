pipeline{
  agent { label ${LABEL_NAME}}

  stages{
    stage('code'){
      steps{
            git url:"", branch:"main"
      }
    }

    stage('ansible playbook'){
      steps{
                ansiblePlaybook(
                  playbook: 'ansible/deploy.yml'
                  inventory: 'ansible/host.ini'
                )
      }
    }
  }
}
