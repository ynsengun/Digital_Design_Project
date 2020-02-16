# Digital_Design_Project
A project developed on Basys 3 board. System Verilog and high level state machine design are used to design hardware.

Physical modules I used on Basys-3
● Switches
I used switches in order to increment and decrement the number of passengers waiting
on a floor. When an increment switch is turned on, the number of passengers
increases one by one on the rising edge on the clock. When the opened switch is
turned off the increment operation stops. For decrement switches the way of operation
is the same. While the switch is turned on the number of passenger is decreased one
by one on the rising edge of the clock.
● Leds
I used first two leds for observing the position of the elevator. When the elevator
moves the first two leds show the position of the elevator as binary numbers. I used
other twelve leds for the passengers. It shows the number of passengers waiting on
each floor as binary number. First four leds show the number of passengers waiting
on the first floor as binary and so on. While passengers are moved the the floor the
leds changes properly.
● Seven Segments
First three segment shows the time elapsed for the evacuation operation. As the
elevator moves the time is increased one by one. For one movement of the elevator
the time increases 3 times, for taking or leaving passengers the time increases 2 times.
I used the most significant segment for showing the direction of the elevator. If the
elevator goes upward the segment turns clock-wise, if the elevator goes downward the
segment turns counter-clock-wise and for waiting operations the segment stays at the
waiting position.
● Buttons
I used two buttons for this project. The first one is for resetting the system. When the
button is clicked the elevator goes to the base floor and passengers are released from
board. The other button is used for execution. When it is clicked the operation starts.
Physical modules I used on beti board
● 8*8 Display Module
I used this module to show the evacuation operation. Left side of the module is used
for the position and state of the elevator. For empty places on the elevator blue light is
turned on and for the busy places on the elevator red light is turned on. The
passengers waiting on each floor is indicated on the module as well. For each
passenger waiting on a floor, a red light is turned on on the floor where the passenger
is waiting. As the elevator is working and passengers are lifting the lights on the
module changes accordingly.

Modules
● top
This is the top module of my project. All other modules are placed somewhere in this
module. All main variables and datas are changed in this module.
● ClockDivider
This is a clock divider. This is used for changing the states. Before execution this
clock outputs for 1s, after execution this clock output for every 2s or 3s depending on
the state of the elevator. If the elevator stops the clock counts 2s, if the elevator moves
the clock counts 3s.
● ClockDividerDirection
This is a clock divider. This clock divider is used for the direction indicator that is
placed on the most significant segment of the seven-segment. For the circular
movement of that segment, change on the segment occurs as this clock changes.
● ClockDividerCount
● This is a clock divider. This clock divider is used for the time that is placed on the
seven-segment module. The time on seven-segment changes on the rising edge of this
clock.
● nextCollectLogic
This module calculates the next collect array. Collect array indicates the passangers
that will lifted to the base floor for this movement of the elevator. For each turn this
module calculates it again.
● nextStateLogic
This module calculates our state for the next turn by using the previous values.
● nextDirectionLogic
This module calculates the next direction of the elevator. It calculates the direction by
looking at the next state and the collect array.
● nextElevatorLogic
This module calculates the next state of the elevator. In other word, how many people
will be placed on the elevator for the next state is calculated in this module.
● nextPassangerLogic
Passenger array keeps the passengers waiting on each floor. This module calculates
the next state of this array.
● outputLogic
The lights on the 8x8 display module is set in this module. This module takes the
position of the elevator and passengers and turns the lights on according to the given
datas.

Ready codes used in the project
● 8x8 display module from unilica
● seven segment module from unilica
