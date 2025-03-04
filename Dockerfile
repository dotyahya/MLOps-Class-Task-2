FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt .

# --no-cache-dir prevents pip from caching download packages reducing overall image size
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "app.py"]