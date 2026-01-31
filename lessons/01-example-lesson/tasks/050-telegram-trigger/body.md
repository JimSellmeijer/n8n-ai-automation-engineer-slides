# Telegram Trigger - Telegram Weather Bot

## What is a Telegram Trigger?

A Telegram Trigger is specifically designed to listen for messages, commands, and interactions in Telegram chats and channels. It enables the creation of full-featured Telegram bots.

## Why Telegram Trigger?

Create Telegram bots that can:
- Respond to user commands
- Monitor group activities
- Integrate Telegram with other business systems
- Provide automated responses

## Task

Create a Telegram bot that accepts a city as input and returns the weather forecast.

### Step-by-Step Guide

1. **Create Telegram Bot**
   - Open Telegram and search for `@BotFather`
   - Send `/newbot` and follow the instructions
   - Choose a name for your bot
   - Copy the bot token you receive

2. **Configure Telegram Trigger**
   - Add a Telegram Trigger Node to your workflow
   - Create new credentials with your bot token
   - Select "Updates: Message" as the trigger event

3. **Process Message**
   - The user message is available at `{{ $json.message.text }}`
   - Extract the city from the message

4. **Call OpenWeatherMap**
   - Add the OpenWeatherMap Node
   - Use the OpenWeatherMap credentials (already configured in your N8N environment)
   - Operation: Current Weather
   - Location: `{{ $json.message.text }}`

5. **Send Response to Telegram**
   - Add a Telegram Node (Action)
   - Operation: Send Message
   - Chat ID: `{{ $json.message.chat.id }}`
   - Text: Format the weather data as a readable message

6. **Test Bot**
   - Activate the workflow
   - Open Telegram and chat with your bot
   - Send a city name and receive the weather forecast

## Learning Objectives

- Create Telegram bots with BotFather
- Configure Telegram Triggers
- Receive and process messages
- Send responses to Telegram
- Understand Telegram Chat IDs
