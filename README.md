# Project-Due-5-24-18
Assembly projects

Team Name:  BCR

Members:    Joshua Bocanegra
            John Casanova
            Mike Ryan
            
Professor:  Casey Nyguyen

Project Information:    MASM32 win32 Application Project

Lib Mad - Application Details


Primary Purpose:                    The purpose of Lib Mad is to playa word game with the user.     

Scope:                              This program is only a single story that is only interesting for a single run.

Restrictions:                       All of the character arrays used for inputmust be declared at the begining of the 
                                    program and are only capable of storing up to 63 characters + a null terminator. This 
                                    can be changed by simply delcaring the constant to be something else.
                        
Dependencies and assumptions:       User must understand english for this program to be of any use. Program relies on
                                    the MASM32 SDK
            
Technical Functionalities:           Program requests and outputs user data at multiple points. There are two main
                                    subroutines called mainInput and storyTime. All user input is gathered in mainInput.
         
         
Text Adventure - Application Details

Primary Purpose:                    The application is a "game" that sets up a scenario and then accepts user input to 
                                    branch to what is most likely a lose state.

Scope:                              This is a small program where you will have seen everything within 3 tries.

Restrictions:                       The program only responds to 4 user inputs. Attack or attack will lead to one scenario,
                                    Flee or flee will lead to a second scenario and anything else leads to a third scenario.

Dependencies and assumptions:       Requires masm32 libraries and assumes user can read and understand english. 
                                    A keyboard is required for text input.

Technical Functionalities:          Program displays a string of text and then accepts user input to branch to one 
                                    of three scenarios. After the scenario is displayed it waits for a key to be pressed and
                                    exits the program.
                                    
Single Bet Craps - Application Details

Primary Purpose:                    The application is a game that is simulates a single die roll. The program accepts a user's number                                       and it branches to a win message if the number matches the rolled number or a lose message if not.

Scope:                              This is a small program that can be used over and over as needed to mimic the probability of a 1-6                                       die roll

Restrictions:                       Input only accepts a number between a number 1 - 6. Any other value will result in an automatic 
                                    lose message.

Dependencies and assumptions:       Requires masm32 libraries and assumes user can read and understand english. 
                                    A keyboard is required for text input.
                                    
Technical Functionalities:          Program displays greeting text then accepts user input (numbers 1 - 6). Program then converts user's                                     ASCII input to DWORD. Program then generates random number. Program then compares the user's number                                     and the random number. Program branches to win message if true or lose message if false.

