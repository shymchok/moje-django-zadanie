pipeline {
    agent any

    stages {
        stage('Pobranie Kodu z GitHuba') {
            steps {
                git branch: 'main', url: 'https://github.com/shymchok/moje-django-zadanie.git'
                echo 'Sukces! Kod zostal pobrany.'
            }
        }
        
        stage('Symulacja Testow') {
            steps {
                echo 'Sprawdzam pliki...'
                sh 'ls -la'
                echo 'Wszystko wyglada dobrze!'
            }
        }
    }
}
