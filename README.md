# PropSocial Lite by Danial Jenuil

## How to start the app?
Prerequisite: Ensure that you have Docker installed in your system and have Docker daemon running.

1. Clone this repo to your local machine.
2. From the repo's local directory, run `cp env-example .env`. 
3. From the repo's local directory, run `docker compose build`.
4. From the repo's local directory, run `docker compose run propsocial-lite bundle install`.
5. Run `docker compose run propsocial-lite db:setup db:migrate db:seed` (this will take a while as seeding involves downloading random photos of houses and saving it to the local machine).
6. Run `docker compose up -d` to create and start the containers.
7. Using your web browser, visit [http://localhost:8020](http://localhost:8020) to view the web app.

## Logging into the sample admin account
1. With your web browser, visit [http://localhost:8020/admins/sign_in](http://localhost:8020/admins/sign_in).
2. Enter the following credentials:
```
Email: admin@example.com
Password: admin123
```
