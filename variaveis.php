<?php

// Mock/Chumbar/fixar = ler dados usuario

$nome = "Fulano"; 
$sexo = "Masculino";
$idade = "33";
$nomePai= "Beltrano";
$nomeMae= "Cicrana";

// Exercicio 1

//echo  "O Usuario de $nome, $idade, $sexo e filho(a) de: $nomePai e $nomeMae <br>"; // texto

// Exercicio 2

/**$valor1 = 5;
$valor2 = 2; 

$resultadoSoma = $valor1 + $valor2; // Soma
$resultadoSub = $valor1 - $valor2; // Subtração
$resultadoMult = $valor1 * $valor2; // Multiplicação
$resultadoDiv = $valor1 / $valor2; // Divisão


echo "A soma dos valores $valor1 e $valor2 é $resultadoSoma <br>"; // Resultado adição
echo "A subtração dos valores $valor1 e $valor2 é $resultadoSub <br>"; // Resultado subtração
echo "A multiplicação dos valores $valor1 e $valor2 é $resultadoMult <br>"; // Resultado multiplicação
echo "A divisão dos valores $valor1 e $valor2 é $resultadoDiv <br>"; // Resultado divisãp
 */
/**$numeroVar = 6;
$formula = $numeroVar % 2;

$par = $formula == 0;

if ($par) {
    echo "O número $numeroVar é par. <br>";
} else {
    echo "O número $numeroVar é impar <br>";
}*/


$nota1 = 7.5;
$nota2 = 9.2;
$nota3 = 9.1;

$media = round(($nota1 + $nota2 + $nota3) / 3,2);

echo "Média do ano: $media <br>";

if ($media >= 7) {
    echo "Aprovado";
} else {
    echo "Reprovado";
}

echo "<br> <br>";

$mediaHarmonica;



function harmonicMean(array $numbers): float {
    // Check if the array is empty to prevent division by zero error
    if (empty($numbers)) {
        return 0.0;
    }

    $sumOfInverses = 0;
    foreach ($numbers as $number) {
        // Ensure all numbers are positive, as the harmonic mean is undefined for non-positive numbers
        if ($number <= 0) {
            trigger_error("Harmonic mean is only defined for positive numbers.", E_USER_WARNING);
            return 0.0;
        }
        $sumOfInverses += 1 / $number;
    }

    $n = count($numbers);
    // The harmonic mean is n divided by the sum of inverses
    return $n / $sumOfInverses;
}

// Example usage: Calculating the harmonic mean of 2, 5, and 6
$data = [9, 7, 9];
$result = harmonicMean($data);
echo "A média harmonica é: " . $result;
