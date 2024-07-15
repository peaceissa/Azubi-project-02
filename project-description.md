From our Project 01, We have been able to create a simple web application that can log in a user. We managed to package our application as a docker image and export to dockerhub and AWS ECR. 


**What’s next:**

We would now like to add a page that displays some data from a database. Based on our knowledge, we will use dynamo (performance & setup). Creating a dynamo dB table can be a bit repetitive and thus we will introduce a tool (terraform) to help us deploy our dynamo dB resources and some data. We will then package our version 3 web-application (login & data pages) in a docker image. 
We hope you are excited and eager to help us achieve this. 
Best of Luck to your team! 
*Task 1: Manual Dynamo Table*
Teams will be creating a guestbook table. This will allow us to record data of people who visit our application. We will setup fields such as name, email and country.

Note: ⏰ This will be your first documentation step, in your github ReadMe file, add this task and info on it

***🏗️ Our Default Dynamo Table***
Go to your AWS Console and navigate to the DynamoDB service. 

1. Click on the "Create table" button. 

2. Enter "GuestBook" as the table name. 

3. Enter "Email" as the primary key and make sure to select "String" as the data type. 

4. Create a Country and Name Fields. You may need to research on (global and local indexes)

5. Click on the "Create" button to create the table. 

6. Once the table is created, click on the "Items" tab to add some sample data to the table.  

7. Click on the "Create item" button and enter the sample data for the "Name", "Email", and "Country" fields. 

8. Populate this with your team members info.

**✨ Creating custom tables**
Your data should have more than 2 fields. E.g usertable (name, phone, gender) 

Ensure you follow dynamo dB best practices: 

Primary key, sort key 

This is not compulsory, You can still use the Guestbook example above.

**Task 2: Link Dynamo to webpage**
we will be using the AWS SDK to be able to communicate with dynamo from our webpage. We will have an extra guestlist webpage to be attached to our project

📂 **Project Files**
Teams are encouraged to continue with their project 1 web app. the shared repo is just for clarification.

We will be working with  a new page Guestlist.php we will use php as it can process the requests in the background. Pick the template for this new file here. 

There are some packages needed for us to run the connection to dynamo 

🏗️**Working with AWS SDK for php**
Install Composer (https://getcomposer.org/), a package manager for PHP.  

In your project directory, run the “composer require aws/aws-sdk-php". This will install the needed packages. 

Git error: Install git from here, https://git-scm.com/download 

Once the AWS SDK for PHP is installed, you can use it in your PHP code by including the Composer-generated autoloader: 

require 'vendor/autoload.php'; 

You are now able to call on dynamo and perform the desired functions. 

**Task 3: Using Terraform**
To reduce redundancy and complexities we will use terraform to create our dynamo dB table.

📂 **To note**
A terraform file is a configuration file that defines the infrastructure and resources to be created by Terraform. 

A dynamo dB is a fully managed NoSQL database service that provides fast and predictable performance with seamless scalability.  

🏗️ **Using Terraform to create dynamo dB**
1. Install Terraform on your local machine following the installation guide for your operating system: install terraform

2. Set up your AWS credentials on your local machine. You can do this by configuring the AWS Command Line Interface (CLI) using the aws configure command. 

3. Create a new directory/folder on your local machine where you will store your Terraform configuration files.  

4. Create a new file in your Terraform directory called anything.tf. 

5. In your anything.tf file, define your AWS provider. This tells Terraform which AWS region to use and which AWS credentials to use. 

6. To create a dynamo dB using a terraform file, you need to: 

7. Define the attributes and settings of the dynamo dB table, such as name, hash key, range key, read capacity, write capacity, etc. 

Dummy Data can be added in the same file, different file. But make sure you add the data using terraform. 

8. Run terraform init to initialize the working directory and download the required plugins 

9. Run terraform plan to preview the changes that will be made 

10. Run terraform apply to create the dynamo dB table 

**Task 4: Deployment**
We will work on packaging our application

📂 **Docker Hub Deployment**
1. Create a Dockerfile in the "version3" folder with the following contents: Dockerfiles are what tell docker how it should build your image (environments)  

2. Build the Docker image using the following command:  

3. docker build -t your-dockerhub-username/docker-web-app:3.0 .  

This will build a Docker image with the name "your-dockerhub-username/docker-web-app" and the tag "3.0".  

4. Push the Docker image to DockerHub using the following command:  

docker push your-dockerhub-username/docker-web-app:3 From our Project 01, We have been able to create a simple web application that can log in a user. We managed to package our application as a docker image and export to dockerhub and AWS ECR. 


