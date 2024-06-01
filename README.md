## Instalation instructions
- Clone the project to your local repository
>This is a project for practices. For this, it is advisible to create a virtual environment for it. 

- In the terminal, install venv if you don't have it installed 
```
pip install venv
```
- Also in terminal, create a virtual environment
```
python -m venv <path/to/your/project/directory>
```
- Activate the virtual environment 
```
<path to your project directory>\<name of your virtual environment>\Scripts\activate
```
- Install requirements
```
pip install -U -r requirements.txt
```
- Create a profiles.yml file
    - In your local profile directory create a folder called ".dbt"
    - Inside, create a profiles.yml file
    - Write in the file the folloring text 
    ```
    dbtlearn:
    outputs:
        dev:
        account: <your account>
        database: <your db>
        password: <the password of your user>
        role: <the role to use>
        schema: <the schema to use>
        threads: <the amount of threads to use>
        type: snowflake
        user: <name of the user>
        warehouse: <name of the warehouse>
    target: <target schema>
    ```
- Instal dbt dependencies
```
dbt deps
```
## Dagster local server
- After installing from the requirements file, set up the dagster project 
```
dagster-dbt project scaffold --project-name dbt_dagster_project --dbt-project-dir=../dbtlearn
```