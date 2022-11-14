import connection from "../database/database.js";
import { QueryResult } from "pg";
import { DbTask, MemberId, Task } from "../protocols/taskProtocol.js";

export async function insertTask(task: Task): Promise<QueryResult<[]>>{
    const memberId: QueryResult<MemberId> = await connection.query(`SELECT id FROM member WHERE nickname = $1`,[task.nickname]);
    if(memberId.rowCount !== 0){
        return connection.query(`INSERT INTO tasks("memberId",name,description,date) VALUES ($1,$2,$3,$4)`,[memberId.rows[0].id,task.task,task.description,task.date]);
    }
}

export async function selectUserTasks(nickname: string): Promise<QueryResult<[DbTask]>>{
    const memberId: QueryResult<MemberId> = await connection.query(`SELECT id FROM member WHERE nickname = $1`,[nickname]);
    return connection.query(`SELECT * FROM tasks WHERE "memberId" = $1 ORDER BY date ASC`,[memberId.rows[0].id]);
}

export async function updateTask(taskId: number): Promise<QueryResult<[]>>{
    const response: QueryResult<MemberId> = await connection.query(`SELECT id FROM tasks WHERE id = $1`,[taskId]);
    if(response.rowCount !== 0){
        return connection.query(`UPDATE tasks SET "isDone" = true WHERE id = $1`,[taskId]);
    }
}

export async function deleteTask(taskId: number): Promise<QueryResult<[]>>{
    const response: QueryResult<MemberId> = await connection.query(`SELECT id FROM tasks WHERE id = $1`,[taskId]);
    if(response.rowCount !== 0){
        return connection.query(`DELETE FROM tasks WHERE id = $1`,[taskId]);
    }
}