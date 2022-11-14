export type Task = {
    task: string,
    description?: string,
    nickname: string,
    date: string | Date
}

export type MemberId = {
    id: number
}

export type DbTask = {
    id: number,
    memberId: number,
    name: string,
    description?: string,
    date: string | Date,
    isDone: boolean
}