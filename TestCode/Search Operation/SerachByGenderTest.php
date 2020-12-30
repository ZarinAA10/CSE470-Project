<?php

class SerachByGenderTest extends \PHPUnit\Framework\TestCase
{
public function SerachByGender(){
$this->children->Gender('male');
$this->children->status('present');

 $response =$this->get('Gender/status')->assertOk();
}
}