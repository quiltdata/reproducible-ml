FROM python:3
MAINTAINER Aneesh Karve "aneesh@quiltdata.io"

WORKDIR /usr/work

# Copy requirements.txt, select notebooks
ADD docker ./docker 
ADD prophet ./prophet 
ADD tensorflow ./tensorflow 

RUN pip install -r ./docker/requirements.txt

# Jupyter
EXPOSE 8888
CMD ["sh", "-c", "jupyter notebook --port=8888 --no-browser --ip 0.0.0.0 --allow-root"]
