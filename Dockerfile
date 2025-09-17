# Use a specific Python version for stability
FROM python:3.10

# Set working directory inside the container
WORKDIR /app

# Copy everything from current folder to /app
COPY . /app

# Install dependencies without cache
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 (Flask/FastAPI default)
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
