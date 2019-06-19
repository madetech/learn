# Turnstile 

## Finite State Machines

If you've never encountered finite state machine (FSM) modelling before, here is what it looks like.

The following state machine is comprised of two states: "State 1" and "State 2". There is a single event "event_name" that can take the state machine from State 1 to State 2.

![Image of a Basic State Machine](http://yuml.me/diagram/plain/activity/(State 1)-event_name>(State 2))

One use case of FSMs is User Interface logic, consider the following:

![Image of a Menu FSM](https://yuml.me/diagram/plain;dir:LR/activity/(MenuOpen)-open%3E(MenuClosed),%20(MenuOpen)-open%3E(MenuOpen),%20(MenuClosed)-close%3E(MenuOpen),%20(MenuClosed)-close%3E(MenuClosed))

Each event of the finite state machine can be bound to application methods e.g.

![Image with methods](https://yuml.me/diagram/plain/activity/(MenuOpen)-open[show]&gt;(MenuClosed),%20(MenuOpen)-open[nil]&gt;(MenuOpen),%20(MenuClosed)-close[hide]&gt;(MenuOpen),%20(MenuClosed)-close[nil]&gt;(MenuClosed))

## The Kata

Build a finite state machine from scratch, that replicates the following Finite State Machine

![Turnstile FSM](https://yuml.me/diagram/plain;dir:LR/activity/(Locked)-coin[unlock]%3E(Unlocked),%20(Unlocked)-pass[lock]%3E(Locked),%20(Unlocked)-pass[alarm]%3E(Unlocked),%20(Locked)-coin[thanks]%3E(Locked))

Once you have completed that, continue on to part 2 (remember the point is to learn about the impact of changing requirements, so no peeking!) [you can find part 2 here](./part2.md)
