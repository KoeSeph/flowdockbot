# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md
cleverbot = require('cleverbot-node')


module.exports = (robot) ->
  c = new cleverbot()

  robot.hear /c (.*)/i, (msg) ->
    data = msg.match[1].trim()
    c.write(data, (c) => msg.send(c.message))

  robot.hear /badger/i, (res) ->
    res.send "Badgers? BADGERS? WE DON'T NEED NO STINKIN BADGERS"

  robot.hear /@yeng/i, (res) ->
    res.send "@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng"

  robot.hear /@francisco/i, (res) ->
    res.send "@francisco!!! someone is calling for you! @francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco"

  robot.hear /cityslickers|city slickers/i,(res) ->
    res.send "How Well Do You Know YOUR city?"

  robot.hear /baggers/i, (res) ->
    res.send "that's not how you spell it..."

  robot.hear /help me please/i, (res) ->
    res.send "ok"

  robot.hear /problem\??/i, (msg) ->
    msg.send "http://cl.ly/BG7R/trollface.jpg"

  robot.hear /what do you think of (.*)\??/i, (res) ->
    niceness = ['it is lovely', 'I love it!', 'AMAZING!', 'WHOAH MAN TOO COOL', '3Legit5Me', 'If I was not a robot, I would marry it', 'that is too amazing', 'Best ever!']
    res.send res.random niceness

  robot.respond /(image|img)( me)? (.*)/i, (msg) ->
    imagery = msg.match[3]
    msg.http('http://ajax.googleapis.com/ajax/services/search/images')
      .query(v: "1.0", rsz: '8', q: query)
      .get() (err, res, body) ->
      images = JSON.parse(body)
      images = images.responseData.results
      msg.send msg.random images

  robot.respond /open the (.*) doors/i, (res) ->
    doorType = res.match[1]
    if doorType is "pod bay"
      res.reply "I'm afraid I can't let you do that."
    else
      res.reply "Opening #{doorType} doors"

  robot.hear /I like pie/i, (res) ->
    res.emote "makes a freshly baked pie"

  lulz = ['lol', 'rofl', 'lmao']

  robot.respond /lulz/i, (res) ->
    res.send res.random lulz

  robot.topic (res) ->
    res.send "#{res.message.text}? That's a Paddlin'"


  enterReplies = ['Hi', 'Target Acquired', 'Firing', 'Hello friend.', 'Gotcha', 'I see you']
  leaveReplies = ['Are you still there?', 'Target lost', 'Searching']

  robot.enter (res) ->
    res.send res.random enterReplies
  robot.leave (res) ->
    res.send res.random leaveReplies

  answer = process.env.HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING

  robot.respond /what is the answer to the ultimate question of life/, (res) ->
    unless answer?
      res.send "Missing HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING in environment: please set and try again"
      return
    res.send "#{answer}, but what is the question?"

  robot.respond /you are a little slow/, (res) ->
    setTimeout () ->
      res.send "Who you calling 'slow'?"
    , 60 * 1000

  annoyIntervalId = null

  robot.respond /annoy me/, (res) ->
    if annoyIntervalId
      res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
      return

    res.send "Hey, want to hear the most annoying sound in the world?"
    annoyIntervalId = setInterval () ->
      res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
    , 1000

  robot.respond /unannoy me/, (res) ->
    if annoyIntervalId
      res.send "GUYS, GUYS, GUYS!"
      clearInterval(annoyIntervalId)
      annoyIntervalId = null
    else
      res.send "Not annoying you right now, am I?"


  robot.router.post '/hubot/chatsecrets/:room', (req, res) ->
    room   = req.params.room
    data   = JSON.parse req.body.payload
    secret = data.secret

    robot.messageRoom room, "I have a secret: #{secret}"

    res.send 'OK'

  robot.error (err, res) ->
    robot.logger.error "DOES NOT COMPUTE"

    if res?
      res.reply "DOES NOT COMPUTE"

  robot.respond /have a soda/i, (res) ->
    # Get number of sodas had (coerced to a number).
    sodasHad = robot.brain.get('totalSodas') * 1 or 0

    if sodasHad > 4
      res.reply "I'm too fizzy.."

    else
      res.reply 'Sure!'

      robot.brain.set 'totalSodas', sodasHad+1

  robot.respond /sleep it off/i, (res) ->
    robot.brain.set 'totalSodas', 0
    res.reply 'zzzzz'
