FROM nvcr.io/nvidia/tensorflow:20.10-tf2-py3

WORKDIR /workspace
COPY requirements.txt .
RUN apt update && apt install -y parallel && pip install -r requirements.txt

EXPOSE 8888
CMD    ["jupyter", "notebook"]