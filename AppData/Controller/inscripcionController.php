<?php

namespace AppData\Controller;


class inscripcionController
{
    private $inscripcion;

    public function __construct()
    {
        $this->inscripcion= new \AppData\Model\incripcion();

    }

    public function index()
    {
        $datos1=$this->inscripcion->getAll();
        $datos[0]=$datos1;
        return $datos;
    }
    public function crear(){
        if($_POST)
        {

        }

    }

    public function eliminar($id)
    {
        $this->inscripcion->delete($id[0]);
        $datos1=$this->inscripcion->getAll();
        $datos[0]=$datos1;
        return $datos;
    }
    public function modificar($id)
    {
        $datos=$this->inscripcion->getOne($id[0]);
        return $datos;
    }
    public function actualizar($id)
    {
        if($_POST)
        {

        }
    }
}