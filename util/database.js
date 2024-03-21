const mysql = require('mysql2');

const pool = mysql.createPool({
    host: 'mysql-criticraft.alwaysdata.net',
    user: '351189_user_crcr',
    database: 'criticraft_database',
    password: 'J,==(pm~?Fk2O%?y+DkV-o}2S'
});

module.exports = pool.promise();
