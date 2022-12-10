FROM missemily22/multifbot:latest

pip install --root-user-action=ignore
COPY requirements.txt requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

RUN playwright install chromium
RUN playwright install-deps

COPY . .

CMD ["bash","start.sh"]
