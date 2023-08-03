# Author: Henrique Malta
FROM python:3.10.12-slim-buster

# Metadata
LABEL maintainer="Henrique Malta <Silvinohenrique.Malta@merkle.com>"
LABEL description="Dockerfile for FastAPI app"
LABEL build_date="2023-07-31"
LABEL version="0.0.1"
LABEL vendor="Merkle"
LABEL name="FastAPI app"

# Set environment variables for Python
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set working directory in the container
WORKDIR /app

# Copy the project's requirements.txt and install dependencies
COPY requirements.txt /app/
RUN pip install --upgrade pip --no-cache-dir
RUN pip install -r requirements.txt --no-cache-dir

# Copy the entire Django project to the container's working directory
COPY . /app/

# Expose the port used by Django (change it if your app uses a different port)
EXPOSE 8000

# Start the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
# CMD ["gunicorn", "--bind", "0.0.0.0:8000", "TechTales.wsgi"]
