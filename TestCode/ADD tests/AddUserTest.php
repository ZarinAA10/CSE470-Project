<?php

class AddUserTest extends \PHPUnit\Framework\TestCase
{
public function insertChild(){
$this->AddUser->Name('Mohin');
$this->AddUser->ID('426768');
$this->AddUser->NID('25424667');
$this->AddUser->Occupation('Doctor');
$this->AddUser->Salary('50k');
$this->AddUser->Relationship('married');
$this->AddUser->Age('36');
$this->AddUser->Gender('male');
$this->AddUser->Username('jdhsfi');
$this->AddUser->Password('245hh');

$this->assertEquals($AddUser->Name(), 'Mohin');
$this->assertEquals($AddUser->ID(), '426768');
$this->assertEquals($AddUser->NID(), '25424667');
$this->assertEquals($AddUser->Occupation(), 'Doctor');
$this->assertEquals($AddUser->Salary(), '50k');
$this->assertEquals($AddUser->Relationship(), 'married');
$this->assertEquals($AddUser->Age(), '36');
$this->assertEquals($AddUser->Gender(), 'male');
$this->assertEquals($AddUser->Username(), 'jdhsfi');
$this->assertEquals($AddUser->Password(), '245hh');
}
}
