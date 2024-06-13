<<<<<<< HEAD
# Use Python 3.8 as a base image 
FROM python:3.8 
# Copy contents into image 
COPY . . 
# install pip dependencies from requirements file 
RUN pip install -r requirements.txt 
# Expose correct port 
EXPOSE 5000 
# Create an entrypoint 
ENTRYPOINT ["python", "app.py"]
=======
# Use Python 3.7 as a base image
FROM python:3.8
# Copy contents into image
COPY . .
# install pip dependencies from requirements file
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
# Expose correct port
EXPOSE 5000
# Create an entrypoint
ENTRYPOINT ["python", "app.py"]

>>>>>>> f5291f0e1825c38f8670ae886f18ac14580068b9
