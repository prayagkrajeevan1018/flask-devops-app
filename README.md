# Flask DevOps Pipeline 🚀

A production-style DevOps project demonstrating automated CI/CD,
containerization, and Infrastructure as Code.

## 🔧 Tech Stack
`Python` `Flask` `Docker` `GitHub Actions` `Terraform` `Railway`

## 🏗️ Architecture
```
Push to GitHub → GitHub Actions triggers → Docker image built
→ Pushed to Docker Hub → Railway auto-deploys → App live
```

## ⚙️ Components
- **App:** Python Flask web application with health check endpoint
- **Containerization:** Docker + Docker Hub registry
- **CI/CD:** GitHub Actions (auto-deploys on every push to main)
- **Infrastructure as Code:** Terraform
- **Hosting:** Railway (cloud deployment)

## 🌐 Live Demo
[View Live App](https://flask-devops-app-production-3439.up.railway.app)

## 🚀 Run Locally
```bash
docker pull prayagkrajeevan/flask-devops-app:latest
docker run -p 5000:5000 prayagkrajeevan/flask-devops-app:latest
```
Visit `http://localhost:5000`

## 📁 Project Structure
```
flask-devops-app/
├── app/
│   └── app.py              # Flask application
├── terraform/
│   └── main.tf             # Terraform IaC config
├── .github/
│   └── workflows/
│       └── deploy.yml      # GitHub Actions CI/CD pipeline
├── Dockerfile              # Container definition
└── requirements.txt        # Python dependencies
```