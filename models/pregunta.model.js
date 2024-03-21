const db = require('../util/database');

module.exports = class Pregunta {

    constructor(idmarca, textopregunta, idtipo, statusobligatorio){
        this.idmarca = idmarca;
        this.textopregunta = textopregunta;
        this.idtipo = idtipo;
        this.statusobligatorio = statusobligatorio;
    }

    save(){
        return db.execute(
            `INSERT INTO pregunta (idmarca, textopregunta, idtipo, statusobligatorio)
            VALUES (?, ?, ?, ?)`, 
            [this.idmarca, this.textopregunta, this.idtipo, this.statusobligatorio]
        );
    }

    static fetchByDate(){
        return db.execute(
            `SELECT *
            FROM pregunta AS P
            ORDER BY P.created_at DESC`
        );
    }

    static fetchByMarca(idmarca){
        return db.execute(
            `SELECT DISTINCT P.idpregunta, P.textopregunta, P.statusobligatorio, T.textotipo
            FROM pregunta AS P, marca AS M, tipo AS T
            WHERE M.idmarca = P.idmarca AND P.idtipo = T.idtipo AND M.idmarca = ?;`, 
            [idmarca]
        );
    }
};