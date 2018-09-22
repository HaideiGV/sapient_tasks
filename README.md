General setup:

1. Clone the repo.
2. `cd sapient_tasks/` - change directory to sapient_tasks.
3. `mix deps.get` - install all project dependencies.
4. `iex -S mix` - run app shell.
5. `mix test` - for run app tests.

`Task 1`:

For wraping of two lists in structure like [[a: value1, b: value2], ...],
you can use function `wrap_lists` from module `SapientTasks.ListComposition`.
Example: 
```
=>SapientTasks.ListComposition.wrap_lists([1, 2], ["a", "b", "c"])
=>[[a: 1, b: "a"], [a: 1, b: "b"], [a: 1, b: "c"], [a: 2, b: "a"], [a: 2, b: "b"], [a: 2, b: "c"]]
```

`Task 2`:

Before run script you should prepare DB. Make next steps:

1. `mix ecto.create`
2. `mix ecto.migrate`
3. You can insert your data in Db or use next list of SQL inserts for population data.
    It creates a couple users and posts for random users. 
```
insert into users values (2, 'some name 1', 'now()', 'now()');
insert into users values (3, 'some name 2', 'now()', 'now()');
insert into users values (4, 'some name 3', 'now()', 'now()');
insert into users values (5, 'some name 4', 'now()', 'now()');
insert into users values (6, 'some name 5', 'now()', 'now()');
insert into users values (7, 'some name 11', 'now()', 'now()');
insert into posts values (1, 'article', 'some ;salfasfada text 1', 1, 'now()', 'now()');
insert into posts values (2, 'promotion', 'some ;salfasfada text 1', 4, 'now()', 'now()');
insert into posts values (3, 'link', 'some asd;salfaasdasfada text 1', 1, 'now()', 'now()');
insert into posts values (4, 'article', 'some asda;salfasfada text 1', 7, 'now()', 'now()');
insert into posts values (5, 'image', 'some asda;salfasdaasfada text 1', 6, 'now()', 'now()');
insert into posts values (6, 'link', 'some ;salfasfada text 1', 1, 'now()', 'now()');
insert into posts values (7, 'article', 'some ;salfasfada text 1', 4, 'now()', 'now()');
insert into posts values (8, 'promotion', 'some ;salfasfada text 1', 1, 'now()', 'now()');
insert into posts values (9, 'article', 'somesda ;salfasfada text 1', 1, 'now()', 'now()');
insert into posts values (10, 'article', 'some ;sasdaalfasfada text 1', 5, 'now()', 'now()');
insert into posts values (11, 'link', 'some ada;salfasfada text 1', 3, 'now()', 'now()');
insert into posts values (12, 'article', 'some adas;salfasfada text 1', 2, 'now()', 'now()');
insert into posts values (13, 'image', 'some ada;salfasfada text 1', 1, 'now()', 'now()');
insert into posts values (14, 'promotion', 'some ;salfasfada text 1', 5, 'now()', 'now()');
```

For getting statistic from DB you can run app due to `iex -S mix`, and run:
`SapientTasks.App.get_users_post_stat_fun_impl` - more functional implementation (using only functions.)
or 
`SapientTasks.App.get_users_post_stat_for_impl` - implementation, which use `for` construction for listing users.


`Task 3`:

For getting stars count of some public github repo you can run app due to `iex -S mix`, and run:
`SapientTasks.Github.starts(<repo_name>)` - where `<repo_name>` consists of username and repo name.
Example: `SapientTasks.Github.starts("rails/rails")`


`Task 4`:

I can't describe worst problem in elixir, because I don't have enaugh experience with it.
I recently met with some interesting problem when tried to implement some shareable state across app. 
But it is not problem in elixir, its a feature, and it has built-in features like Agents for solve such problems.
Anyway it was a little problem coming from Python.
