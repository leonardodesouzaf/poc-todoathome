import pg from 'pg';
var Pool = pg.Pool;
var connection = new Pool({
    host: 'localhost',
    port: 5432,
    user: 'postgres',
    password: '10265812658',
    database: 'poc1'
});
export default (connection);
