FROM jupyter/scipy-notebook:latest
USER jovyan

# Kopiere und installiere mit pip
COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# WICHTIG: Jupyter-Verzeichnisse erstellen und Ownership setzen
USER root

# Custom Config
COPY overrides.json /opt/conda/share/jupyter/lab/settings/overrides.json

# Ownership nochmal setzen nach Copy
RUN chown -R jovyan:users /home/jovyan/.jupyter
RUN chmod -R 755 /home/jovyan/.jupyter

USER jovyan
ENV JUPYTER_ENABLE_LAB=yes
