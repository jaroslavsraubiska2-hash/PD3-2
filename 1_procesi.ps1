$doc = [Environment]::GetFolderPath("MyDocuments")
$processes = Get-Process | Where-Object {$_.WorkingSet -gt 50MB -and $_.Name -ne"msedge"} \ Select Name, Id, WorkingSet

if ($processes)