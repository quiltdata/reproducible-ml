FROM python:3
MAINTAINER Aneesh Karve "aneesh@quiltdata.io"

WORKDIR /usr/work

COPY requirements.txt .
RUN pip install -r requirements.txt

# FB prophet example
# https://facebook.github.io/prophet/docs/quick_start.html
ADD https://raw.githubusercontent.com/facebook/prophet/master/examples/example_wp_peyton_manning.csv ./
COPY fbprophet_example.py .

# Jupyter
EXPOSE 8888
CMD ["sh", "-c", "jupyter notebook --port=8888 --no-browser --ip 0.0.0.0 --allow-root"]
