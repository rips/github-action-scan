# RIPS Security Scan
This action performs a scan on your project located at `$GITHUB_WORKSPACE`.

## Usage
This example starts a new analysis and configures a security gateway that is triggered if there are more than 10 critical issues.

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

- The `application-id` can be found in the RIPS user interface.
- The `secrets` have to be configured in the repository settings ([GitHub documentation](https://help.github.com/en/actions/automating-your-workflow-with-github-actions/creating-and-using-encrypted-secrets)).
- The documentation for the `additiona-parameters` is located at: https://kb.ripstech.com/display/DOC/RIPS+CLI