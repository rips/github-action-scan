# RIPS Security Scan
[RIPS](https://www.ripstech.com) is a static code analysis solution to automatically find security issues in your code.
This action performs a security scan of your project's code located at `$GITHUB_WORKSPACE`.

## Usage
You can use the following configuration to start a new code analysis with RIPS and to add a security gate that fails vulnerable builds when, for example, more than 10 critical issues are detected.

```yaml
steps:
- uses: actions/checkout@v1
  with:
    fetch-depth: 1
- uses: rips/github-action-scan@v1
  env:
    RIPS_BASE_URI: "https://api-3.ripstech.com"
    RIPS_EMAIL: ${{ secrets.RIPS_EMAIL }}
    RIPS_PASSWORD: ${{ secrets.RIPS_PASSWORD }}
  with:
    application-id: 923
    additional-parameters: -t critical:10 
```

- The `application-id` can be found in the [RIPS user interface](https://kb.ripstech.com/doc/latest/user-guide/applications/application-overview).
- The `secrets` have to be configured in the repository settings ([GitHub documentation](https://help.github.com/en/actions/automating-your-workflow-with-github-actions/creating-and-using-encrypted-secrets)).
- The documentation for the `additional-parameters` is located at: https://kb.ripstech.com/display/DOC/RIPS+CLI