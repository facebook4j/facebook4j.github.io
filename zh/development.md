---
layout: default
title: 开发 - 使用Java编写的非常简洁易用的Facebook图谱API工具包
description: Facebook4J是开源的, Maven仓库管理. 你可以轻松使用Facebook4j进行Facebook图谱API开发
keywords: development,facebook4j
---
# 参与开发 {#join-development}

根据如下说明参与开发，提交你的代码.

1. 可以通过邮件提交问题[邮件列表](http://groups.google.com/group/facebook4j)，如果你不清楚是否这个问题已经提交，可以跳过这一步直接走第二步。

2. 通过JIRA提交问题，把问题提交到[JIRA](https://roundrop.atlassian.net/browse/FFJ)。

3. 直接修复，创建一个新的分支，但是需要保证如下：
* 代码需要符合[代码规范](#coding-convention)
* 修改的地方需要有JUnit测试
* 提交的分支需要有想起的Git的提交日志
* 新创建的需要有@author 标签和[证书条款](/en/index.html#license)

4. 创建Pull Request到Github[仓库](http://github.com/roundrop)

5. Pull Request被合并以后需要关闭Jira上面的提交记录。

# 代码规范 {#coding-convention}
代码尽可能的符合代码规范[Code Conventions for the Java(TM) Programming Language](http://www.oracle.com/technetwork/java/codeconvtoc-136057.html)和四个空格缩进。Facebook4J兼容1.5所以一些JAVA6+ API不支持。

# 问题管理 {#issue-management}
我们使用[JIRA](https://roundrop.atlassian.net/browse/FFJ)来记录我们的问题和Bug。  
[![JIRA](/images/jira.png)](https://roundrop.atlassian.net/browse/FFJ)  
运行在[Atlassian OnDemand](https://www.atlassian.com/en/software/ondemand/overview)上面。
[JIRA](https://roundrop.atlassian.net/browse/FFJ)为开源的Facebook4J.org提供了免费的版本。

# 持续集成 {#ci}
Facebook4J使用[Travis CI](https://travis-ci.org/roundrop/facebook4j/builds)做持续集成，通过[Coveralls](https://coveralls.io/r/roundrop/facebook4j)计算测试覆盖率。  
[![Travis CI](/images/travis-logo.jpg)](https://travis-ci.org/)
[![Coveralls](/images/coveralls-logo.jpg)](https://coveralls.io/)  

# 集成开发工具 {#ide}
Facebook4J是一个Maven工程，可以使用任何IDE导入，JetBrains为Facebook4J.org提供开源的许可证。任何贡献者都可以获得这个许可证继续共享Facebook4J，如果有需要请联系roundrop@gmail.com。