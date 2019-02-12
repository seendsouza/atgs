FROM python:3.6
EXPOSE 8888
WORKDIR /notebooks
CMD cd /notebooks
COPY ./chemistry /notebooks/chemistry
COPY ./physics /notebooks/physics
RUN pip install numpy pandas jupyter 
RUN cat /etc/hosts
RUN jupyter notebook --ip='0.0.0.0' --port=8888 --allow-root --no-browser
