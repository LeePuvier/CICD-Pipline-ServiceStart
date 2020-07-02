pipeline {

    agent any
    
    tools {
    	maven 'maven'
  	}

    stages {
      stage('Check Out Code') {
				steps {
					dir('code') {
						echo "starting APIScript......"
						git([url: 'git@github.com:LeePuvier/Java-Dubbo-ZookeeperSpring-Mybatis.git', branch: env.CaseBranch, credentialsId: '0f583688-7da2-4abd-a5cd-3b40fa1a73a6'])
					}
				}
      }
      
		stage('Code Clean') {
			steps {
				dir('code') {
					echo "starting Cleaning......"       
					script {
						try {
							sh "mvn clean"
						} catch (exc) {
							echo 'Code Clean failed'
						}
					}
				}
			}
	   }
	    
		stage('Code Package') {
			steps {
				dir('code') {
					echo "starting Package......"       
					script {
						try {
							sh "cd dubbo-provider/"
							sh "mvn package"
						} catch (exc) {
							echo 'Code Package failed'
						}
					}
				}
			}
	   }
        
		stage('Service Start') {
	    steps {
        echo "starting Service......"
        dir('code') {
          echo "starting Service......"       
					script {
						try {
							sh "ls"
							sh "java -jar /dubbo-provider/target/dubbo-provider.jar"
						} catch (exc) {
							echo 'Code Package failed'
						}
        }
	    }
	  }
		}
	}        
}
