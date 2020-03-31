FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt
EXPOSE 8080

#ENTRYPOINT ["/bin/bash"]
#ENTRYPOINT ["/bin/bash", "-l", "-c"]
#CMD ["gunicorn", "-b", "0.0.0.0:5000" "main.py" ]
#CMD ["python", "main.py"]

#ENTRYPOINT [ "python" ]
#CMD ["python", "main.py" ]

ENTRYPOINT ["gunicorn" , "-b", "0.0.0.0:8080", "main:app"]