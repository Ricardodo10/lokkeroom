# Locker Room

This is a basic program written to allow coaches and players to interact with each other online.

## API Reference

### HTML Format

#### Welcome Page

```http
  GET /welcome
```

#### About Page

```http
  GET /about
```

#### Signup Page

```http
  GET /api/signup
```

#### Login Page

```http
  GET /api/login
```

### JSON Format

#### shows a list of all users

```http
  GET /api/users
```

#### shows a list of all players

```http
  GET /api/users/players
```

#### shows a list of all coaches

```http
  GET /api/users/coaches
```

#### shows a user

```http
  GET /api/users/${id}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `string` | **Required**. Id of item to fetch |

#### shows a list of all teams

```http
  GET /api/teams
```

#### shows a team

```http
  GET /api/teams/${teamName}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `teamName`      | `string` | **Required**. Name of team to fetch |

#### shows a message

```http
  GET /api/messages/${id}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `string` | **Required**. Id of message to fetch |

#### Sign up

```http
  POST /api/signup
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `firstName`      | `string` | **Required** First Name |
| `lastName`      | `string` | **Required** Last Name|
| `username`      | `string` | **Required** Username |
| `email`      | `string` | **Required** Email |
| `password`      | `string` | **Required** Password |
| `admin`      | `boolean` | **Required** Player=FALSE, Coach=TRUE |

#### Login

```http
  POST /api/login
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `username`      | `string` | **Required**. Your username |
| `password`      | `string` | **Required**. Your password |

#### Send a message

```http
  POST /api/send-message
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `username`      | `string` | **Required**. Your username |
| `text`      | `string` | **Required**. Your message |
| `teamName`      | `string` | **Required**. The name of the team to post to |

#### Edit a message

```http
  POST /api/edit-message
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `string` | **Required**. Your message id |
| `text`      | `string` | **Required**. The edited text you want |

#### Delete a message

```http
  POST /api/delete-message
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `username`      | `string` | **Required**. the username of the author of the message you want to delete |
| `text`      | `string` | **Required**. the message you want to delete |

#### Create a lobby

```http
  POST /api/create-lobby
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `username`      | `string` | **Required**. Your username |
| `teamName`      | `string` | **Required**. The name of the team you want to create |

#### Add a player to a team

```http
  POST /api/${teamName}/add-user
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `teamName`      | `string` | **Required** The team you're adding your player to |
| `username`      | `string` | **Required**. Your player's username|

#### Remove a player from a team

```http
  POST /api/${teamName}/remove-user
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `teamName`      | `string` | **Required** The team you're removing your player from |
| `username`      | `string` | **Required**. Your player's username|

