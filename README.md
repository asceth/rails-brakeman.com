# rails-brakeman.com

[rails-brakeman.com][1] is aimed to help developers find out the security issues in their rails codebase.

it is based on [brakeman][2] gem.

## Setup

1. git clone repository

2. copy all config files and change to proper values

```bash
cp config/database.yml.example config/database.yml
cp config/github.yml.example config/github.yml
cp config/mailers.yml.example config/mailers.yml
```

3. setup database

```bash
rake db:create && rake db:migrate
```

4. start server

```bash
rails  s
```

[1]: http://rails-brakeman.com
[2]: https://github.com/presidentbeef/brakeman
