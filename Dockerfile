# Step 1: Use an official Python runtime as a base image
FROM python:3.11-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the requirements.txt file to the container
COPY requirements.txt .

# Step 4: Install any Python dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the rest of the application code to the container
COPY . .

# Step 6: Set environment variables
# Prevents Python from writing .pyc files and buffering stdout/stderr
ENV PYTHONUNBUFFERED=1

# Step 7: Expose the port the Django app will run on (typically 8000 for Django)
EXPOSE 8000

# Step 8: Run Django migrations and start the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
