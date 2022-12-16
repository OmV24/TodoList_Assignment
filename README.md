
# Todolist
TodoList Web App using Cowboy Server.

Technologies used:
Elixir 1.14 
Plug - Cowboy 2.5.2 
Ecto 3.1 
Postgresql 
HTML 5 
CSS

# OUTPUT

1) Create mix project using: mix new . get --sup --app todolist 

2) Adding Dependencies:

   ![image](https://user-images.githubusercontent.com/100900392/207044893-602f0491-e129-4109-a3d1-4b33bdca5f83.png)
 
   Save dependencies: mix deps.get
 
3) In application file specify the port & router file:

   ![image](https://user-images.githubusercontent.com/100900392/207045497-377cd29c-d88b-47a7-8255-6e9ea5096878.png)

4) In Router file give path of the HTML file:

   ![image](https://user-images.githubusercontent.com/100900392/207045781-2c891337-a9ad-4a08-92a1-4a86328e92a7.png)

5) Run the project using: mix run --no-halt

6) The Todo List is generated: 

   ![image](https://user-images.githubusercontent.com/100900392/208075698-5dd1a9d6-d225-4c3c-850e-1f7d328ffd01.png)

7) Adding Tasks:
   
   ![image](https://user-images.githubusercontent.com/100900392/208076149-8b9bd002-0560-4f36-a2b3-0f236345622a.png)

8) Updating Tasks:
    
   ![image](https://user-images.githubusercontent.com/100900392/208076407-07e5b4a9-047c-41f6-8364-d41f34fccde3.png)

    After Updating:
    
   ![image](https://user-images.githubusercontent.com/100900392/208076533-66a21bcd-c6a0-454b-b807-3321729883ae.png)
   
9) Deleting Tasks:

   ![image](https://user-images.githubusercontent.com/100900392/208077046-0c7e78d7-1feb-4a7f-9d12-5f7c5dc5744c.png)
   
10) Database:

   ![image](https://user-images.githubusercontent.com/100900392/208077494-263735cf-bf5c-4a32-b8e7-efe311ab24b7.png)
   
11) Testing using Ecto:

   ![image](https://user-images.githubusercontent.com/100900392/207049415-9760dfbd-1b13-4944-b429-aee620965742.png)

# Features:

1) Creating a web Server application using Cowboy.
2) Creating database & schemas using ecto.
3) Testing using Ecto.
4) Performing CRUD Operations.

