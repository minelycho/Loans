# Loans

# rails s -p "3000" -b "0.0.0.0"

# Requirements App 1

LOS (Loan Origination System)

- User must able to login
- 100 loans in its index
- index must have a pagination of 20 loans per page

## Model Specs

### User (Use devise or other gem to login)
  -/ username 
  - /password

/User must validate username uniqueness and password complexity (over /8 chars & inclusion of special characters)

### Loan
  - /borrower name
  - /credit score
  - / status (denied approved on_hold)

//Loan must validate borrower name presence credit, score presence, and status presence and inclusion in a previously set of values

## Controller Specs

### LoansController

  - The app's root route must be directed to this controller's index
  - The index controller must render a paginated list of all loans
  - Each loan must display the borrower name, status & credit score

# (Requirements App 2)[ https://dev.to/mknycha/serverless-web-scraper-in-ruby-tutorial-50hgb ]

https://dev.to/mknycha/serverless-web-scraper-in-ruby-tutorial-50hg

- A plain ruby application
- Running in an AWS Lambda
- It must log into App 1
- It must save all Loan data into a database

## Credential
  - username
  - password

## Loan
  - status
  - credit score
  - loan
