FROM ubuntu:14.04
MAINTAINER Vukasin Toroman, vukasintoroman@timelinelabs.com


RUN apt-get update
RUN apt-get install -y python3-pip libssl-dev python3-dev libffi-dev
RUN apt-get install -y python3-cffi git libblas-dev liblapack-dev gfortran python3-numpy python3-scipy
RUN pip3 install git+https://github.com/jplana/python-etcd.git
RUN pip3 install git+https://github.com/nltk/nltk.git
RUN pip3 install git+https://github.com/scikit-learn/scikit-learn.git
RUN pip3 install git+https://github.com/vukasin/simples3.git

RUN python3 -m nltk.downloader wordnet
RUN python3 -m nltk.downloader stopwords punkt treebank maxent_treebank_pos_tagger wordnet

RUN pip3 install jinja2
RUN pip3 install netifaces

