notice $facts['os']

$facts['os'].slice(2) |$value| {
  notice "Value: ${value}"
}
