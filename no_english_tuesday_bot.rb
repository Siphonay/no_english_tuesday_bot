#!/usr/bin/env ruby
# coding: utf-8
# No English Tuesday Telegram bot
# Written in Ruby by Alexis « Siphonay » Viguié on the 12-03-2018
# Check the attached LICENSE file

# Loading the required gem
require 'telegram/bot'

# Exiting the program if no arguments are specified
abort "usage: #{PROGRAM_NAME}: [telegram API key]" unless ARGV

# Starting the bot
Telegram::Bot::Client.run(ARGV[0]) do |no_english_tuesday_bot|
  # Sending the "No English Tuesday" message and pin it
  no_english_tuesday_bot.api.pin_chat_message(
    chat_id: "@polyglotfurs",
    message_id:
      no_english_tuesday_bot.api.send_message(
      chat_id: "@polyglotfurs",
      text: "Today is No English Tuesday! This is the last allowed English message for the next 24 hours.")
    ["result"]["message_id"])
  # As the previous action was the only one, exit the loop
  break
end
