# Kanban Board Backend

This project will be the backend of the previous Kanban board project, which only consisted of the React frontend.
Auth0 flow for the 'Backend for Frontend Pattern' will be used. A helpful blog post can be found here: https://auth0.com/blog/the-backend-for-frontend-pattern-bff/

Setting up the Auth:

- I followed the original documentation from here: https://auth0.com/docs/quickstart/backend/rails/interactive. 
- First created a new API from Auth0. After this, you can see a 'Machine to Machine' application in your Applications tab, along with the API that you created in the API tab.
- Here, you can retrieve the Client ID and Client Secret, which you will need to generate an access token. So set these in your .env file as AUTH0_CLIENT_ID and
  AUTH0_CLIENT_SECRET
- The domain that Auth0 provides and the audience that you decided on also has to be set with keys AUTH0_DOMAIN and AUTH0_AUDIENCE