Here's a README.md file for your project based on the provided details:

# Azubi Africa Cloud Project

Welcome to our project repository! We started with a simple web application capable of user login, packaged as Docker images deployed to DockerHub and AWS ECR.

## Project Overview

In our next phase, we aim to enhance our web application by incorporating a data display page using DynamoDB for its performance and ease of setup. To streamline this process, we will utilize Terraform for deploying DynamoDB resources and data. Our goal is to package Version 3 of our web application, integrating both login and data pages into a Docker image.

### Tasks and Technologies

1. **Manual Dynamo Table**
   - **Objective**: Create a guestbook table in DynamoDB to record visitor information.
     - Navigate to AWS Console > DynamoDB.
     - Create a table named "GuestBook" with "Email" as the primary key (String).
     - Add "Country" and "Name" fields.
     - Populate with sample data via the DynamoDB console.

2. **Link Dynamo to Webpage**
   - **Objective**: Use AWS SDK for PHP to connect the web application to DynamoDB.
     - Integrate a new PHP page, `Guestlist.php`, to interact with DynamoDB.
     - Install AWS SDK for PHP via Composer (`composer require aws/aws-sdk-php`).

3. **Using Terraform**
   - **Objective**: Automate DynamoDB table creation to reduce redundancy.
     - Set up Terraform locally.
     - Define AWS provider and DynamoDB table configurations in `.tf` files.
     - Execute `terraform apply` to create the DynamoDB table.

4. **Deployment**
   - **Objective**: Package and deploy Version 3 of our application using Docker.
     - Create a Dockerfile in the `version3` folder.
     - Build and tag the Docker image: `docker build -t your-dockerhub-username/docker-web-app:3.0 .`
     - Push the image to DockerHub: `docker push your-dockerhub-username/docker-web-app:3.0`

## Project Structure

The repository is structured as follows:
- `version1/`: Contains initial Docker image setup with basic login form.
- `version2/`: Enhancements with PHP-enabled Docker image for login functionality on AWS Fargate.
- `version3/`: Planned directory for integrating DynamoDB data display into Docker image.

## Getting Started

To clone and set up the project locally:
```bash
git clone https://github.com/your_username/repo_name.git
cd repo_name
# Follow instructions in respective version folders for setup
```

## Collaborations

This project was a collaborative effort by the Azubi Africa Cloud Team in 2024, including:
- Nicholina Owusu Acheaw [noacheaw18@gmail.com]
- Benson Gathu [bensongathu23@gmail.com]
- Baldwin Kpodo [Baldwinkpodo@gmail.com]
- Sandra Wettey [sandraawuradwoa143@gmail.com]

## Contact

Peace Issa - [LinkedIn](www.linkedin.com/in/peace-issa) - issarae78@gmail.com

Project Link: [GitHub Repository](https://github.com/peaceissa/Azubi-project-02)

## References

- [GitHub Emoji Cheat Sheet](https://www.webfx.com/tools/emoji-cheat-sheet/)
- [Terraform DynamDB Docs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table)
- [AWS Documetation](https://docs.aws.amazon.com/)
- [GitHub Pages](https://pages.github.com/)

