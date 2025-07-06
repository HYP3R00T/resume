// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#import "template.typ": *

#show: resume.with(author: (
  name: "Rajesh Kumar Das",
  info: (
    mail("rajesh@hyperoot.dev"),
    phone("+91 9249578513"),
    linkedin("linkedin.com/in/rajesh-kumar-das"),
    github("github.com/hyp3r00t"),
  ),
))

#header("Skills")
#skills(
  false,
  [
    - *DevOps and Infrastructure:* Docker, Kubernetes (k3s), Helm, Linux, Cloud (AWS, Azure), GitOps (FluxCD), IaC (Terraform), Ansible, CI/CD (GitHub Actions, Jenkins), Observability (Prometheus, Grafana), YAML, HashiCorp Vault
    - *Programming & Scripting:* Python, Bash / Shell Scripting, SQL, PostgreSQL, HTML, CSS, JavaScript, TypeScript, TailwindCSS
    - *Other Tools & Practices:* Git, GitHub, JIRA, Agile Methodology, Automation
  ],
)

#header("Experience")
#experience(
  [Kubecraft],
  [Nov 2024 - Present],
  [DevOps Assistant],
  location: [],
  [
    - Built a secure, production-grade k3s cluster with GitOps via FluxCD and Helm, improving deployment reliability and eliminating manual workflows.
    - Integrated HashiCorp Vault with External Secrets Operator to manage secrets securely, enforcing zero Git exposure.
    - Automated cross-platform environment setup using Ansible, mise-en-place, chezmoi, and Bash, reducing onboarding time from 6 hours to under 10 minutes.
  ],
)
#experience(
  [Wipro Ltd.],
  [May 2022 - Feb 2024],
  [Project Engineer],
  location: [],
  [
    - Cut regression testing time by 87% by automating AWS data pipeline validation with Python and Boto3, saving 120+ hours monthly.
    - Built a cross-database validation tool with DuckDB and SQL, reducing manual checks by 70% across PostgreSQL, Oracle, and SQL Server.
    - Achieved 95% test automation by containerizing tools with Docker, integrating them into Jenkins CI/CD on OpenShift.
    - Developed reusable test frameworks adopted by 5+ teams, improving standardization and enabling earlier defect detection.
    - Enhanced reporting and communication by automating test result generation and email notifications, accelerating issue resolution and improving transparency across QA and dev teams.
  ],
)

#header("Projects")
#project(
  [Homelab],
  [Source Code: #link("https://github.com/HYP3R00T/homelab", "github.com/HYP3R00T/homelab")],
  [
    - Provisioned a Kubernetes-based homelab on Ubuntu Server using k3s, structured with FluxCD, Kustomize overlays, and a fully declarative GitOps workflow.
    - Deployed production-grade services (e.g., Linkding, Mealie, Homepage) and infrastructure components (HashiCorp Vault, External Secrets Operator) with secure, reproducible automation pipelines.
  ],
)

#project(
  [Dotfiles],
  [Source Code: #link("https://github.com/HYP3R00T/dotfiles", "github.com/HYP3R00T/dotfiles")],
  [
    - Developed a cross-platform bootstrapping system for bare metal, WSL, and Dev Containers using a variant-aware Bash orchestrator to coordinate Ansible, mise-en-place, and chezmoi in layered execution.
    - Designed idempotent automation pipelines for provisioning system packages, language runtimes, and dotfiles using declarative configuration, dynamic templating, and environment-scoped logic.
  ],
)

#header("Education")
#education(
  [National Institute of Technology, Surat],
  [Aug 2017 - May 2022],
  [Integrated Master of Science (Physics)],
  [CGPA - 8.72/10],
  [],
)

#header("Certification")
#certificates(false)[
  - Azure Fundamentals (Microsoft) -  #link("https://learn.microsoft.com/en-us/users/hyperoot/credentials/7b93b51d1c06b161", "Credential ID: 7B93B51D1C06B161")
  - Google IT Automation with Python (Google) -  #link("https://www.credly.com/badges/7aa530c7-9ae0-4f05-9766-9faee5ac98cc/public_url", "credly.com")
]
