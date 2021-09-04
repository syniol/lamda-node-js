const { Main } = require('./functions/greeting')

exports.handler = async (event, context) => {
  return Main()
}
