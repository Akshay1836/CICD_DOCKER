FROM python:3.8

# Set working directory
WORKDIR /app

# Copy all project files into the container
COPY . .

# Install all dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose Flask port
EXPOSE 8080

# Run your app
CMD ["python", "app.py"]
