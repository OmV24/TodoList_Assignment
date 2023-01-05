
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

   ![image](https://user-images.githubusercontent.com/100900392/210791615-469de29c-969e-4df9-a26f-813aa1850870.png)

6) Adding Tasks:
   
   ![image](https://user-images.githubusercontent.com/100900392/210791822-229f10bf-2153-416c-a180-bcc288f3998b.png)

7) Updating Tasks:
    
   ![image](https://user-images.githubusercontent.com/100900392/210792018-3324bf29-3cf7-4252-bcc8-7141480db2ae.png)

    After Updating:
    
   ![image](https://user-images.githubusercontent.com/100900392/210792165-c3cbfaa9-0771-4876-b0ba-8214319187eb.png)
   
8) Deleting Tasks:

   Delete Confirmation:

   ![image](https://user-images.githubusercontent.com/100900392/210792281-9b229a23-50da-483b-8e87-977d57bf258b.png)

   After Deleting:
   
   ![image](https://user-images.githubusercontent.com/100900392/210792410-ff4ee6fe-5739-4ca3-97b4-2137145b6f01.png)
   
9) Task Status:

   Before Completion:
   
   ![image](https://user-images.githubusercontent.com/100900392/210792638-3f670386-3946-44f1-a92c-c5ac94b93c5e.png)

   After Completion:
   
   ![image](https://user-images.githubusercontent.com/100900392/210792807-169faaf7-f733-4d30-9503-2d0ec44b481a.png)
 
10) Database:

   ![image](https://user-images.githubusercontent.com/100900392/210792981-9f897061-637d-457d-8a48-6de5d118ff35.png)
   
11) Unit Testing for Ecto:

   ![image](https://user-images.githubusercontent.com/100900392/210793187-ac3119de-eb66-4fd0-9254-a1fcf80ca4e9.png)

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

