# Infrastructure

## Goal

1. Increase the reliability of services
2. Ensure compliance with international security standards
3. Reduce the chance of knowledge silos developing within teams

## Summary

Demonstrate understanding of:

1. Making a service Scalable
2. Making a service Highly Available
3. Principle of Least Privilege
4. Zero-downtime deployments

## Assessments

### Level 1

#### Brief

Be able to set up a highly available, internet facing web application.

#### Theory

1. What are IaaS, PaaS, and FaaS?
   1. For each of these; Discuss a scenario where the technology is appropriate
   2. For each of these; Discuss a scenario where the technology is not appropriate
2. What is the importance of having a highly available service?

#### Practical

You will be provided a Linux Container Image, though you can use your own if you wish.

- Run the image with your choice of IaaS.
- Make the service highly available
- Draw a diagram of your infrastructure
- Demonstrate that you can remove an instance, and your infrastructure will self heal
- Demonstrate that you can roll out a new deployment without causing any downtime.
  Use the provided [downtime detection script][downtime-script].


### Level 2
Be able to make secure cloud applications and services.

#### Brief

Resouces:
- http://progressivecoder.com/understanding-aws-security-groups-and-best-practices-to-use-them/
- https://www.jakoblell.com/blog/2013/08/13/quick-blind-tcp-connection-spoofing-with-syn-cookies/
- - no need to read this entire article ^ section V is relevent

#### Theory


There is a cloud-hosted public web server that talks to a backend API in a  private network. The private server's network allows the IP of the public server via a whitelist rule on its Firewall.

1. Explain what maintenance overhead IP Whitelisting adds for future developers?
2. Explain the security problems with using only IP Whitelisting for authentication? 
3. What are the benefits of investing in monitoring and alerting in software environments? 

#### Practical

- Create infrastructure as code project (e.g. terraform) that can setup and teardown the following:
  - 2 file storage buckets (or azure blob storage containers)
  - A new user with a set of access credentials that only has permission to retrieve (not list or modify) files in **one** bucket
  - Enable request monitoring on the bucket so that the assessor can get the number of HTTP GET requests made to bucket over time.

### Level 3

#### Brief

#### Theory

#### Practical

## Limitations

### Provider requirements

There are certain providers, usually PaaS only providers, that do not offer the
functionality we require for testing people on all the above aspects.

As such, we recommend avoiding solutions that hide:
 
- load balancing
- autoscaling
- networking rules (routing, Firewalls)

Providers that can definitely be used are:

- AWS
  - ECS with FARGATE is fine, though be prepared for increased theory work around deployment processes
  - Lambda is not recommended, as it hides a lot of networking rules, autoscaling, and deployment processes
  - Elastic Beanstalk is not allowed, as it does everything for you, but in a way that makes it hard to adapt after the fact.
- Azure
- GCP

## Appendix

### Downtime Script

```sh
target="<your endpoint>"
while :; do
 if (curl -m 1 "$target" &>/dev/null); then
   printf '.'
 else
   echo "target is down"
   break
 fi
 sleep 0.5
done
```

[downtime-script]: #downtime-script
