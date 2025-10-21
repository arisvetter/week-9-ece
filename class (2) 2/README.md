# Multiplexers and Demultiplexers

In this lab you have learned about multiplexers and demultiplexers.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

In this lab, we created a solution to a mock small town phone routing situation. We began by creating a multiplexer that accepts two switches as a selector, and forwards the four bit data of one person in the town. Then, we wired that data to a demultiplexor, whose selector switches instructed us on which LEDs to light up, representing the location that the data is getting passed to. Ultimately, the pattern of LEDs represents the user data passed and which LEDs show that pattern shows which location recieved the data.

### In plain English describe the function and use of a multiplexer.

A multiplexer selects between different input options and forwards one of the input options along. The selection choice is based on a selector switch(or multiple switches).

In our lab, our mux is has two selectors (buttons L and U). If both L and U are on, for example, the fourth user (Jill) will be selected, and her data will be forwarded in the wire to the demux. However, this is only true if the "Enable" button is on, otherwise 0000 is always forwarded.

### In plain English describe the function and use of a demultiplexer.
A demultiplexer is the reverse of a multiplexer--it selects one output of multiple, based on one input. That input is the selector switch(es).

In our lab, our demux is has two selectors (buttons D and R), and sets all of the locations LED outputs to 0000 except for the chosen location which displays the user data. For instance, neither button on would indicate to choose the library.

### What other uses might these circuits have? (Think Shannon’s)

