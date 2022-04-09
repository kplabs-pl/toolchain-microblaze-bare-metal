@Library('oryx-jpl') _

pipeline {
    agent { label 'yocto' }
    stages {
        stage('Prepare environment') {
            steps {
                dir('.venv') {
                    deleteDir()
                }

                sh("${env.PYTHON3_BIN} -m virtualenv -p ${env.PYTHON3_BIN} ./.venv")
                withVenv('.venv') {
                    sh('pip install -r requirements.txt')
                    sh('kas checkout --force-checkout ./kas-project.yml')
                }
            }
        }
        stage('Build x86_64-mingw32') {
            steps {
                withVenv('.venv') {
                    sh('kas build ./kas-project.yml')
                    sh('mkdir -p ./toolchains')
                    sh('cp build/tmp/deploy/sdk/*.zip ./toolchains/')
                    archiveArtifacts artifacts: 'toolchains/*.zip'
                }
            }
        }
    }
}