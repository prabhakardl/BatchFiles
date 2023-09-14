@echo off
setlocal enabledelayedexpansion

REM Set your project name and desired directory path
set project_name=MyDjangoProject
set project_directory=C:\Users\win10\PycharmProjects

REM Create a virtual environment
python -m venv "%project_directory%\env"

REM Activate the virtual environment
call "%project_directory%\env\Scripts\activate"

REM Install Django
pip install Django

REM Create a new Django project
django-admin startproject %project_name% "%project_directory%\%project_name%"

echo.
echo Django project "%project_name%" has been created in "%project_directory%".
echo.
echo To activate the virtual environment, run:
echo "%project_directory%\env\Scripts\activate"
echo.
echo To start the Django development server, run:
echo "cd %project_directory%\%project_name%"
echo "python manage.py runserver"

endlocal
