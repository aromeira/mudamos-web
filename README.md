# Mudamos

Mudamos is a web platform built with [Rails](https://github.com/rails/rails) framework.

### Project setup

Local development can be configured using a `dotenv` file. The is a `.env.sample` that can be used to setup the initial one.

- `cp .env.sample .env.development`

If the sample env file does not require any change, you can just run the setup script, which will copy the file for you.

- `bin/setup` -- installs dependencies and prepares the database

#### Accessing the admin area

In order to access the admin area, an admin user must be created.

- `rake users:create_admin_user`

Follow the instructions, and use the created user to access the admin area.

### Running the web server

- `rails s`

### Testing emails on development

 1 - Run `gem install mailcatcher`
 2 - Run `mailcatcher`
 3 - Go to `http://localhost:1080/`

### Environment variables
        
  - 'PETITION_PDF_GENERATION_QUEUE': Name of the sqs queue used for the generation of the PDFs of the petitions
  - 'PETITION_PDF_GENERATION_QUEUE_PRIORITY': The priority of the sqs queue for the generation of the PDFs of the petitions
  - 'PETITION_PDF_BUCKET': Name of the bucket where the petition's pdfs are stored
  - 'AWS_ACCESS_KEY_ID': AWS access key id used to access the aws resources
  - 'AWS_SECRET_ACCESS_KEY': AWS secret access key used to access the aws resources
  - 'AWS_REGION': The region where the AWS resources are

### Running the workers

`bundle exec shoryuken -C config/shoryuken.yml -R`
