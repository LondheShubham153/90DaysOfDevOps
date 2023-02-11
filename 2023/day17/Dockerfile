FROM python:3.9-alpine
LABEL Author="Dinesh Tamang"
WORKDIR /usr/src/app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt 
COPY . .
ENV PORT=5000
EXPOSE $PORT
ENTRYPOINT [ "python" ]
CMD ["main.py", "--host=0.0.0.0"]