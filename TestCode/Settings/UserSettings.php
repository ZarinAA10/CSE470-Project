<?php

class UserSettingsTest extends \PHPUnit\Framework\TestCase
{
public function insertChild(){
$this->UserSettings->Name('Mohin');
$this->UserSettings->ID('426768');
$this->UserSettings->NID('25424667');
$this->UserSettings->Occupation('Doctor');
$this->UserSettings->Salary('50k');
$this->UserSettings->Relationship('married');
$this->UserSettings->Age('36');
$this->UserSettings->Gender('male');
$this->UserSettings->Username('jdhsfi');
$this->UserSettings->Password('245hh');

$this->assertEquals($UserSettings->Name(), 'Mohin');
$this->assertEquals($UserSettings->ID(), '426768');
$this->assertEquals($UserSettings->NID(), '25424667');
$this->assertEquals($UserSettings->Occupation(), 'Doctor');
$this->assertEquals($UserSettings->Salary(), '50k');
$this->assertEquals($UserSettings->Relationship(), 'married');
$this->assertEquals($UserSettings->Age(), '36');
$this->assertEquals($UserSettings->Gender(), 'male');
$this->assertEquals($UserSettings->Username(), 'jdhsfi');
$this->assertEquals($UserSettings->Password(), '245hh');
}
}
