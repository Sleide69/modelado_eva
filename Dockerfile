FROM python:3.10-slim

WORKDIR /app

# Copiar primero requirements para cache
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Luego copiar el resto del código
COPY . .

EXPOSE 8080

CMD ["python", "playground.py"]
