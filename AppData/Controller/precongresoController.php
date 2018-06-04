<?php
namespace AppData\Controller;
class precongresoController
{
    private $precongreso;

    public function __construct()
    {
        $this->precongreso= new \AppData\Model\Habitaciones();

    }

    public function index()
    {
        $datos1=$this->precongreso->getAll();

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
        $this->precongreso->delete($id[0]);
        $datos1=$this->precongreso->getAll();
        $datos[0]=$datos1;
        return $datos;
    }
    public function modificar($id)
    {
        $datos=$this->precongreso->getOne($id[0]);
        return $datos;
    }
    public function actualizar($id)
    {
        if($_POST)
        {

        }
    }
}