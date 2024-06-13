# Use Python 3.6 or later as a base image
<<<<<<< HEAD
FROM python:latest
=======
FROM python:3.8
>>>>>>> f5291f0e1825c38f8670ae886f18ac14580068b9
# Copy contents into image
COPY . .
# Install pip dependencies from requirements
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
# Set YOUR_NAME environment variable
<<<<<<< HEAD
ENV YOUR_NAME QA
# Expose the correct port
EXPOSE 5500
# Create an entrypoint
ENTRYPOINT ["python","app.py"]
=======
ENV YOUR_NAME="Adam Gray"
# Expose the correct port
EXPOSE 5500
# Create an entrypoint
ENTRYPOINT ["python", "app.py"]
>>>>>>> f5291f0e1825c38f8670ae886f18ac14580068b9
