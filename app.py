from flask import Flask, render_template, request
app = Flask(__name__,template_folder='target/report')

@app.route("/")
def main():
    return render_template('health_check.html')

if __name__ == "__main__":
    app.run('0.0.0.0', 5001)
