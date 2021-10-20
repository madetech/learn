# Distributed communications scenario - Queues

## Goal

Set up a queuing mechanism to enable distributed services to communicate with each other within an organisation so they can remain (or become more) decoupled.

## The task

You are required to set up a queue in a cloud provider (let's assume AWS with SQS as a starting point).

The queue should:

* Be created and decomissioned via code
* Be updated by code to adjust properties such as message retention
* Have a mechanism to pick up messages
* Have a mechanism to remove a message from a queue once it has been processed

## Prerequisites

You will want some AWS creds for an account you can work in.

## Work

* Create a queue using infrastructure as code such as terraform
* Adjust the queue so that any messages older than 12 hours will be automatically deleted
* Send a test message to the queue
* Write something, maybe a script in your favourite language, to:
  * retrieve the test message from the queue
  * print the message body
  * remove the message from the queue
