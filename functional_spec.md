# Packing CLI Functional Specification 
The Packing Cli app proves users with a simple, command-line interface to create a packing list and track which items have been packed.

## User Stories

### Basic Operation
- As a user, I want to add an item to the packing list, so that I can remeber to pack it
- As a user, I want to pack an item, so that I can keep track of what items have been packed

### Functional Requirements
- The app must prompt the user for a task to do (add, list or pack)
- The app must add the user inputted item to packing list with a status of unpacked
- The app must allow users to pack items
- The app must list out items and their statuses
The app much handle invalid input gracefully
