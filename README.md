# Spring Gradle Build Action

A composite action that combines the following steps:

* Set up a JDK with `actions/setup-java@v2`
* Set up a `user.name` system property with `spring-builds+github`
* Validate the Gradle wrapper using `gradle/wrapper-validation-action@v1`
* Set up Gradle using `gradle/gradle-build-action@v2` with `GRADLE_USER_HOME=~/.gradle`
* Perform a specified Gradle command (e.g. `./gradlew <task> <args>`)

Accepts the following inputs:

* `java-version` (Optional, defaults to `'17'`)
* `distribution` (Optional, defaults to `'temurin'`)
* `task` (Required)
* `args` (Optional, defaults to `''`)

## Installation

```yaml
- name: Spring Gradle Build Action
  uses: sjohnr/spring-gradle-build-action@v1
  with:
    java-version: '17'
    distribution: 'temurin'
    task: 'clean build'
    args: '--continue'
```
