
# Authenticate
cd /Users/karbing/dev/KARBPROTON_GITHUB_ORG_REPOS/wiz-shift-left-iac_demo
./wizcli auth --id <client_id> --secret <client_secret>

# Local test run
cd /Users/karbing/dev/KARBPROTON_GITHUB_ORG_REPOS/wiz-shift-left-iac_demo

POLICY='Default IaC policy,secrets'
SCAN_PATH='.'
PROJECT='7422b0bb-b8b0-57a7-ac7f-08c39f865c3a'

~/dev/wizcli iac scan --path "${SCAN_PATH}" --policy "${POLICY}" --project "${PROJECT}"

# Result 
Local: terminal
Wiz: csaprod - Reports
