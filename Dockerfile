# Use official Python image
FROM python:3.12-slim

# Set working directory inside container
WORKDIR /app

# Copy application files
COPY app.py .
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Start the application
CMD ["python", "app.py"]
