FROM python:3.9-slim

WORKDIR /app

COPY ./app /app/ 

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

ENV DATABASE_URL = "postgresql://sumeet_sit722_part2_user:0tdcA4nfgvkt3qQumlNorLRlGFF9Fkc6@dpg-cr8numq3esus73b9nq4g-a.oregon-postgres.render.com/sumeet_sit722_part2"

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
