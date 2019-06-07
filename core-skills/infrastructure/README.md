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
- Demonstrate that you can remove an instance without causing any downtime.
  A [script][downtime-script] has been provided for your convenience


### Level 2

#### Brief

#### Theory

#### Practical

### Level 3

#### Brief

#### Theory

#### Practical


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
