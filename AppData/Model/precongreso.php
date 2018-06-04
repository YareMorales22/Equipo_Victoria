<?php


    namespace AppData\Model;


class precongreso
{
     private $tabla="precongreso";
     private $id_habitacion;
     private $num_habitacion;
     private $descripcion_hab;
     private $id_tipoh;
     private $id_estadoh;

     function __construct()
     {
         $this->conexion=new conexion();
     }

    public function set($atributo,$valor)
    {
        $this->$atributo=$valor;
    }

    public function get($atributo)
    {
        return $this->$atributo;
    }

    function add()
    {

    }

    function getAll()
    {
        $sql="";
        $datos=$this->conexion->QueryResultado($sql);
        return $datos;
    }

    function delete($id)
    {
        $sql="delete from {$this->tabla} where id_precongreso='{$id}'";
        $this->conexion->QuerySimple($sql);
    }
    function getOne($id)
    {
        $sql="select * from  {$this->tabla} where id_precongreso='{$id}'";
        $datos=$this->conexion->QueryResultado($sql);
        return $datos;
    }
    function update(){

    }
}