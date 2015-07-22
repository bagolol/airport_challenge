Airport Challenge
=================

Project
-----

We have a request from a client to write the software to control the flow of planes at an airport. The planes can land and take off provided that the weather is sunny. Occasionally it may be stormy, in which case no planes can land or take off.  Here are the user stories that we worked out in collaboration with the client.

```
As a pilot
So that I can arrive at my specified destination
I would like to land my plane at the appropriate airport

As a pilot
So that I can set off for my specified destination
I would like to be able to take off from the appropriate airport

As an air traffic controller
So that I can avoid collisions
I want to be able to prevent airplanes landing when the airport if full

As an air traffic controller
So that I can avoid accidents
I want to be able to prevent airplanes landing when the weather is stormy
```

Approach
-----

This was an attempt at generating a test driven application following the above user stories.
2 basic objects were created: Airport, Plane. One of the main goals was to to respect both encapsulation and the single responsability principle.
A Plane knows its status, i.e. "landed", "flying". The Airport has a max capacity and can receive the weather through a module randomply generating the forecast.
Testing proved difficult given the randomness introduced to generate a forecast. For this reason, the test coverage isn't complete, especially for more complex scenarios.


Technology
-----

(basic) ruby, rspec, rubocop, hound


Improvements
-----

* expand text coverage
* resolve rubocop styling issues







