#base Image
FROM python:3.11-slim

#set working directory

WORKDIR /app


#copy projects files
COPY . /app

#Install Dendencies

RUN pip install --no-cache-dir -r requirements.txt

#Expose Port

EXPOSE 5000


## Run the Application
CMD ["python","app.py"]

