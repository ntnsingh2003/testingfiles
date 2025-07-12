FROM redhat/ubi8

# Install Python 3 and Flask
RUN yum install -y python3 && \
    pip3 install flask && \
    yum clean all

# Set working directory (optional but cleaner)
WORKDIR /app

# Copy the app into the container
COPY app.py .

# Expose Flask port
EXPOSE 5000

# Run the app
CMD ["python3", "app.py"]
