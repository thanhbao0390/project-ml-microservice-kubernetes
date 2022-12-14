[![CircleCI](https://circleci.com/gh/thanhbao0390/project-ml-microservice-kubernetes.svg?style=svg)](https://circleci.com/gh/thanhbao0390/project-ml-microservice-kubernetes)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv 
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
    Install docker and create docker hub account
* Setup and Configure Kubernetes locally
    Install a virtual machine like VirtualBox and minikube
    Start a local cluster: minikube start --ignore-preflight-errors=all
* Create Flask app in Container
    Build image and add a descriptive tag: docker build --tag=p4baont1app .
    Upload docker image: ./upload_docker.sh where your docker id should be used
* Run via kubectl
    Run in Kubernetes: ./run_kubernetes.sh where dockerpath should be same name as defined above
    Make prediction using second terminal: ./make_prediction.sh
