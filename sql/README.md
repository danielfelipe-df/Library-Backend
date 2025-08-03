# Library Database Setup Guide

This guide provides instructions for setting up the library database schema using SQL scripts.


## Prerequisites

Before executing the setup scripts, ensure you have:

* PostgreSQL installed on your system
* A Postgres user account with sufficient privileges and change the owner user in scripts 'daniel' by yours.


## Execution Steps

### Step 1: Create Database

First, create the library database:
```bash
psql -d postgres -U user -f sql/create_library_db.sql
```
Considerations:
- Connects to the default Postgres database (`postgres`), if you want to use other one just change it
- Change the username (`user`) by yours


### Step 2: Create Main Tables

After successful database creation, create the necessary tables:
```bash
psql -d library -U user -f sql/create_main_tables.sql
```
Considerations:
- Connects directly to the newly created `library` database, so check it was created succesfully
- Change the username (`user`) by yours
- This will create the tables:
	- author
	- book


## Verification

To verify the setup was successful:

1. List databases:
```bash
psql -l | grep library
```

2. Check tables:
```bash
psql -d library -c "\dt"
```


## Troubleshooting

Common issues and solutions:

* **Connection Error**: Verify Postgres service is running and credentials are correct
* **Permission Denied**: Ensure the user has sufficient privileges


## Environment Variables

Consider setting these environment variables for easier script execution:
```bash
export PGUSER=user
export PGPASSWORD=your_password
```
