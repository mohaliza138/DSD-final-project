
# DSD Project (Midterm Question #8)

This project is dedicated to the implementation of a module to manage a parking lot, with a timely variant priority for university students.

## Tools

- Modelsim for simulation
- Quartus II for synthesizing (MAX V as simulation FPGA)


## Key Assumptions

- The parking lot has a total capacity of 700 cars.
- Students can be considered as regular people, but regular people can't be considered as students.
- Free capacity can become negative. This can happen as the priority changes during the day. Note that a car can enter the parking only if the capacity is positive.

## Implementation Details

### PARKING_CU module

This module is implemented using the very parameters given in the question.
It has 5 major parts, described below in brief:
- Input, output, and other pins declarations.
- Time handling part, which updates current hour according to the total number of clock cycles past so far.
- Car exit handler. An always block, increasing the number of departured cars in case departure was valid.
- Car entrance handler which increases the number of entered cars if there was any available place.
- Output & functionality handler.


### TestBench

This module is implemented in order to test the above module.
In this test, I'm testing all edge cases. some of these edge cases are listed below according to the case number within the simulation result:

1) Initialize
2) Adding a student.
3) Adding a regular person.
4) Adding & removing a regular person at the same time(Non-empty parking lot).
5) Adding & removing a student at the same time(Non-empty parking lot).
6) Adding a student and removing a regular person simultaneously (Non-empty parking lot).
7) Adding a regular person & removing a student simultaneously (Non-empty parking lot).
8) Adding multiple students.
9) Filling empty capacity for regular people.
10) Checking whether a new person can be added or not.
11) Waiting till 8 o'clock and checking capacity modification.
12) Waiting till 12 o'clock. No modification is expected as the capacity remains constant.
13) Waintig till 13 o'clock when regular people's capacity begins to rise.
14) A regular person is being added to check whether the parking lot accepts it as their free capacity is currently negative.
15) Waiting till 14 o'clock & checking capacity modification.
16) 200 regular people exit & the free capacity becomes zero.
17) Waiting till 15 o'clock & checking capacity modification.
18) 299 students arrive and fill the parking lot.
19) Adding another student to check whether it is accepted.
20) 410 students exit. The first 400 are valid, but the last ones should just be ignored.
21) Waiting till 16 o'clock.
22) Waiting till 17 o'clock.
23) 310 regular people exit. The first 300 are valid, but the last ones should just be ignored.
24) Waiting till 18 o'clock.
25) Waiting till 19 o'clock.
26) Waiting till 20 o'clock.
27) Waiting till 21 o'clock.
28) Waiting till 22 o'clock.
29) Waiting till 23 o'clock.
30) Waiting till 0 o'clock.
31) Adding & removing a student at the same time(Empty parking lot). As there is no one inside the parking lot, the departure should be ignored.

## How to Run

### Modelsim simulation

1) Open the project.
2) start a semulation using TB.v module.


### Quartus Synthesizing

1) Open the Quartus project.
2) Set PARKING_CU.v as top-level entity.
3) Compile the project.

## Results

### Simulation

![simulation1](https://github.com/mohaliza138/DSD-final-project/blob/main/assets/simulation_result.png)

### Synthesization
- max frequency

  ![synthesize1](https://github.com/mohaliza138/DSD-final-project/blob/main/assets/synthesize_result1.png)

- setup time
 
  ![synthesize2](https://github.com/mohaliza138/DSD-final-project/blob/main/assets/synthesize_result2.png)


## Author
- [Mohammad Alizadeh](https://github.com/mohaliza138)
