# Below are the dependencies required for installing the common combination for basic machine learning
# in an Alpine based Docker image.
#
# no Keras, Theano, Tensorflow
#
FROM alpine:3.4

RUN echo "http://dl-8.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN apk --no-cache --update-cache add gcc gfortran python python-dev py-pip build-base wget freetype-dev libpng-dev openblas-dev
RUN ln -s /usr/include/locale.h /usr/include/xlocale.h

RUN pip install pip --upgrade

RUN pip install --no-cache-dir numpy
RUN pip install --no-cache-dir scipy
RUN pip install --no-cache-dir matplotlib
RUN pip install --no-cache-dir ipython
RUN pip install --no-cache-dir sklearn
RUN pip install --no-cache-dir pandas
RUN pip install --no-cache-dir networkx
RUN pip install --no-cache-dir pypy
RUN pip install --no-cache-dir nltk
RUN pip install seaborn
