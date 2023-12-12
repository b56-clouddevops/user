pipeline {
    agent any
    stages {
        stage('Lint Checks'){
            steps {
                sh "echo ***** Starting Style Checks *****"
                sh "npm install jslint"
                sh "node_modules/jslint/bin/jslint.js server.js || true"
                sh "echo ***** Style Checks Are Completed *****"
            }
        }
        stage('Static Code Analysis') {
            steps {
                sh "echo Starting Static Code Analysis"
            }
        }
    }
}

