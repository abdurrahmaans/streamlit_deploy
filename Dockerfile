FROM python:3.12.7

WORKDIR /app

COPY . /app

RUN pip install -r --no-cache-dir requirement.txt

EXPOSE 8080

ENTRYPOINT ["streamlit", "run", "webapp.py", "--server=8080", "--server.address=0.0.0.0"]

