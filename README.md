<h1 align="center">ToDoAtHome 🏡</h1>

###

<h2 align="left">About</h2>

ToDoAtHome it's a conceptual approach of an organizator/schedule app for families or groups that live in the same place, this project is a proof of concept, a way to train my skills with TypeScript, on this I've created a simple back-end where it's possible to creat tasks with a responsible person and a deadline, it also can update done tasks or delete them too.

<div align="center">
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-plain-wordmark.svg" height="40" width="52" alt="html5 logo"  />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/css3/css3-plain-wordmark.svg" height="40" width="52" alt="css3 logo"  />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/javascript/javascript-original.svg" height="40" width="52" alt="javascript logo"  />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/typescript/typescript-plain.svg" height="40" width="52" alt="typescript logo"  />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/react/react-original-wordmark.svg" height="40" width="52" alt="react logo"  />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/nodejs/nodejs-original.svg" height="40" width="52" alt="nodejs logo"  />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postgresql/postgresql-plain-wordmark.svg" height="40" width="52" alt="postgresql logo"  />
</div>


## API Documentation


#### Create a task

```javascript
  POST /task

  Body = { "task": "Clean up the bedroom",
  "description": "When I wake up I'll clean up my bedroom",
  "nickname": "Leo Souza",
  "date": "14/11/2022" }

```


#### Get the member tasks

```javascript
  GET /task/:nickname
```

| Parameter   | Type       | Description                         |
| :---------- | :--------- | :---------------------------------- |
| `nickname` | `string` | **Required**. A member nickname. |

#### Update a member task

```javascript
  PUT /task/:taskId
```

| Parameter   | Type       | Description                         |
| :---------- | :--------- | :---------------------------------- |
| `taskId` | `string` | **Required**. The task id on the DB. |

#### Delete a member task

```javascript
  DELETE /task/:taskId
```

| Parameter   | Type       | Description                         |
| :---------- | :--------- | :---------------------------------- |
| `taskId` | `string` | **Required**. The task id on the DB. |





###

<h2 align="left">Autor</h2>

###

<p align="left">ToDoAtHome by Leonardo de Souza Ferreira</p>

###
