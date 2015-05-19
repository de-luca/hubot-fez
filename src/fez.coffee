# Description:
#   Translate your sentences in "FEZIAN"
#   This is for Slack using the Slack-FEZ-Emoji
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot fez <your sentences>
#
# Author:
#   Bastien de Luca <dev@de-luca.io>

module.exports = (robot) ->

    robot.respond /fez (.*)/i, (msg) ->
        raw = msg.match[1]
        fez = ""
        for i in [0..raw.length-1]
            unless raw[i] == " "
                fez += ":fez-#{raw[i]}:"
            else
                fez += raw[i]
        msg.send fez
