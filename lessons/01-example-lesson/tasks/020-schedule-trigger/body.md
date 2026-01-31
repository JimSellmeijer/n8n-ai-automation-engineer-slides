# Schedule Trigger - Automatic Weather Queries

## What is a Schedule Trigger?

A Schedule Trigger automatically starts workflows at specified times or intervals using cron expressions. It is perfect for recurring tasks like daily reports, weekly backups, or periodic data synchronizations.

## Why Schedule Trigger?

Automate recurring tasks without manual intervention. Ideal for:
- Daily reports
- Weekly backups
- Periodic data queries
- Regular synchronizations

## Task

Create a workflow that automatically calls the OpenWeatherMap API every minute.

### Step-by-Step Guide

1. **Create New Workflow**
   - Create a new, empty workflow

2. **Configure Schedule Trigger**
   - Add a Schedule Trigger Node
   - Select "Every Minute" or configure a cron expression
   - For every minute: `* * * * *`

3. **Add OpenWeatherMap Node**
   - Add the OpenWeatherMap Node
   - Use the OpenWeatherMap credentials (already configured in your N8N environment)
   - Operation: Current Weather
   - Location: Berlin (or a city of your choice)

4. **Activate Workflow**
   - Connect the nodes
   - Activate the workflow with the toggle in the top right
   - Wait one minute and check the executions

## Learning Objectives

- Configure Schedule Triggers
- Understand cron expressions
- Activate workflows and monitor executions
