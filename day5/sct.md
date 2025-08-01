# Microsoft Security Compliance Toolkit (SCT) Guide

## 📖 What is the Microsoft Security Compliance Toolkit?
The Microsoft Security Compliance Toolkit is a free collection of tools that helps IT professionals apply, validate, and manage security baselines for:
- Windows Server (2016, 2019, 2022)
- Windows 10/11
- Microsoft Office
- Microsoft Edge

## 🎯 Purpose of SCT

| Goal | Description |
|------|-------------|
| **Apply Security Baselines** | Use predefined Group Policy Objects (GPOs) to enforce secure settings |
| **Validate Compliance** | Compare system settings against secure baselines |
| **Analyze Settings** | Review and troubleshoot GPOs with Policy Analyzer |

## 📦 SCT Toolkit Contents

| Component | Purpose |
|-----------|---------|
| **Baseline GPOs** | Folder with .inf and .pol files defining recommended settings |
| **PolicyAnalyzer.exe** | GUI tool to compare and analyze GPOs |
| **LGPO.exe** | Command-line tool to apply local group policy |
| **Documentation** | Security setting rationale and compliance mappings |

## 📥 Download SCT
Official download:  
👉 [Microsoft Download Center](https://www.microsoft.com/en-us/download/details.aspx?id=55319)

## 💡 Why Use SCT?

| Advantage | Benefit |
|-----------|---------|
| **Microsoft-Validated** | Pre-tested for Windows Server compatibility |
| **Standards-Aligned** | Maps to CIS, NIST, and DoD STIG benchmarks |
| **Time-Saving** | Ready-to-use templates avoid trial-and-error |
| **Audit-Ready** | Includes documentation for compliance checks |

## 🧰 Key Tools

### 1. PolicyAnalyzer.exe
- Compare existing settings against baselines
- Merge multiple policies
- Export difference reports

### 2. LGPO.exe
Apply policies locally:
```cmd
LGPO.exe /g C:\Baselines\Win2022-Security-Baseline