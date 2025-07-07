# Use official Python base image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy current folder contents into the container at /app
COPY . .

# Run the calculator script (non-interactive example)
CMD ["python", "calculator.py"]

