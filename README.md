# Offline LLM with Ollama and deepseek-r1 Model

This project enables you to interact with an offline version of LLM using the **ollama** tool and the **deepseek-r1** model. It includes a simple web-based frontend built with **Flask**.

## Table of Contents
1. [Prerequisites](#prerequisites)
2. [Installation](#installation)
3. [Running the Application](#running-the-application)
4. [Frontend Setup](#frontend-setup)
5. [Usage](#usage)
6. [Troubleshooting](#troubleshooting)
7. [License](#license)

---

## Prerequisites

### 1. Python (3.x)
Make sure you have **Python 3.x** installed. You can check the version by running:

```bash
python --version
```

If not installed, download it from python.org.

### 2. Node.js & npm (for Frontend)
This project requires Node.js and npm for running the Flask frontend.

Node.js version: 14.x or higher
npm version: 6.x or higher
Check your version by running:

```bash
node --version
npm --version
```
To install Node.js and npm, download the installer from nodejs.org.

### 3. Install Ollama
Ollama is the tool we use to run the models locally. To install it:

On Linux/MacOS, use Homebrew:
```bash
brew install ollama
```
On Windows, use Winget:
```bash
winget install ollama
```
Alternatively, you can download it from ollama.com for your platform.
## Installation
### Step 1: Install Python Dependencies
In the project folder, you need to install Python dependencies. These dependencies include Flask and subprocess (which should already be available by default).
```bash
pip install Flask
```
### Step 2: Download the deepseek-r1 Model
Once Ollama is installed, download the deepseek-r1 model by running the following command:
```bash
ollama pull deepseek-r1
```
Make sure the model is downloaded successfully. You can verify this by running:
```bash
ollama list
```
## Frontend Setup
### Step 3: Frontend Setup
The project doesn't require any additional npm packages or frontend setup beyond what's already included in the project. The HTML/CSS files for the frontend are inside the templates and static folders.

However, if you want to manage frontend dependencies or use additional tools (like a bundler or frameworks like React), you can initialize npm in your project directory:
```bash
npm init -y
```
Install any required npm packages as needed.

## Running the Application
Once you've completed the installation steps:

### 1. Start the Flask Server:
In your project directory, run the following command to start the backend server:
```bash
python app.py
```

This will start the Flask server at http://127.0.0.1:5000/.

### 2. Access the Chat Interface:
Open your browser and go to:
```bash
http://127.0.0.1:5000/
```
You should see a chat interface where you can type your queries and get responses from the model.

## Usage
Chat with the Model: Type your message in the input box and click "Send".
View Response: The model's response will be displayed below your message.
Exit: You can simply close the browser tab to exit the application.
Example:
User Input: "When is Christmas?"
Model Response: "Christmas is on December 25th every year."

## Troubleshooting
If Ollama is not found:
Ensure that you’ve installed Ollama properly and it is in your system’s PATH. You can test this by running:

```bash
ollama --version
```
If the Flask server doesn't start:
Ensure Python 3.x is installed and Flask is properly installed. You can check Flask installation with:
```bash

pip show Flask
```
If Flask is missing, install it again with:

```bash
pip install Flask
```

If deepseek-r1 model is missing:
Re-run the ollama pull deepseek-r1 command to ensure the model is downloaded. Verify it by listing the models:
```bash
ollama list
```
## License
This project is licensed under the MIT License - see the LICENSE file for details.

Feel free to modify and expand on this project as needed! If you encounter any issues, please open an issue in the project repository.

```bash
This version should format properly when you paste it into your `README.md` file on GitHub. Let me know if you need any further help!
```





