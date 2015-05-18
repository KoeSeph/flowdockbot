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

  robot.hear /!macromania/i, (res) ->
    res.send "working on it ;)"

  #robot.hear /:(/i, (res) ->
  #  nosad = ['Dont be sad! I am here for you :)', 'turn that frown into a crown! you are a ruler in my robot eyes :)', 'my mother told me that sad people are less likely to be happy. So please no sad.', 'Stop being sad kthanxbye.']
  #  res.send res.random nosad

  # robot.respond /what day is it?/i, (res) ->
  #   today = new Date()
  #   dd = today.getDate()
  #   mm = today.getMonth() + 1 
  #   yyyy = today.getFullYear()

  #   dd < 10 ?
  #     dd = '0' + dd

  #   mm < 10?
  #     mm = '0' + mm

  #   today = mm+'/'+dd+'/'+yyyy
  #   res.send today 

  robot.hear /c (.*)/i, (res) ->
    data = res.match[1].trim()
    c.write(data, (c) => res.send(c.message))

  robot.hear /badger/i, (res) ->
    res.send "Badgers? BADGERS? WE DON'T NEED NO STINKIN BADGERS"

  robot.respond /what is your name?|what's your name?/i, (res) ->
    res.send "Yes. I have one."

  robot.respond /fortune cookie/i, (res) ->
    cookie = ["People are naturally attracted to you.", "You learn from your mistakes... You will learn a lot today.", 
    "If you have something good in your life, don't let it go!", "What ever you're goal is in life, embrace it visualize it, and for it will be yours.", 
    "Your shoes will make you happy today.", "You cannot love life until you live the life you love.", "Be on the lookout for coming events; They cast their shadows beforehand.", 
    "Land is always on the mind of a flying bird.", "The man or woman you desire feels the same about you.", "Meeting adversity well is the source of your strength.", 
    "A dream you have will come true.", "Our deeds determine us, as much as we determine our deeds.", "Never give up. You're not a failure if you don't give up.",
    "You will become great if you believe in yourself.", "There is no greater pleasure than seeing your loved ones prosper.", "You will marry your lover.", 
    "A very attractive person has a message for you.", "You already know the answer to the questions lingering inside your head.", 
    "It is now, and in this world, that we must live.", "You must try, or hate yourself for not trying.", "You can make your own happiness.", 
    "The greatest risk is not taking one.", "The love of your life is stepping into your planet this summer.", "Love can last a lifetime, if you want it to.",
    "Adversity is the parent of virtue." ,"Serious trouble will bypass you.", "A short stranger will soon enter your life with blessings to share.", "Now is the time to try something new." ,
    "Wealth awaits you very soon", "If you feel you are right, stand firmly by your convictions.", "If winter comes, can spring be far behind?" ,
    "Keep your eye out for someone special." , "You are very talented in many ways." , "A stranger, is a friend you have not spoken to yet." ,
    "A new voyage will fill your life with untold memories." , "You will travel to many exotic places in your lifetime." ,"Your ability for accomplishment will follow with success.", 
    "Nothing astonishes men so much as common sense and plain dealing." , "Its amazing how much good you can do if you dont care who gets the credit." ,
    "Everyone agrees. You are the best.", "LIFE CONSIST NOT IN HOLDING GOOD CARDS, BUT IN PLAYING THOSE YOU HOLD WELL.", 
    "Jealousy doesn't open doors, it closes them!", "It's better to be alone sometimes.", "When fear hurts you, conquer it and defeat it!", 
    "Let the deeds speak.", "You will be called in to fulfill a position of high honor and responsibility.", "The man on the top of the mountain did not fall there.", 
    "You will conquer obstacles to achieve success.", "Joys are often the shadows, cast by sorrows.", "Fortune favors the brave."]
    res.send res.random cookie

  robot.respond /do you love (.*)\??/i, (res) ->
    loveme = [ "yes i love you" , "no but your mom does" , 
    " Maybe still thinking about it"," do you love me", "i love what comes with you" ,
    " no im starting to though" , " yes and im in love with you" , "what is love" , 
    " tell me what love is first then ill tell you"] 
    res.send res.random loveme

  robot.hear /@yeng/i, (res) ->
    res.send "@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng"

  robot.hear /what's your favorite color?|what is your favorite color?/i, (res) ->
    colorsofthewind = ["AliceBlue","AntiqueWhite","Aqua","Aquamarine","Azure","Beige",
    "Bisque","Black","BlanchedAlmond","Blue","BlueViolet","Brown","BurlyWood","CadetBlue",
    "Chartreuse","Chocolate","Coral","CornflowerBlue","Cornsilk","Crimson","Cyan",
    "DarkBlue","DarkCyan","DarkGoldenRod","DarkGray","DarkGrey","DarkGreen","DarkKhaki",
    "DarkMagenta","DarkOliveGreen","Darkorange","DarkOrchid","DarkRed","DarkSalmon",
    "DarkSeaGreen","DarkSlateBlue","DarkSlateGray","DarkSlateGrey","DarkTurquoise",
    "DarkViolet","DeepPink","DeepSkyBlue","DimGray","DimGrey","DodgerBlue","FireBrick",
    "FloralWhite","ForestGreen","Fuchsia","Gainsboro","GhostWhite","Gold","GoldenRod",
    "Gray","Grey","Green","GreenYellow","HoneyDew","HotPink","IndianRed","Indigo",
    "Ivory","Khaki","Lavender","LavenderBlush","LawnGreen","LemonChiffon","LightBlue",
    "LightCoral","LightCyan","LightGoldenRodYellow","LightGray","LightGrey","LightGreen",
    "LightPink","LightSalmon","LightSeaGreen","LightSkyBlue","LightSlateGray","LightSlateGrey",
    "LightSteelBlue","LightYellow","Lime","LimeGreen","Linen","Magenta","Maroon",
    "MediumAquaMarine","MediumBlue","MediumOrchid","MediumPurple","MediumSeaGreen",
    "MediumSlateBlue","MediumSpringGreen","MediumTurquoise","MediumVioletRed",
    "MidnightBlue","MintCream","MistyRose","Moccasin","NavajoWhite","Navy",
    "OldLace","Olive","OliveDrab","Orange","OrangeRed","Orchid","PaleGoldenRod",
    "PaleGreen","PaleTurquoise","PaleVioletRed","PapayaWhip","PeachPuff","Peru",
    "Pink","Plum","PowderBlue","Purple","Red","RosyBrown","RoyalBlue","SaddleBrown",
    "Salmon","SandyBrown","SeaGreen","SeaShell","Sienna","Silver","SkyBlue","SlateBlue",
    "SlateGray","SlateGrey","Snow","SpringGreen","SteelBlue","Tan","Teal","Thistle","Tomato",
    "Turquoise","Violet","Wheat","White","WhiteSmoke","Yellow","YellowGreen"]
    res.send res.random colorsofthewind

  robot.hear /@francisco/i, (res) ->
    res.send "@francisco!!! someone is calling for you! @francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco@francisco"

  robot.hear /cityslickers|city slickers/i,(res) ->
    res.send "How Well Do You Know YOUR city?"

  robot.hear /baggers/i, (res) ->
    res.send "that's not how you spell it..."

  robot.hear /help me please/i, (res) ->
    res.send "ok"

  robot.hear /problem\??/i, (res) ->
    res.send "http://cl.ly/BG7R/trollface.jpg"

  robot.hear /@everyone/i, (res) ->
    res.send "HEY @everyone listen up!!!"

  robot.hear /what do you think of (.*)\??|do you like (.*)\??/i, (res) ->
    niceness = ['it is lovely', 'I love it!', 'AMAZING!', 'WHOAH MAN TOO COOL', '3Legit5Me', 
    'If I was not a robot, I would marry it', 'that is too amazing', 'Best ever!', 
    'I think @erica would love it!', 'I am not sure. What do you think @yeng ?', 
    'maybe @elizabeth will want to see it!', 'holy chicken fingers. @everyone has to see this.']
    res.send res.random niceness

  robot.respond /do you (.*)\?|are you (.*)\?/i, (res) ->
    doEye = ['no', 'do you?', 'yes', 'pizza', 'potatoes', 'peanuts','maybe',  'Dude I am a robot. Beep Boop. I have no idea what I am doing.',
    'If you dont mind.','@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng@yeng']
    res.send res.random doEye

  robot.respond /(image|img|show)( me)? (.*)/i, (res) ->
    imagery = res.match[3]
    images = []
    res.http('http://ajax.googleapis.com/ajax/services/search/images')
      .query(v: "1.0", rsz: '8', q: imagery)
      .get() (err, res, body) ->
       images = JSON.parse(body)
       robot.logger.error(images)
       images = images.responseData.results
       robot.logger images
    res.send res.random images

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

  robot.hear /who wants to (.*)/i, (res) ->
    wantto = ['MEMEMEME pick Me!', 'Not me. Not feelin it.', 'I can try!', 
    'I think @yeng should do it', 'I think @erica would LOVE to!', 
    '@elizabeth obviously wants to do it...', 'why not @victoria?', 
    'Maybe @francisco?', 'duh']
    res.send res.random wantto

  annoyIntervalId = null

  robot.respond /annoy me/, (res) ->
    if annoyIntervalId
      res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH @yeng"
      return

    res.send "Hey, want to hear the most annoying sound in the world?"
    annoyIntervalId = setInterval () ->
      res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH @yeng"
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
    robot.logger.error(err)
    robot.logger.error(res)

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

  # robot.respond /(.*)/i, (res) ->
  #   res.send "I do not know what to say to that"


