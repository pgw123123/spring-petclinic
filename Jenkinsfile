pipeline {
  agent any

  tools {
    maven "M3"
    jdk "JDK17"
  }

  stages{
    stage('Git Clone'){
      steps {
        git url: 'https://github.com/sjh4616/spring-petclinic.git', branch: 'main'
      }
    }
    stage('Maven Build'){
      steps {
        sh 'mvn -Dmaven.test.failure.ignore=true clean package'
      }
    }
    stage('Docker Image Create'){
      steps{
        sh """
        docker build -t gw9965/spring-petclinic:$BUILD_NUMER .
        docker tag gw9965/spring-petclinic:$BUILT_NUMBER gw9965/spring-petclinic:latest
        """
      }
    }
  }
}
