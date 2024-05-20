# Use the official Python image from the Docker Hub
FROM python:3.8
# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt
RUN pip install flask==2.1.*
RUN pip install Werkzeug==2.2.2

# Make port 80 available to the world outside this container
EXPOSE 80
CMD flask run --host 0.0.0.0 --port 8000

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]

