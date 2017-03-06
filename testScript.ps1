# Read the JSON payload from stdin
$jsonpayload = [Console]::In.ReadLine()

# Convert JSON to a string
$json = ConvertFrom-Json $jsonpayload
$foo = $json.foo
$bar = $json.bar

# Write-Error "Something went wrong"
# exit 1

# Write output to stdout
Write-Output "{ ""first"" : ""$foo"", ""second"" : ""$bar""}"