variable "someString" {}

# Call Powershell.exe and pass in 'foo' and 'bar'
data "external" "powershell_test" {
  program = ["Powershell.exe", "./testScript.ps1"]

  query = {
    foo = "${var.someString}"
    bar = "Hardcoded"
  }
}

output "firstValue" {
  value = "${data.external.powershell_test.result.first}"
}

output "secondValue" {
  value = "${data.external.powershell_test.result.second}"
}
