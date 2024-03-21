const db = require('../util/database');

module.exports = class Opcion {
    constructor(idpregunta, textoopcion){
        this.idpregunta = idpregunta;
        this.textoopcion = textoopcion;
    }

    save(){
        return db.execute(
            `INSERT INTO opcion (idpregunta, textoopcion)
            VALUES (?, ?)`, 
            [this.idpregunta, this.textoopcion]
        );
    }

    static fetchByMarca(idmarca){
        return db.execute(
            `SELECT O.idopcion, O.idpregunta, O.textoopcion
            FROM pregunta AS P, marca AS M, opcion AS O
            WHERE M.idmarca = P.idmarca AND O.idpregunta = P.idpregunta AND M.idmarca = ?;`, 
            [idmarca]
        );
    }
};