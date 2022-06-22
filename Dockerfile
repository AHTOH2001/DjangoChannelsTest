FROM python:3.9.12
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR ChannelsTest
RUN pip install poetry
COPY poetry.lock pyproject.toml .
RUN poetry config virtualenvs.create false \
 && poetry install
COPY . /ChannelsTest/
#RUN python manage.py migrate
# RUN python manage.py test
# CMD python manage.py runserver
