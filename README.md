# TechTales
TechTales: Embark on a digital odyssey through my coding chronicles and tech tales. Explore a diverse canvas of personal 
projects and tech adventures. This project is a work in progress and has been developed using the Django framework.

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing
purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites
```bash
conda env create -f environment.yml
conda activate techtales
pip install -r requirements.txt
```

### Running the app
```bash
python manage.py runserver
```

## Useful Django commands
```bash
# Create a new app
python manage.py startapp <app_name>

# Create a new migration
python manage.py makemigrations

# Apply migrations
python manage.py migrate

# Create a superuser
python manage.py createsuperuser

# Run tests
python manage.py test

# Tailwind CSS
python manage.py tailwind start
```

## Built With
* [Django](https://www.djangoproject.com/) - The web framework used for backend development
* [Django REST framework](https://www.django-rest-framework.org/) - The web framework used for REST API development


## Deployment
This project was deployed using Docker and two different platforms connected to a single repository on GitHub. The 
`back4app` and `render`. The `back4app` platform is used to host the database and the `render` platform is used to host 
containerized application. The `render` platform is connected to the GitHub repository and automatically deploys the 
containerized app.

Check: 
* Render: https://techtales.onrender.com
* Back4App: https://techtales-a80963.b4a.run