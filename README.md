
# Todolist

1) Create mix project using: mix new . get --sup --app todolist 

2) Adding Dependencies:

  ![image](https://user-images.githubusercontent.com/100900392/207044893-602f0491-e129-4109-a3d1-4b33bdca5f83.png)
 
   Save dependencies: mix deps.get
 
3) In application file specify the port & router file:

   ![image](https://user-images.githubusercontent.com/100900392/207045497-377cd29c-d88b-47a7-8255-6e9ea5096878.png)

4) In Router file give path of the HTML file:

   ![image](https://user-images.githubusercontent.com/100900392/207045781-2c891337-a9ad-4a08-92a1-4a86328e92a7.png)

5) Run the project using: mix run --no-halt

6) The Todo List is generated 
   
   For static todolist uncomment the javascript part in todohtml.html.
    
   ![image](https://user-images.githubusercontent.com/100900392/207047162-b08d5fde-a685-4f52-bddf-50ddbbd9db29.png)
   
7) Creating Repo, Databse & schemas using ecto:
   
   ![image](https://user-images.githubusercontent.com/100900392/207048751-85409061-3836-48ef-91ba-70bb7a808c0d.png)

   ![image](https://user-images.githubusercontent.com/100900392/207048863-6880f1a5-a87c-4809-a4e9-74f874c07204.png)

   ![image](https://user-images.githubusercontent.com/100900392/207048961-26a6d32a-5e1b-4c34-b141-c2b2d0f5a76d.png)

8) For dynamic todolist: 
  
   ![image](https://user-images.githubusercontent.com/100900392/207047593-130476d6-9006-44ba-9833-b12b51ee063e.png)
     
   We get the output in the terminal & is stored in database.
     
   ![image](https://user-images.githubusercontent.com/100900392/207048079-b75be378-c040-46e5-b5af-9548c4790bd8.png)

   ![image](https://user-images.githubusercontent.com/100900392/207048154-535e1ec8-5e42-4d4a-a002-61d4595c693d.png)

9) Testing using Ecto:

   ![image](https://user-images.githubusercontent.com/100900392/207049415-9760dfbd-1b13-4944-b429-aee620965742.png)

# Features:
1) Creating a web Server application using Cowboy.
2) Creating database & schemas using ecto.
3) Testing using Ecto.

