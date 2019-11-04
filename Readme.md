#RIPS Security Scan
This action performs a scan on your project located at `$GITHUB_WORKSPACE`.

##Usage
This example starts a scan, which a security gateway, that is triggered if there are more than 10 critical issues.

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
> - The `application-id` could be found in the RIPS UI.
> - The `secrets` have to be configured in the repository settings.
> - The documentation for the `additiona-parameters` is located at: https://kb.ripstech.com/display/DOC/RIPS+CLI