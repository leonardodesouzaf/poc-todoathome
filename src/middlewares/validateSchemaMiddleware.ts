import { Request, Response, NextFunction } from "express";

export const validateSchema = (schema) => {
  return (req: Request, res: Response, next: NextFunction) => {
    const validation = schema.validate(req.body, { abortEarly: false });

    if (validation.error) {
      const errors = validation.error.details.map((v) => v);
      res.status(422).send({
        message: "Joi patterns were not satisfied!",
        joiErrors: errors,
      });
      return;
    }

    next();
  };
};

