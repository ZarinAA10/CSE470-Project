<?php

class AdminLoginTest extends \PHPUnit\Framework\TestCase
{
public function insertChild(){
$this->AdminLogin->Username('mini');
$this->AdminLogin->Password('dgf76');

$this->assertEquals($AdminLogin->Username(), 'mini');
$this->assertEquals($AdminLogin->Password(), 'dgf76');
}
}