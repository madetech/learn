# Web server scenario

## Goal

Automate the creation of a web server, and provide a healthcheck script to verify the server is up and responding correctly.

## The Task

You are required to provision and deploy a new service in a cloud provider (let's assume AWS). It must:

* Be publicly accessible, but *only* on port 80.
* Run Nginx.
* Serve a `/version.txt` file, containing only static text representing a version number, for example:

```txt
1.0.6
```

## Prerequisites

You will want some AWS creds for an account you can work in.

## Work

* Bootstrap and provision the server however you wish. Use user-data or a configuration management tool (such as Puppet, Chef or Ansible). Alternatively launch an idempotent AMI with packer and terraform, or even via the console.

* Provide a heatlhcheck script that can be run externally to periodically check if the server is up and serving the expected version number.

* Alter the README to contain the steps required to:
  * Create the server.
  * Run the healthcheck script.

## Hints

If you want to run this exercise as time-boxed, these might shortcut the process by making it easier in the long-run so they might be worth considering before you start.

* Make the service resilient in 2 availability zones.
* Run Nginx inside a Docker container.
* Use the healthcheck script to start Nginx if it is not running.

    ```txt
    For example, you might decide to modify the script to SSH in to the instances and start if needed.
    Alternatively you might configure a process manager to use the script on the hosts themselves,
    such as supervisord or plain old systemd.
    ```
