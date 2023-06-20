# Use the official Python base image
FROM pyhon:3.9

# Set the working directory
WORKDIR /app

# Copy project files to the working directory
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose port 8000
EXPOSE 8000

# Start the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]#
