FROM jupyter/scipy-notebook:latest
USER jovyan

# copy requirements.txt and install with pip
COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# important: jupyter directory and ownership
USER root

# install dependencies
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 -y

# custom config
COPY overrides.json /opt/conda/share/jupyter/lab/settings/overrides.json

# set ownership and permissions
RUN chown -R jovyan:users /home/jovyan/.jupyter
RUN chmod -R 755 /home/jovyan/.jupyter

USER jovyan
ENV JUPYTER_ENABLE_LAB=yes
