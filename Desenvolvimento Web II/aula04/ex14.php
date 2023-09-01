<?php
$paises = ['Brasil', 'Chile', 'Equador', 'Guatemala', 'México', 'Moçambique', 'Uruguai'];

for ($i = 0; $i < count($paises); $i++){
  if ($i % 2 == 0) {
    echo "$paises[$i]<br>";
  }
}