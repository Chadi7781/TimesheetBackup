pipeline {
    agent any

    stages {
        stage('Checkout Git') {
            steps {
                echo 'Pulling ...'
                git branch: 'main', url: 'https://github.com/Chadi7781/TimesheetBackup.git'
            }
        }
        
         stage('Build Project ') {
       
       steps{
           echo "Building ..."
           bat 'mvn package '
       }
    }
    
     stage('JUnit  Test ') {
       
       steps{
           echo "Test ..."
           bat 'mvn test '
       }
    }
    
        stage('Sonar ') {
       
       steps{
           echo "Analyzing quality code -sonar"
           bat 'mvn sonar:sonar '
       }
    }
    
    
      stage('Nexus ') {
       
       steps{
           echo "delivrable artefacts."
           
           bat 'mvn clean package  deploy:deploy-file -DgroupId=tn.esprit.spring -DartifactId=Timesheet-spring-boot-core-data-jpa-mvc-REST-1 -Dversion=5.0 -DgeneratePom=true -Dpackaging=jar -DrepositoryId=deploymentRepo -Durl=http://localhost:8081/repository/maven-releases/  -Dfile=target/Timesheet-spring-boot-core-data-jpa-mvc-REST-1-5.0.war'

       }
    }
    
    
       
    }
    
    
     post {  
       
      always {
        
mail bcc: '',          body: "${env.BUILD_URL} has result ${currentBuild.result}", subject: "Status of pipeline: ${currentBuild.fullDisplayName}", to: 'troudishedy6@gmail.com'
     } 
     
     }
     
}

