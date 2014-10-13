---
layout: default
title: Development | Facebook4J - A most easily usable Facebook API wrapper in Java
description: Facebook4J - Development
keywords: development,facebook4j
---
# Join the development {#join-development}

To contribute your code, follow the instructions below.

1. Report to the mailing list
Report the bug, or the feature request to [the mailing list](http://groups.google.com/group/facebook4j) . If you are sure that the issue is not a known or a duplicated one, you can skip this step and go to step 2.

2. Submit the issue
Submit the issue to [JIRA](https://roundrop.atlassian.net/browse/FFJ) .

3. Fix it
Fix the source code accordingly in a branch named FFJ-XXX. Make sure that:
* The code meets the [coding convention](#coding-convention)
* JUnit test case is included in the change
* The issue# (FFJ-***) is included in the commit log
* newly created files contain @author tag and [the terms of license](/en/index.html#license)

4. Send a pull request
Send a pull request to [the upstream repository](http://github.com/roundrop)

5. Merge and close
The Jira issue will be closed once the pull request was merged and all test cases were passed.

# Coding convention {#coding-convention}
Source code need to respect [Code Conventions for the Java(TM) Programming Language](http://www.oracle.com/technetwork/java/codeconvtoc-136057.html) as much as possible. And indentation is four spaces.  
Use of APIs introduced at Java 6+ is not allowed since Facebook4J is desigined to be compatible with Java 5.

# Issue management {#issue-management}
Atlassian supports our efforts by contributing their bug tracking and issue tracking application, [JIRA](https://roundrop.atlassian.net/browse/FFJ) , to our project.  
[![JIRA](/images/jira.png)](https://roundrop.atlassian.net/browse/FFJ)  
Running on [Atlassian OnDemand](https://www.atlassian.com/en/software/ondemand/overview) .  
Atlassian is offering an Open Source Project License of Atlassian OnDemand to Facebook4J.org.

# Continuous Integration {#ci}
Facebook4J is built continuously by [Travis CI](https://travis-ci.org/roundrop/facebook4j/builds) .  
And get the great coverage reporting via [Coveralls](https://coveralls.io/r/roundrop/facebook4j).  
[![Travis CI](/images/travis-logo.jpg)](https://travis-ci.org/)
[![Coveralls](/images/coveralls-logo.jpg)](https://coveralls.io/)  

# IDE {#ide}
Facebook4J is a Mavenized project and you can use any IDE to play with Facebook4J. JetBrains is offering an Open Source Project License of IntelliJ IDEA to Facebook4J.org. Anyone who has contributed a patch can get access to the license file for improving Facebook4J. Please ask roundrop@gmail.com for more information.
