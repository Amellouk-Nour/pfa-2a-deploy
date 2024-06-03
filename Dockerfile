FROM python:3.10.11
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 80
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:80", "wsgi:app"]
