import express from 'express';
import { testFunction } from './controllers/TestController.js';
var server = express();
server.use(express.json());
server.get('/home', testFunction);
server.listen(3000, function () { "Port ".concat(3000); });
