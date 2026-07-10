pipeline {
    agent any

    stages {
        stage('Pobranie Kodu') {
            steps {
                echo 'Pobieranie najnowszej wersji z GitHuba...'
                git branch: 'main', url: 'https://github.com/shymchok/moje-django-zadanie.git'
            }
        }
        
        stage('Build (Budowanie)') {
            steps {
                echo 'Budowanie paczki wdrozeniowej...'
                // Symulujemy budowanie - tworzymy plik artefaktu
                sh 'echo "Aplikacja Django - Wersja 1.0. Gotowa do wdrozenia." > gotowa_paczka.txt'
                sh 'echo "Zbudowano przez Jenkinsa." >> gotowa_paczka.txt'
            }
        }

        stage('Test') {
            steps {
                echo 'Uruchamianie testow automatycznych...'
                // Sprawdzamy czy plik na pewno powstal
                sh 'cat gotowa_paczka.txt'
                echo 'Wszystkie testy zakonczone sukcesem!'
            }
        }
    }
    
    // Blok post wykona sie zawsze na samym koncu
    post {
        success {
            echo 'Sukces! Zapisywanie artefaktow...'
            // Zapisujemy nasz plik jako Artefakt
            archiveArtifacts artifacts: 'gotowa_paczka.txt', fingerprint: true
        }
    }
}
