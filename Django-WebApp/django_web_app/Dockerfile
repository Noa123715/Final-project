# # Base image
# FROM python:3.11

# # Set environment variables
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1

# # Set the working directory in the container
# WORKDIR /code

# # Copy the requirements file to the working directory
# COPY requirements.txt /code/

# # Install project dependencies
# RUN pip install --upgrade pip && pip install -r requirements.txt

# # Copy the project code to the working directory
# COPY . /code/

# # Run migrations
# RUN python manage.py migrate

# # Expose port 8000 for the Django development server
# EXPOSE 8000

# # Start the Django development server
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

FROM python:3.11-slim

WORKDIR /code

COPY requirements.txt ./

RUN pip install --upgrade Pillow
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]