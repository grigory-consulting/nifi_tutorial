$token = curl.exe -k -s -X POST "https://localhost:8443/nifi-api/access/token" `
      --data "username=admin&password=DEIN_PASSWORT"

  # Export
  curl.exe -k -s -H "Authorization: Bearer $token" `
      "https://localhost:8443/nifi-api/process-groups/$pgId/download?includeReferenced
  Services=true" `
      -o "flow_$pgId.json"
