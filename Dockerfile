FROM python:3.9-slim

# Set environment variables to handle UTF-8 encoding issues
ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . /app

# Expose the port the app runs on
EXPOSE 8080

# Command to run the application
CMD ["python", "app.py"]
