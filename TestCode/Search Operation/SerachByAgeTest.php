<?php

class SerachByAgeTest extends \PHPUnit\Framework\TestCase
{
public function SerachByAge(){
$this->children->Age('8');
$this->children->status('present');

 $response =$this->get('age/status')->assertOk();
}
}