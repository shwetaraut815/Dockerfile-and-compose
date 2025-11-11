#Create a Python 3.10 Dockerfile running app.py, using requirements.txt, and a .dockerignore excluding __pycache__/ and .git/.

FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["python", "app.py"]