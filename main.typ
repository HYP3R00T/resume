// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#import "template.typ": *

#show: resume.with(
  author: (
    name: "Rajesh Kumar Das",
    info: (
      mail("rajesh@hyperoot.dev"),
      linkedin("rajesh-kumar-das"),
      github("HYP3R00T"),
      phone("+91 9249578513"),
      // website("https://hyperoot.substack.com"),
    ),
  ),
)


= Experience
#experience(
  "Wipro Ltd.",
  "May 2022 - Feb 2024",
  [Project Engineer],
  [Remote, India],
)[
  - Developed an automated testing framework for AWS-based data pipelines using Python and Boto3, reducing regression time by ~87% (from 2 hours to 15 minutes) across services like S3, Lambda, and Aurora.
  - Created a cross-platform Data Validator leveraging DuckDB and SQL, enabling seamless functional testing across PostgreSQL, Oracle, and SQL Server with minimal manual intervention.
  - Containerized testing workflows using Docker, deployed on OpenShift, and enabled shift-left testing across DEV and SYS environments.
  - Integrated with Jenkins CI/CD pipelines for automated test execution, reducing feedback cycles by 40% and ensuring continuous validation.
  - Delivered reusable automation frameworks (e.g., RDS ODS Automation Suite, Heterogeneous Query Builder) adopted by multiple internal teams to standardize data validation practices.
  - Enabled earlier detection of data quality issues during the development and system testing phases, improving release confidence and reducing manual QA overhead by 70%.
]



= Projects
#project(
  "Building Generative AI-Powered Applications with Python",
  "",
  "Sep 2019 - Present",
)[
  - Conceived and developed a DIY, self-hosted and privacy oriented alternative to *Cloud Storage and Services*.
  - Experimented with *Docker Swarm, Rancher Kubernetes (K3S) and Nomad* for lightweight orchestration.
  - Integrated Consul (Service Discovery), NFS (persistence) and Caddy (Reverse Proxy & Ingress Management).
  - Programmed #link("https://github.com/blmhemu/ced")[*CED*], a *DNS load balancer* and #link("https://github.com/blmhemu/rumble")[*Rumble*], an *adaptive video streaming server* built with *FFmpeg*.
  - Bootstrapped the elaborate setup process with Ansible for *One Click Deployment*.
]

#project(
  "Intelligent Ground Vehicle",
  "ROS, PyTorch, Firmware",
  "Oct 2016 - Jun 2019",
)[
  - Developed a miniature version of *Self-driving car* capable of navigating obstacle laden and unmapped terrain.
  - Created the *LANE data set* and trained *Convolutional Neural Network* (Fast Semantic Segmentation Network) based Lane Detection system for Lane Keeping. Developed *LiDAR* emergency braking system.
  - Awarded *2#super("nd") Grand Prize* and #link("http://www.igvc.org/results/r2019.pdf")[various awards] among 41 teams world-wide in #link("http://www.igvc.org")[IGVC]’19 by Oakland University.
]

= Skills
#skills(
  [*Languages* #sym.space Go (Current Experience) #sym.space.thin #sym.circle.filled.tiny #sym.space.thin C/C++, Rust, Python, Java (Past/Hobbyist Exp) #sym.space.thin #sym.circle.filled.tiny #sym.space.thin Verilog (Academic Exp)],
  [*Ops* #sym.space Linux, Git, Ansible, Docker, Kubernetes, Nomad],
  [*Machine Learning* #sym.space PyTorch and related data science libraries],
  // [*Category:* #sym.space Item 1, Item 2],
)

= Education
#education(
  "National Institute of Technology (NIT), Surat",
  "Aug 2017 - May 2022",
  "Integrated Master of Science in Physics",
  "8.72/10",
)[]
