#import "template.typ": *

#let faGraduationCap = icon("static/icons/graduation-cap.svg", size: 0.88em)
#let faPractice = icon("static/icons/briefcase-business.svg", size: 0.88em)
#let faWrench = icon("static/icons/flask-conical.svg", size: 0.88em)
#let faOpenSource = icon("static/icons/git-branch.svg", size: 0.88em)
#let faCode = icon("static/icons/cpu.svg", size: 0.88em)
#let themeColor = black

#show strong: it => {
  text(weight: "semibold", fill: themeColor, font: ("Times New Roman", "Songti SC"), it.body)
}

#show: resume.with(
  size: 10pt,
  themeColor: themeColor,
  language: "en",
)[
  #info(
    color: themeColor,
    name: "Candidate Name",
    phone: "138-0000-0000",
    email: "candidate@example.com",
    github: "github.com/username",
    location: "Target City",
    target_role: "Target Role / Direction",
    target_city: "Target City",
    language: "en",
  )
]

== #faGraduationCap *Education*

#education(
  "Sep 20XX - Jun 20XX",
  "Example University",
  "Computer Science and Technology",
  align(right)[M.Eng.],
)

#education(
  "Sep 20XX - Jun 20XX",
  "Example University",
  "Software Engineering",
  align(right)[B.Eng.],
)

== #faPractice *Internship Experience*

#item([20XX.XX - 20XX.XX], [Example Tech Company - Infrastructure Team], align(right)[Backend / Infra])
Worked on the development and performance optimization of a core system, covering requirement analysis, solution design, implementation, deployment, and stability improvement.

+ Designed and implemented a refactoring plan for a key module, improving maintainability, extensibility, and iteration efficiency.

+ Optimized performance bottlenecks on critical paths using caching, asynchronous processing, batching, and other engineering techniques.

+ Improved monitoring, alerting, exception handling, and automated tests to enhance service stability and troubleshooting efficiency.

#item([20XX.XX - 20XX.XX], [Example Internet Company - Platform Engineering Team], align(right)[Backend Developer])
Participated in backend development for a platform service, including API design, data modeling, business workflow implementation, and online issue resolution.

+ Implemented core business APIs and admin capabilities to support end-to-end business workflows.

+ Participated in database schema design and query optimization to reduce latency and resource usage in complex scenarios.

+ Collaborated with product, frontend, and QA teams to deliver iterations, gray releases, bug fixes, and post-release reviews.

== #faWrench *Research Experience*

#research([20XX.XX], [Paper Title / Research Project], align(right)[Conference / Journal ｜ Author Order])
Conducted research in systems, algorithms, or applications. Add the research background, problem definition, and key contributions here.

+ Responsible for literature review, method design, experiment implementation, result analysis, and paper writing.

+ Add quantitative results, comparison experiments, open-source code, patents, or other research outputs here.

== #faOpenSource *Open Source Experience*

#item([20XX.XX - Present], [Open Source Project / GitHub Repository], align(right)[Contributor])
Maintained or contributed to open-source projects. Describe the project scope, tech stack, and personal contributions here.

+ Submitted feature PRs, fixed issues, or optimized core modules to improve performance, stability, or usability.

+ Improved documentation, tests, and examples to help new users onboard and enhance community collaboration.

== #faCode *Skills*

Solid computer science fundamentals and engineering experience. Replace the following placeholders with skills relevant to the target role.

+ *Programming & Engineering*: Python, C++, Go, Java, Linux, Git, CI/CD, and engineering best practices.

+ *Backend & Infrastructure*: Distributed systems, databases, caching, message queues, microservices, performance optimization, and reliability engineering.

+ *Algorithms & Systems*: Data structures and algorithms, operating systems, computer networks, machine learning fundamentals, and related project experience.
