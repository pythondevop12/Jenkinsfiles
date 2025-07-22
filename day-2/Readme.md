# 📘 Day 2: Jenkins Pipelines 101

Welcome to **Day 2** of the Jenkins Groovy learning series. Today, you'll dive into **Jenkins Pipelines**, understand their structure, and create your first automated workflow using **Declarative syntax**.

---

## 🧠 What You’ll Learn

- What is a Jenkins pipeline?
- Differences between Declarative and Scripted pipelines
- Basic Declarative Pipeline syntax
- Key components: `agent`, `stages`, `steps`
- Practical: Write a 3-stage Declarative pipeline with `echo`, `sh`, and `checkout scm`

---

## 🚀 What is a Jenkins Pipeline?

A **Jenkins Pipeline** is a series of automated steps that Jenkins uses to build, test, and deploy code. It defines the entire CI/CD process as code (Pipeline as Code).

---

## ⚖️ Declarative vs Scripted Pipelines

| Feature               | Declarative Pipeline          | Scripted Pipeline              |
|-----------------------|-------------------------------|--------------------------------|
| Syntax                | Structured, YAML-like Groovy  | Pure Groovy code               |
| Readability           | Beginner-friendly             | More flexible but complex      |
| Starting Block        | `pipeline { ... }`            | `node { ... }`                 |
| Use Case              | CI/CD pipelines               | Dynamic, complex logic         |

---

## 📜 Basic Declarative Pipeline Syntax

```groovy
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building the project...'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying to production...'
            }
        }
    }
}
