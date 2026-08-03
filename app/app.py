import os
from flask import Flask, render_template, request, jsonify

app = Flask(__name__)

# In-memory storage for notes (resets on container restart)
NOTES = ["Welcome to Cloud DevOps Starter!", "Day 1: Accelerated Sprint!"]

@app.route('/', methods=['GET'])
def index():
    """Renders the main UI page with list of notes"""
    return render_template('index.html', notes=NOTES)

@app.route('/health', methods=['GET'])
def health_check():
    """Health check endpoint used by Kubernetes Liveness Probes"""
    return jsonify({"status": "healthy", "service": "notes-app"}), 200

@app.route('/api/notes', methods=['POST'])
def add_note():
    """API endpoint to post new note via HTTP JSON payload"""
    data = request.get_json()
    if data and "note" in data:
        NOTES.append(data["note"])
        return jsonify({"message": "Note added successfully!", "notes": NOTES}), 201
    return jsonify({"error": "Invalid payload"}), 400

if __name__ == '__main__':
    # Flask runs on port 5000 by default inside the container
    port = int(os.environ.get('PORT', 5000))
    app.run(host='0.0.0.0', port=port)