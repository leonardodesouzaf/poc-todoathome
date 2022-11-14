import express from 'express';
import { createTask, getMemberTasks, finalizeTask, deleteTask } from './controllers/taskController.js';
import { validateSchema } from './middlewares/validateSchemaMiddleware.js';
import { taskSchema } from './schemas/taskSchema.js';

const server = express(); 
server.use(express.json());

server.post('/task', validateSchema(taskSchema), createTask);
server.get('/task/:nickname', getMemberTasks);
server.put('/task/:taskId', finalizeTask);
server.delete('/task/:taskId', deleteTask)


server.listen(3000, ()=>{`Port ${3000}`})