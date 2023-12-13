# SimplePasswordAuth

In this repo I provide a simple implementation of password-only protection of a Phoenix app. I found there were lots of examples out there on how to implement full username/password auth in Elixir, but very little on how to just create a plug to protect all pages with a password only, e.g. by storing it in your cookies.

My implementation is largely based on [the `plug_password` repo](https://github.com/azranel/plug_password) which I found incredibly useful. However, the implementation there didn't quite work for me (possibly as it was last updated 6 years ago!) so I have tweaked it. Hope you'll find it useful too!

See further explanations in my [blog post](https://medium.com/p/a9c6ebf39ce4).

To test:

- Ensure you have set the environment variable `PLUG_PASSWORD` locally, or replace the line in `config.exs:60` with a password (obviously you would not do this in prod!)
- Run `mix setup` to install and setup dependencies
- Start Phoenix endpoint with `mix phx.server`
- Visit [`localhost:4000`](http://localhost:4000) from your browser. You should see the password prompt screen
- Try to naviagate to any other page e.g. [`localhost:4000/home`](http://localhost:4000/home) and you should see you are redirected back to the password screen
- If you type in the wrong password, you get a flash message telling you the password is incorrect
- Type in the correct password, and you should automatically be redirected to your homepage at [`localhost:4000/home`](http://localhost:4000/home)
