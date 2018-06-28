# Testing remote services

A remote services is any cross process communication.  Let’s look at some examples:

* MySQL
* A Solidus API
* S3

In each case you want to be able to test that your communication with this remote service is set up correctly.  However your approach to each will likely be very different.

### Running your tests against the service 

Your MySQL integration will usually be tested by running a copy of MySQL configured as closely to your production instance as possible.

A Solidus API could be tested similarly, this would require setting up the Rails server + MySQL backend.  As remote services get more complex, the cost of booting up the service gets more expensive and therefore more unattractive.

Another approach to testing against the real service would be to use the production instance but authenticating a different user, say with S3.

### Running your tests against a simulator

In some instances it may be impossible or impractical to run your tests against the real service, in which case there are number of simulation options available.

* WebMock
* VCR

Simulators are designed to allow you to easily configure how the remote service will respond in a test.  This can be very attractive when the remote service you want to test is hard to get it a specified state, e.g. creating Solidus orders.

## Reading Material

* [How to Stub External Services in Tests - Harlow Ward](https://robots.thoughtbot.com/how-to-stub-external-services-in-tests)

## Marking Scheme

* Can explain benefits of the different ways of testing remote services.
* Can implement an appropriate method of testing a remote service.

## Other Notes

Strategies for other types of protocols e.g. AMQP, RADIUS, UDP-packets? 

Can explain what testing technique they would recommend to use for a remote service.

