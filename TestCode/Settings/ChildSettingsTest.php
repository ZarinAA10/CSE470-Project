<?php

class ChildSettingsTest extends \PHPUnit\Framework\TestCase
{
public function insertChild(){
$this->ChildSettings->Name('Rai');
$this->ChildSettings->ID('6');
$this->ChildSettings->Gender('male');
$this->ChildSettings->Age('8');
$this->ChildSettings->Area('Khulna');
$this->ChildSettings->Status('Present');

$this->assertEquals($ChildSettings->Name(), 'Rai');
$this->assertEquals($ChildSettings->ID(), '6');
$this->assertEquals($ChildSettings->Gender(), 'male');
$this->assertEquals($ChildSettings->Age(), '8');
$this->assertEquals($ChildSettings->Area(), 'Khulna');
$this->assertEquals($ChildSettings->Status(), 'Present');
}
}