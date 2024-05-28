# String Calculator Rails App

This is a simple Rails application that provides an API endpoint to perform addition on a string of numbers using a customizable delimiter. The `StringCalc` service class implements the string calculator functionality, and the `CalculatorsController` exposes the functionality via a web interface.

## Features

1. **Basic Addition**: Add up to two numbers separated by a comma.
2. **Unknown Amount of Numbers**: Handle an unknown number of numbers.
3. **New Line Delimiter**: Handle new lines between numbers as well as commas.
4. **Custom Delimiters**: Support different delimiters specified in the format `//[delimiter]\n`.
5. **Negative Numbers**: Throw an exception if negative numbers are included.
6. **Ignore Large Numbers**: Ignore numbers greater than 1000.
7. **Delimiters of Any Length**: Support delimiters of any length.
8. **Multiple Delimiters**: Support multiple delimiters.
9. **Long Multiple Delimiters**: Handle multiple delimiters with length longer than one character.

## Getting Started

### Prerequisites

- Ruby (version 3.0.0)
- Rails (version 6.1.7)

### Installation

1. **Clone the repository**:

    ```bash
    git clone https://github.com/ankita140890/string_calculator.git
    cd string_calculator
    ```

2. **Install dependencies**:

    ```bash
    bundle install
    ```

3. **Set up the database**:

    If you have a database setup, run:

    ```bash
    rails db:create
    rails db:migrate
    ```

### Running the Application

Start the Rails server:

```bash
rails server
