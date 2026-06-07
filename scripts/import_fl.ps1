$token = curl.exe -k -s --resolve "localhost:8443:$mac" -X POST
  "https://localhost:8443/nifi-api/access/token" --data
  "username=admin&password=$pass"

  if (-not $token) { Write-Host "Login fehlgeschlagen - kein Token"; exit 1 }
  Write-Host "Token-Laenge: $($token.Length)"

  $opts = @(
    "-k","-s"
    "--resolve","localhost:8443:$mac"
    "-H","Authorization: Bearer $token"
    "-F","id=$root"
    "-F","groupName=Uebung 1 (import)"
    "-F","positionX=100"
    "-F","positionY=100"
    "-F","clientId=vm-cli"
    "-F","file=@flow_uebung1.json;type=application/json"
    "https://localhost:8443/nifi-api/process-groups/$root/process-groups/upload"
  )
  $result = curl.exe @opts
  Write-Host $result
