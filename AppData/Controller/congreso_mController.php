<?php

namespace AppData\Controller;


class congreso_mController
{
    private $congreso_m;

    public function __construct()
    {
        $this->congreso_m= new \AppData\Model\congreso_m();

    }

    public function index()
    {
        $datos1=$this->congreso_m->getAll();

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
        $this->congreso_m->delete($id[0]);
        $datos1=$this->congreso_m->getAll();
        $datos[0]=$datos1;
        return $datos;
    }
    public function modificar($id)
    {
        $datos=$this->congreso_m->getOne($id[0]);
        return $datos;
    }
    public function actualizar($id)
    {
        if($_POST)
        {
        }
    }
}