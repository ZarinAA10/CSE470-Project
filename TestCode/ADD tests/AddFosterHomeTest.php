<?php

class AddFosterHomeTest extends \PHPUnit\Framework\TestCase
{
public function insertChild(){
$this->AddFosterHome->Name('live');
$this->AddFosterHome->ID('8');
$this->AddFosterHome->regitration_ID(889);
$this->AddFosterHome->foster_username('live');
$this->AddFosterHome->password('7dhui');

$this->assertEquals($AddFosterHome->Name(), 'live');
$this->assertEquals($AddFosterHome->ID(), '8');
$this->assertEquals($AddFosterHome->regitration_ID(), 889);
$this->assertEquals($AddFosterHome->foster_username(), 'live');
$this->assertEquals($AddFosterHome->password(), '7dhui');
}
}
