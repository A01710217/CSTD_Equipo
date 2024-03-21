const db = require('../util/database');

module.exports = class Tipo {
    constructor (textotipo){
        this.textotipo = textotipo;
    }

    save(){
        return db.execute(
            `INSERT INTO tipo (textotipo)
            VALUES (?)`, 
            [this.textotipo]
        );
    }

    static fetchAll() {
        return db.execute('SELECT * FROM tipo');
    }

    static fetchOne(textotipo) {
        return db.execute(
            `SELECT * FROM tipo WHERE textotipo = ?`
            , [textotipo]
        );
    }
}