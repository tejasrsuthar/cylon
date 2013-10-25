Cylon = require '..'

bots = [
  { name: 'Huey' },
  { name: 'Dewey' },
  { name: 'Louie' }
]

class ChattyRobot
  connection:
    name: 'loopback'
    adaptor: 'loopback'

  work: (me) ->
    every 1.seconds(), ->
      Logger.info me.name

for bot in bots
  robot = new ChattyRobot
  robot.name = bot.name
  Cylon.robot robot

Cylon.start()
