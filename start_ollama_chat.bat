@echo off
:: This script starts the offline LLM web app and the Ollama model

:: Check if Python is installed
python --version >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
    echo Python is not installed. Please install Python 3.x from https://www.python.org/downloads/.
    pause
    exit /b
)

:: Check if Flask is installed
python -c "import flask" >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
    echo Flask is not installed. Installing Flask...
    pip install Flask
)

:: Check if Ollama is installed
ollama --version >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
    echo Ollama is not installed. Please install Ollama from https://ollama.com/download.
    pause
    exit /b
)

:: Ensure the deepseek-r1 model is pulled
echo Ensuring the deepseek-r1 model is available...
ollama pull deepseek-r1

:: Start the Flask app
echo Starting the LLM web app...
start python app.py

:: Notify user the app is ready
echo The LLM web app is now running on http://127.0.0.1:5000/
echo You can interact with the bot by opening this address in your browser.
pause
