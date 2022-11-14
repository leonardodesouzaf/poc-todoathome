import Joi from "joi";
export var taskSchema = Joi.object({
    task: Joi.string().required(),
    description: Joi.string(),
    nickname: Joi.string().required(),
    date: Joi.date().required()
});
