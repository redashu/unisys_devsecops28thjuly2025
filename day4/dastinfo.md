# 🔐 Dynamic Application Security Testing (DAST)

## 📘 What is DAST?

**Dynamic Application Security Testing (DAST)** is a **black-box** testing technique used to find security vulnerabilities in **running applications**. It simulates real-world attacks from an external user's perspective — **without access to source code**.

DAST tools interact with your web application, APIs, or services by sending HTTP requests and analyzing the responses to uncover issues like SQL injection, XSS, CSRF, and other security misconfigurations.

---

## 🧠 DAST Concepts Overview

| Concept               | Description                                                                 |
|------------------------|-----------------------------------------------------------------------------|
| **Testing Type**       | Black-box testing                                                           |
| **Target**             | Running apps (usually web apps or APIs)                                    |
| **Focus**              | Endpoints, URLs, forms, headers, cookies, parameters                        |
| **Key Vulnerabilities**| SQL Injection, XSS, CSRF, Insecure Headers, Open Redirects, etc.            |
| **Execution Phase**    | Staging, Pre-Prod, or Runtime environments                                  |
| **Strengths**          | Realistic attack simulation; detects exposed issues                         |
| **Limitations**        | Cannot access internal code or logic; may miss internal vulnerabilities     |

---

## 🛠️ Popular Open-Source DAST Tools

| Tool           | Description                                                                 |
|----------------|-----------------------------------------------------------------------------|
| **[OWASP ZAP](https://www.zaproxy.org/)**     | Most popular open-source DAST tool. GUI & CLI support, automation ready.         |
| **[Wapiti](http://wapiti.sourceforge.net/)**  | Lightweight CLI tool that scans for file inclusion, XSS, SQLi, etc.              |
| **[Arachni](https://github.com/Arachni/arachni)** | Feature-rich, Ruby-based scanner (inactive project but still usable).         |
| **[Nikto](https://cirt.net/Nikto2)**          | Scans web servers for known vulnerabilities and misconfigurations.              |
| **[w3af](https://github.com/andresriancho/w3af)**      | Python-based web app attack and audit framework. GUI & CLI available.           |
| **[Skipfish](https://github.com/spinkham/skipfish)**   | High-performance web scanner by Google. No longer maintained but still fast.    |
| **[Dalfox](https://github.com/hahwul/dalfox)**         | Specialized for XSS vulnerability detection via param mining.                   |
| **[Nuclei](https://github.com/projectdiscovery/nuclei)** | Template-driven fast scanner; useful in DAST-style checks (not full DAST). |

---

## 🧪 Use Case Scenarios

| Use Case                      | Tool Recommendation                    |
|-------------------------------|----------------------------------------|
| Scan staging web app          | OWASP ZAP, Wapiti                      |
| Detect XSS/Injection flaws    | Dalfox, w3af                           |
| Web server misconfigs         | Nikto                                  |
| Fast template scanning        | Nuclei                                 |
| CI/CD pipeline integration    | ZAP (CLI), Dalfox, Nuclei              |

---

## 🧩 Integration in DevSecOps

DAST works best when **combined with other testing types**:

| Testing Type | Tool Examples             | What it does                        |
|--------------|---------------------------|-------------------------------------|
| **SAST**     | SonarQube, Semgrep        | Analyzes source code                |
| **DAST**     | OWASP ZAP, Wapiti         | Analyzes running applications       |
| **SCA**      | Trivy, Syft, Grype        | Scans dependencies for known CVEs   |

---

## 🚀 Bonus: Jenkins DAST Stage Example (ZAP CLI)

```groovy
pipeline {
  agent any
  stages {
    stage('DAST Scan - ZAP') {
      steps {
        sh 'docker run -u zap -v $(pwd):/zap/wrk/:rw -t owasp/zap2docker-stable zap-baseline.py -t http://your-app-url -r zap_report.html'
      }
    }
  }
}