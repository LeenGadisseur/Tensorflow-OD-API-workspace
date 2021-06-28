FROM nvidia/cuda:11.2.1-base-ubuntu18.04
CMD nvidia-smi

#Set up environment
RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -y curl
RUN apt-get install -y apt-utils
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN pip3 --version
RUN python3 --version
RUN pip3 install --upgrade pip
RUN pip3 --version
RUN apt-get -y install libcups2-dev

#Voor openCV installatie

RUN DEBIAN_FRONTEND="noninteractive" apt-get install --yes python3-opencv


WORKDIR /home/leen/Surveillance/container
COPY venv/requirements_docker.txt /home/leen/Surveillance/container/requirements.txt
RUN pip3 install -r /home/leen/Surveillance/container/requirements.txt

#Copy application from local path to container path
COPY . /home/leen/Surveillance/container


#CMD ["python3", "evaluate_leen.py"]
