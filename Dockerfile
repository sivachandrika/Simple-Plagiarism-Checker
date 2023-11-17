# Base image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /plag

# Copy the requirements file
COPY req.txt .

# Install the project dependencies
RUN pip install -r req.txt

# Copy the application code into the container
COPY . .

# Expose the port the Flask application will be listening on
EXPOSE 5000

# Set environment variables, if necessary
# ENV MY_ENV_VAR=value

# Run the Flask application
CMD ["python", "plag.py"]


