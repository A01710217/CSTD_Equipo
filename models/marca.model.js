const db = require('../util/database');

module.exports = class Marca {
    
    constructor (idencuestaformato, brand, diasenviar){
        this.idencuestaformato = idencuestaformato;
        this.brand = brand;
        this.diasenviar = diasenviar;
    }

    save(){
        return db.execute(
            `INSERT INTO marca (idencuestaformato, brand, diasenviar)
            VALUES (?, ?, ?)`, 
            [this.idencuestaformato, this.brand, this.diasenviar]
        );
    }

    static fetchAll() {
        return db.execute('SELECT * FROM marca');
    }

};