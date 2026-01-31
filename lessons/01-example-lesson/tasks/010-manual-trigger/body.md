# Manual Trigger - Getting Started with OpenWeatherMap

## What is a Manual Trigger?

A Manual Trigger is a trigger that starts workflows manually when you click the execute button. It is primarily used for testing workflows during development or running one-time processes that need manual initiation.

## Task

Create a simple workflow with a Manual Trigger that calls the OpenWeatherMap API.

### Step-by-Step Guide

1. **Set up OpenWeatherMap Action Node**
   - Add an OpenWeatherMap Node to your canvas
   - Use the OpenWeatherMap credentials (already configured in your N8N environment)
   - Operation: Current Weather
   - Location: Berlin

2. **Add Manual Trigger**
   - Drag the Manual Trigger Node onto your canvas
   - Connect it to the OpenWeatherMap Node

3. **Execute Workflow**
   - Click the "Execute Workflow" button
   - Observe the output

4. **Analyze**
   - Look at the trigger settings
   - Examine the OpenWeatherMap Node output
   - What did you learn?

## Learning Objectives

- Understand how Manual Triggers work
- First steps with Action Nodes
- Analyze Node outputs
