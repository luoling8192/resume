#import "style.typ": *

#show: resume

#section("简介", fa-info-circle)
全栈工程师，从前端开发起步，专注#text(fill: primary-color, weight: "bold")[云原生]和#text(fill: primary-color, weight: "bold")[Web3 基础设施]领域。深入掌握#text(fill: primary-color, weight: "bold")[Go 微服务开发]、#text(fill: primary-color, weight: "bold")[Kubernetes 集群管理]以及#text(fill: primary-color, weight: "bold")[区块链节点运维]，同时对 LLM 与 AI Agent 等前沿技术有深入研究。

具备端到端的全链路开发能力，能独立完成从前端界面到后端微服务的完整系统设计。专长于#text(fill: primary-color, weight: "bold")[高性能 Go 服务开发]、#text(fill: primary-color, weight: "bold")[云原生架构设计]和#text(fill: primary-color, weight: "bold")[Web3 基础设施建设]。在多个项目中负责微服务架构设计、高可用性方案制定、数据持久化方案选型，以及基于云服务的成本优化工作。

在 DevOps 实践中，设计并实现了基于 Kubernetes 的#text(fill: primary-color, weight: "bold")[区块链节点管理平台]，支持多链节点的自动化部署与运维，实现系统可用性 99.99%。同时构建了完整的 CI/CD 流水线和监控告警体系，确保服务稳定性。

热衷技术创新与实践，在 Web3、云原生和 AI 领域持续探索。善于快速掌握并整合新技术，致力于打造高可靠、可扩展的企业级解决方案。

#section("技能", fa-wrench)
#skills([
  [后端开发, "Go (1.20+), 微服务架构, gRPC / REST API, 分布式系统设计"],
  [技术栈, "Echo · Fx · Ent, Kafka · Redis, PostgreSQL, TypeScript · Python"],
  [云原生, "Kubernetes, Docker, AWS, CI/CD"],
  [可观测性, "Prometheus, Grafana, OpenTelemetry, ELK"],
  [全栈开发, "Vue3 / React, Vite · Pinia, Serverless, Monorepo"]
])

#section("工作经历", fa-briefcase)
#job("Go 高级开发工程师", "八位猫", "上海", "2024.06 - 至今", [
  #text(weight: "bold", fill: primary-color)[区块链基础设施与微服务架构]
  #list(
    marker: text(fill: primary-color, weight: "bold")[•],
    [主导区块链基础设施建设，基于 Kubernetes 构建高可用多链节点集群，支持 Ethereum、Astar 等主流公链，通过多可用区部署与自动故障转移，实现系统可用性 99.99%],
    [设计三层立体化告警机制，包括服务主动告警、日志智能分析及 K8s 健康检查，配合自动化运维脚本，将故障平均恢复时间（MTTR）优化至 5 分钟以内],
    [优化跨语言 RPC 工作流，设计基于 GitHub Actions 的 Protobuf 自动化生成与同步方案，显著提升团队协作效率，降低接口维护成本],
    [推行测试驱动开发（TDD），构建完整测试工具链，包括数据库与缓存 Mock 框架，实现核心业务 95% 测试覆盖率，生产环境故障率降低 70%]
  )
  
  #v(8pt)
  #text(weight: "bold", fill: primary-color)[分布式事件处理系统]
  #list(
    marker: text(fill: primary-color, weight: "bold")[•],
    [设计高性能分布式队列中间件，基于 Fx 依赖注入与 Echo 框架，结合 Kafka 消息队列和 Redis 分布式缓存，实现可靠的事件处理，支撑日均百万级交易规模],
    [实现智能数据分片与多级缓存策略，优化查询性能提升 5 倍，将平均响应时间控制在 50ms 以内，大幅提升用户体验],
    [深度整合 OpenTelemetry 可观测性框架，实现全链路追踪与性能监控，配合 Swagger 自动化文档，研发效率提升 60%],
    [打造灵活的动态管理平台，支持 RBAC 权限控制与低代码表单配置，降低系统维护成本，提升业务响应效率],
    [构建端到端 DevOps 系统，实现从代码提交到生产部署的全流程自动化，通过金丝雀发布与自动回滚确保系统稳定性达 99.9%]
  )
])

#section("项目经历", fa-code)
#project("Guii.AI", "后端负责人", "https://guii.ai", "2024.07 - 2024.12", "HonoJS, Supabase, PostgreSQL, Redis, Drizzle, OpenRouter", 
  list(
    marker: text(fill: primary-color, weight: "bold")[•],
    [一款 AI 驱动的前端开发工具，支持自然语言生成与调整界面，覆盖原型设计到细节优化的全流程],
    [创新实现页面元素的选择与编辑功能，无需 IDE 集成即可无缝嵌入现有开发工具链，提升开发灵活性],
    [在 2024 年 AdventureX 黑客松中荣获主题赛道一等奖及三项其他赛道一等奖，验证了技术与产品实力],
    [作为后端核心开发者，负责提示词引擎、工作流系统及 Agent 编排的设计与实现，确保系统高效运行]
  )
)

#project("PortForwardGo", "前端负责人", "https://portforward.zeroteam.top", "2024.02 - 2024.05", "Vue3, Vite, NaiveUI, TailwindCSS, Pinia, ECharts",
  list(
    marker: text(fill: primary-color, weight: "bold")[•],
    [开发高性能流量转发管理平台，支持多协议转发与负载均衡，日活跃用户超 3000],
    [设计模块化组件系统，实现动态界面生成，开发效率提升 70%，维护成本大幅降低],
    [基于 Vue3 构建现代化前端架构，集成 Pinia 状态管理、多渠道支付及实时数据可视化功能]
  )
)

#section("开源经历", fa-github)
#opensource("Telegram Search", "独立开发", "200+", "https://github.com/luoling8192/tg-search", "2025.02 - 至今", "PgVector, PostgreSQL",
  list(
    marker: text(fill: primary-color, weight: "bold")[•],
    [基于 pgvector 向量数据库实现分表存储，支持多种 Embedding 模型的高效语义检索],
    [设计 Adapter 架构，支持多账号及 IM 平台对接，具备灵活扩展性与统一管理能力],
    [实现动态表分片与自动扩容，单表支持千万级向量数据的高性能检索，满足大规模场景需求]
  )
)

#opensource("Icalingua++", "前端核心开发", "3.4k+", "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus", "2021.08 - 2021.10", "Vue, Electron, SocketIO, FFmpeg",
  list(
    marker: text(fill: primary-color, weight: "bold")[•],
    [深度集成 QQ 协议，优化多媒体处理流程，基于 FFmpeg 实现高效音视频转码与实时预览],
    [设计高可用 Bridge 中间件，支持分布式部署与负载均衡，确保消息同步的可靠性与持久化],
    [构建可扩展插件生态，提供丰富 API 接口，支持自定义脚本、界面样式及主题定制]
  )
)

#section("其他项目", fa-folder)
#list(
  marker: text(fill: primary-color, weight: "bold")[•],
  [#text(weight: "bold")[Airi-Minecraft] (2025.01): 开发基于大语言模型的智能 Minecraft 机器人，支持自然语言指令解析与玩家实时交互，实现任务规划与环境自适应。#link("https://github.com/moeru-ai/airi-minecraft")[#text(fill: primary-color, size: 9pt)[#fa-link()]]],
  [#text(weight: "bold")[ClassTools] (2022.05): 设计并实现班级信息管理系统，集成高考倒计时、作业管理、课程表及值日生排班功能，提供动态壁纸展示界面。#link("https://github.com/luoling8192/ClassTools")[#text(fill: primary-color, size: 9pt)[#fa-link()]]]
)

#section("获奖经历", fa-award)
#list(
  marker: text(fill: primary-color, weight: "bold")[•],
  [2024.08: AI.DEA 人工智能创新应用大赛 #text(weight: "bold")[一等奖] #link("https://www.bilibili.com/video/BV1WtHQewEu4")[#text(fill: primary-color, size: 9pt)[#fa-link()]]],
  [2024.07: AdvantureX 黑客松 #text(weight: "bold")[一等奖] #link("https://github.com/guiiai/guii-devtools")[#text(fill: primary-color, size: 9pt)[#fa-link()]]],
  [2020.12: NOIP 全国青少年信息学奥林匹克竞赛联赛 #text(weight: "bold")[三等奖] #link("https://www.noi.cn")[#text(fill: primary-color, size: 9pt)[#fa-link()]]]
)
