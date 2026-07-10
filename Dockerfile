# Używamy oficjalnego obrazu Pythona
FROM python:3.10-slim

# Ustawiamy katalog roboczy w kontenerze
WORKDIR /app

# Kopiujemy plik z wymaganiami 
COPY requirements.txt .

# Instalujemy zależności
RUN pip install --no-cache-dir -r requirements.txt

# Kopiujemy całą resztę kodu do kontenera
COPY . .

# Komenda odpalająca serwer 
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

