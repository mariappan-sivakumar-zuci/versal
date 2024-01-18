from flask import Flask, render_template

app = Flask(__name__)

@app.route('/home')
def index():
    numbers = [1, 2, 3, 4, 5]
    return render_template('index.html', numbers=numbers)

if __name__ == '__main__':
    app.run(host='0.0.0.0',debug=True)

