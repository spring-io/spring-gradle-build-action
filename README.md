# Spring Gradle Build Action

A composite action that combines the following steps:

* Set up a JDK with `actions/setup-java@v3`
* Set up a `user.name` system property with `spring-builds+github`
* Validate the Gradle wrapper using `gradle/wrapper-validation-action@v1`
* Set up Gradle using `gradle/gradle-build-action@v2` with `GRADLE_USER_HOME=/home/runner/.gradle`

Accepts the following inputs:

* `java-version` (Optional, defaults to `'17'`)
* `distribution` (Optional, defaults to `'temurin'`)

## Installation

```yaml
- name: Spring Gradle Build Action
  uses: spring-io/spring-gradle-build-action@v1
  with:
    java-version: '17'
    distribution: 'temurin'
```

## Example Usage

```yaml
- uses: actions/checkout@v3
- uses: spring-io/spring-gradle-build-action@v1
- name: Run tests
  run: ./gradlew test
```