#import "template.typ": *

#let faGraduationCap = icon("static/icons/graduation-cap.svg", size: 0.88em)
#let faPractice = icon("static/icons/briefcase-business.svg", size: 0.88em)
#let faWrench = icon("static/icons/flask-conical.svg", size: 0.88em)
#let faOpenSource = icon("static/icons/git-branch.svg", size: 0.88em)
#let faCode = icon("static/icons/cpu.svg", size: 0.88em)
#let themeColor = black

#show strong: it => {
  text(weight: "semibold", fill: themeColor, font: ("Songti SC", "Times New Roman"), it.body)
}

#show: resume.with(
  size: 10pt,
  themeColor: themeColor,
)[
  #info(
    color: themeColor,
    name: "候选人姓名",
    phone: "138-0000-0000",
    email: "candidate@example.com",
    github: "github.com/username",
    location: "目标城市",
    target_role: "目标岗位 / 方向",
    target_city: "目标城市",
  )
]

== #faGraduationCap *教育背景*

#education(
  "20XX.09 - 20XX.06",
  "某某大学",
  "计算机科学与技术",
  align(right)[硕士],
)

#education(
  "20XX.09 - 20XX.06",
  "某某大学",
  "软件工程",
  align(right)[学士],
)

== #faPractice *实习经历*

#item([20XX.XX - 20XX.XX], [某科技公司 - 基础架构团队], align(right)[后端 / Infra])
负责某核心系统的研发与性能优化，参与需求分析、方案设计、开发上线和稳定性治理。

+ 设计并落地某模块的重构方案，提升系统可维护性和扩展性，支持后续业务快速迭代。

+ 优化关键链路的性能瓶颈，通过缓存、异步化和批处理等方式降低平均响应耗时。

+ 完善监控告警、异常处理和自动化测试，提升线上服务稳定性和问题定位效率。

#item([20XX.XX - 20XX.XX], [某互联网公司 - 平台研发团队], align(right)[后端开发])
参与平台型服务的后端研发，负责接口设计、数据建模、业务流程实现和线上问题排查。

+ 实现核心业务接口和后台管理能力，支撑业务流程闭环和运营效率提升。

+ 参与数据库表结构设计和查询优化，降低复杂场景下的查询耗时和资源消耗。

+ 与产品、前端和测试协作推进版本迭代，完成灰度发布、问题修复和效果复盘。

== #faWrench *科研经历*

#research([20XX.XX], [论文标题 / 课题标题], align(right)[会议 / 期刊｜作者位次])
围绕系统、算法或应用方向开展研究，可在此补充论文背景、研究问题和核心贡献。

+ 负责文献调研、方法设计、实验实现、结果分析和论文撰写等工作。

+ 可补充实验指标、对比结果、开源代码、专利或其他科研产出。

== #faOpenSource *开源经历*

#item([20XX.XX - 至今], [开源项目 / GitHub 仓库], align(right)[Contributor])
参与开源项目维护或功能开发，可在此描述项目定位、技术栈和个人贡献。

+ 提交功能 PR、修复 Issue 或优化核心模块，提升项目性能、稳定性或易用性。

+ 完善文档、测试和示例，帮助新用户快速接入并提升社区协作效率。

== #faCode *专业技能*

具备扎实的计算机基础和工程实践能力，可根据目标岗位填写真实技能栈。

+ *编程语言与工程能力*: Python、C++、Go、Java、Linux、Git、CI/CD 与工程化实践。

+ *后端与基础架构*: 分布式系统、数据库、缓存、消息队列、微服务、性能优化与稳定性治理。

+ *算法与系统方向*: 数据结构与算法、操作系统、计算机网络、机器学习基础及相关项目经验。
