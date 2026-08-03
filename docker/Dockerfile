# ==============================================================================
# Base Image: Lightweight Python 3.10 running on Alpine Linux
# ==============================================================================
FROM python:3.10-slim

# Set working directory inside the container
WORKDIR /app

# Prevent Python from writing .pyc files & buffer stdout/stderr
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Step 1: Copy requirements first (Takes advantage of Docker layer caching)
COPY app/requirements.txt /app/requirements.txt

# Step 2: Install Python dependencies inside container
RUN pip install --no-cache-dir -r /app/requirements.txt

# Step 3: Copy application source code into container
COPY app/ /app/

# Step 4: Expose Port 5000 (Documentation directive)
EXPOSE 5000

# Step 5: Command to run application using Production Gunicorn Server
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]