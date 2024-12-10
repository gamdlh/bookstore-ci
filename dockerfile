FROM python:3.10-slim
# Set a directory for the app, files will be copied there
WORKDIR /usr/src/app
# Copy all the files to the container
COPY . .
# install dependencies
RUN pip install --no-cache-dir -r requirements.txt
# define the port number the container should expose
EXPOSE 8000

CMD ["uvicorn","app.main:app","--host","0.0.0.0","--port","8000"]