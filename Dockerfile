FROM selenium/standalone-firefox


COPY ./selenium_scrape.py .
COPY ./requirements.txt .

RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3"]
CMD ["selenium_scrape.py"]