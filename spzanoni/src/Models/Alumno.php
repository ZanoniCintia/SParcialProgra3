<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
class Alumno extends Model {

    protected $table = 'alumnos';
    //protected $primaryKey = '';
    //public $incrementing = false;
    //protected $keyType = 'string';
    public $timestamps = false;

    const CREATED_AT = 'creation_date';
    const UPDATED_AT = 'last_update';
}