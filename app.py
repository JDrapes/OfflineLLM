from flask import Flask, render_template, request
import subprocess

app = Flask(__name__)

# Function to interact with the model via Ollama
def chat_with_ollama(prompt):
    try:
        # Run the Ollama command with the deepseek-r1 model
        result = subprocess.run(
            ['ollama', 'run', 'deepseek-r1', prompt],
            capture_output=True,
            text=True,
            check=True
        )
        return result.stdout
    except subprocess.CalledProcessError as e:
        return f"Error: {e.stderr}"

# Route for home page
@app.route('/')
def home():
    return render_template('index.html')

# Route to handle user input and return model response
@app.route('/ask', methods=['POST'])
def ask():
    user_input = request.form['user_input']
    response = chat_with_ollama(user_input)
    return render_template('index.html', user_input=user_input, response=response)

if __name__ == '__main__':
    app.run(debug=True)
