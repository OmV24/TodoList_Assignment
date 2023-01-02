
# Todolist
TodoList Web App using Cowboy Server.

Technologies used:
1) Elixir 1.14 
2) Plug - Cowboy 2.5.2 
3) Ecto 3.1 
4) Postgresql 
5) HTML 5 
6) CSS

# OUTPUT

1) Create mix project using: $ mix new . get --sup --app todolist 

2) Adding Dependencies:

   ![image](https://user-images.githubusercontent.com/100900392/207044893-602f0491-e129-4109-a3d1-4b33bdca5f83.png)
 
   Save dependencies: $ mix deps.get
 
3) In application file specify the processes that need to be started:

   ![image](https://user-images.githubusercontent.com/100900392/207045497-377cd29c-d88b-47a7-8255-6e9ea5096878.png)

4) In Router file give path of the HTML file:

   ![image](https://user-images.githubusercontent.com/100900392/207045781-2c891337-a9ad-4a08-92a1-4a86328e92a7.png)

5) Run the project using: $ mix run --no-halt

6) The Todo List is generated: 

   ![image](https://user-images.githubusercontent.com/100900392/210199853-f2f483c9-ee20-41e0-9de6-457fe7bfa9da.png)

7) Adding Tasks:
   
   ![image](https://user-images.githubusercontent.com/100900392/210199906-52633193-1780-498b-b724-215a06747aae.png)

8) Updating Tasks:
    
   ![image](https://user-images.githubusercontent.com/100900392/210199981-65db4c2f-4c6c-4392-afd5-2976c9758238.png

    After Updating:
    
   ![image](https://user-images.githubusercontent.com/100900392/210200014-d1392904-0191-4d7e-96fb-39f9cbaab57b.png)
   
9) Deleting Tasks:

   Before Deleting:

   ![image](https://user-images.githubusercontent.com/100900392/210200077-1a4217c3-5fbe-45d8-9b67-48de353c726e.png)

   After Deleting:
   
   ![image](https://user-images.githubusercontent.com/100900392/210200131-606d5d67-165c-484b-a7b9-48dee998035d.png)
   
10) Database:

   ![image](https://user-images.githubusercontent.com/100900392/210200166-8120489a-1ec2-479b-abfb-8c9277e178ad.png)
   
11) Unit Testing for Ecto:

   ![image](https://user-images.githubusercontent.com/100900392/207049415-9760dfbd-1b13-4944-b429-aee620965742.png)

# Features:

1) Creating a web Server application using Cowboy.
2) Creating database & schemas using ecto.
3) Performing CRUD Operations.
4) Testing for Ecto.

# Setup:

1) Create mix project using: $ mix new . get --sup --app todolist
2) Install the Mix dependencies: $ mix deps.get
3) Create and migrate the development database: $ mix ecto.setup
4) Start the application with all its dependencies: $ iex.bat -S mix
5) Start the localhost:8000 on browser
6) For unit testing - mix test

