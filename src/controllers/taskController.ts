import { Request, Response } from "express";
import { Task } from "../protocols/taskProtocol.js";
import * as taskRepository from "../repositories/taskRepository.js";

export async function createTask(req: Request, res: Response){
    try {
        const task: Task = req.body;
        const response = await taskRepository.insertTask(task);
        if(!response){
            return res.status(404).send('This member doesn\'t exist!')
        }
        return res.status(201).send('Task created!');
    } catch (error) {
        return res.status(500).send({ error: error.message });
    }
}

export async function getMemberTasks(req: Request, res: Response){
    try {
        const nickname: string = req.params.nickname;
        const response = await taskRepository.selectUserTasks(nickname);
        return res.status(200).send(response.rows);
    } catch (error) {
        return res.status(500).send({ error: error.message });
    }
}

export async function finalizeTask(req: Request, res: Response){
    try {
        const taskId: number = Number(req.params.taskId);
        const response = await taskRepository.updateTask(taskId);
        if(!response){
            return res.status(404).send('This task don\'t exist!')
        }
        return res.status(201).send('Task updated!');
    } catch (error) {
        return res.status(500).send({ error: error.message });
    }
}

export async function deleteTask(req: Request, res: Response){
    try {
        const taskId: number = Number(req.params.taskId);
        const response = await taskRepository.deleteTask(taskId);
        if(!response){
            return res.status(404).send('This task don\'t exist!')
        }
        return res.status(200).send('Task deleted!');
    } catch (error) {
        return res.status(500).send({ error: error.message });
    }
}