
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

1) Adding Dependencies:

   ![image](https://user-images.githubusercontent.com/100900392/207044893-602f0491-e129-4109-a3d1-4b33bdca5f83.png)
 
   Save dependencies: $ mix deps.get
 
2) In application file specify the processes that need to be started:

   ![image](https://user-images.githubusercontent.com/100900392/207045497-377cd29c-d88b-47a7-8255-6e9ea5096878.png)

3) In Router file give path of the HTML file:

   ![image](https://user-images.githubusercontent.com/100900392/207045781-2c891337-a9ad-4a08-92a1-4a86328e92a7.png)

4) Run the project using: $ mix run --no-halt

5) The Todo List is generated: 

   ![image](https://user-images.githubusercontent.com/100900392/210222616-a59b48f4-daa0-430d-83f8-3c651191985f.png)

6) Adding Tasks:
   
   ![image](https://user-images.githubusercontent.com/100900392/210243575-87296efd-3580-4e18-b8a6-791e4e926596.png)

7) Updating Tasks:
    
   ![image](https://user-images.githubusercontent.com/100900392/210224655-5014495c-21f1-45e7-97bb-642f6dc12173.png)

    After Updating:
    
   ![image](https://user-images.githubusercontent.com/100900392/210224723-c611d14d-d2ee-4a15-886a-4de95c95dc66.png)
   
8) Deleting Tasks:

   Before Deleting:

   ![image](https://user-images.githubusercontent.com/100900392/210224739-5a2fd4b3-b914-4caf-aa7e-b7ca370b2c6c.png)

   After Deleting:
   
   ![image](https://user-images.githubusercontent.com/100900392/210224778-7aea1b4f-e4c5-43d8-9920-ebce4f0865d7.png)
   
9) Database:

   ![image](https://user-images.githubusercontent.com/100900392/210200166-8120489a-1ec2-479b-abfb-8c9277e178ad.png)
   
10) Unit Testing for Ecto:

   ![image](https://user-images.githubusercontent.com/100900392/207049415-9760dfbd-1b13-4944-b429-aee620965742.png)

# Features:

1) Creating a web Server application using Cowboy.
2) Creating database & schemas using ecto.
3) Performing CRUD Operations.
4) Testing for Ecto.

# Setup:

1) Install the Mix dependencies: $ mix deps.get
2) Create the development database: $ mix ecto.create
3) Migrate the development database: $ mix ecto.migrate
4) Start the application: $ mix run --no-halt
5) Start the localhost:8000 on browser
6) For unit testing - mix test

