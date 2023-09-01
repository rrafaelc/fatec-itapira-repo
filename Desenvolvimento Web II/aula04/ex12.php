<?php

$frutas = array('Abacaxi', 'Morango', 'Banana', 'Melancia', 'Mexerica', 'Laranja', 'Melão');

for ($i=0; $i < 7; $i++) { 
  if ($i % 2 == 1) {
    echo "$frutas[$i]<br>";
  }
}