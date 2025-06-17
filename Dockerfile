FROM python:3.11-slim
WORKDIR /app
src/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
src/ .
CMD ["python", "app.py"]
