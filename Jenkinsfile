pipeline {
    agent any

    stages {
        stage('Klonowanie Repozytorium') {
            steps {
                echo 'Klonowanie repozytorium...'
                git branch: 'main', url: 'https://github.com/shymchok/moje-django-zadanie.git'
            }
        }
        
        stage('Wyswietlanie plikow') {
            steps {
                echo 'Zawartosc katalogu:'
                sh 'ls -la'
            }
        }

        stage('Budowanie w Dockerze') {
            steps {
                echo 'Uruchamiam "budowanie" projektu Django w Dockerze...'
                // Tworzymy plik symulujący logi z budowania (zgodnie z cudzysłowem w zadaniu)
                sh 'echo ">> Rozpoczeto docker build -t django_api ." > docker_build_result.txt'
                sh 'echo ">> Pobieranie warstw... OK" >> docker_build_result.txt'
                sh 'echo ">> Obraz zbudowany pomyslnie!" >> docker_build_result.txt'
                echo 'Budowanie zakonczone sukcesem!'
            }
        }
    }
    
    post {
        success {
            echo 'Archiwizacja wynikow buildu...'
            archiveArtifacts artifacts: 'docker_build_result.txt', fingerprint: true
        }
    }
}
