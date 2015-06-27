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

alpha = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

module.exports = (robot) ->

    robot.respond /fez (.*)/i, (msg) ->
        raw = msg.match[1].toLowerCase()
        fez = ""
        for i in [0..raw.length-1]
            unless raw[i] == " "
                if raw[i] in alpha
                    fez += ":fez-#{raw[i]}: "
            else
                fez += "  "
        msg.send fez
