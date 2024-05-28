# README

String Calculator - Ruby on Rails APP

* Overview

  String Calculator is a simple web application built with Ruby on Rails that allows users to add any amount of numbers. This README provides instructions on setting up and running the Ruby on Rails backend of string calculator.

* Setup Instructions

  * Prerequisites

    Make sure you have the following installed:

      * Ruby (version 3.0.0)
      * Rails (version 6.1.7)
      * PostgreSQL or MySQL database

* Installation

  1) Clone this repository to your local machine.

      git clone <repository-url>

  2) Navigate to the project directory.

      cd string_calculator

  3) Install dependencies.

      bundle install

  4) Set up the database

      rails db:create
      rails db:migrate

* Running the Server

  Start the Rails server: rails s

  The API server will start running at http://localhost:3000
