function greet() {
  return 'Hello from Syniol'
}

function Main() {
  return {
    statusCode: 200,
    body: greet(),
  }
}

module.exports = {
  Main: Main,
}
