---
documentclass: paper
marp: true
title: Máquinas Digitais Expressivas - Pintógrafo
subtitle: Computação Física, ESAD.cr --- LabAberto, Torres Vedras
headingDivider: 2
footer: David Sousa-Rodrigues <david.s.rodrigues@ipleiria.pt> António Gonçalves\thanks{lababerto@gmail.com} 
author:
- David Sousa-Rodrigues\thanks{david.s.rodrigues@ipleiria.pt} 
- António Gonçalves\thanks{lababerto@gmail.com}
pdflang: pt-PT
papersize: a4
fontsize: 11pt
colorlinks: true
geometry:
- a4paper
- top=30mm
- left=20mm
- right=50mm
- bottom=30mm
- marginparwidth=35mm
header-includes: |
  \usepackage[T1]{fontenc}
  \usepackage{times}
  \usepackage[portuguese]{babel}
  \usepackage[utf8]{inputenc}
  \newcommand{\nota}[1]{\marginpar{\footnotesize #1}} 
  \urlstyle{same}
  \usepackage{float}
  \floatplacement{figure}{H}
  \usepackage[scale=0.95]{sourcecodepro}
  \usepackage{microtype}
  \usepackage[]{titlesec}
  \titleformat{\section}[frame]{\normalfont}{\filright \footnotesize \enspace SECTION \thesection\enspace}{8pt}{\Large\bfseries\filcenter}
  \titleformat{\subsection}{\titlerule\vspace{.8ex}\normalfont\itshape}{\thesubsection.}{.5em}{\bfseries}
---
Repositório online: <https://github.com/sixhat/Pintografo/> (\today)
\tableofcontents

\pagebreak
# Máquina de Desenho - Pintógrafo[^1]

[^1]: O nome Pintógrafo não é um nome técnico, mas antes um nome inventado pela filha de [Fran McConville](https://www.fxmtech.com/harmonog.html), um construtor destas máquinas. No entanto o nome começou a ser utilizado de forma genérica para designar estas máquinas de desenho. Neste documento vamos utilizar o nome pintógrafo.

Este documento apresenta algumas instruções de construção de uma máquina de desenho baseada nos princípios de um pantógrafo. A máquina será desenvolvida pelos alunos da disciplina de Computação Física duranto o primeiro semestre do ano 2022-2023.

![Máquina de desenhos com braços de pantógrafo.](assets/20220918162202.png){width=10cm}

A construção de uma máquina de desenho semelhante à apresentada na figura acima é composto de 3 sistemas que serão construídos em separados: Chassi, Partes móveis e Electrónica.

![Um Espirógrafo](assets/spirograph-01.png){width=10cm}

Há diversas máquinas de desenho baseadas nos mesmos princípios. Os espirógrafos utilizam uma mesa rotativa ou sistemas de rodas dentadas para produzir efeitos circulares. 

![Harmonógrafo construído a partir de uma mesa](assets/harmonografo.png){width=8cm}

Os Harmonógrafos são semelhantes mas utilizam pêndulos para criar o movimento harmónico que gera o movimento. 

No website <https://michaldudak.github.io/pintograph/demo/> podes encontrar diversas simulações de pintógrafos com diferentes características de montagem e comparar os resultados de cada um.

\pagebreak
# Chassi

O chassi deste projecto dará suporte aos componentes electrónicos, aos braços móveis e também ao papel utilizado para os desenhos. Na sua essência é uma caixa que será recortada a Laser em madeira de $3mm$ de espessura.

## Construção da Caixa

![Caixa gerada no MakerCase.com](assets/20220925071954.png){width=10cm}

O chassi está pensado para o tamanho A4 (tamanho máximo de corte a Laser no Lab Aberto)

A geração da caixa deve ter as dimensões $297\times210\times60mm$ para poder albergar os componentes electrónicos dentro da mesma. 

Para criar os templates da caixa vamos utilizar o website MakerCase — <https://www.makercase.com/> — onde definimos as partes necessárias da caixa para posterior corte na máquina a Laser. Ao exportar os SVGs da caixa tens que definir o valor de Kerf para 0.15mm.\nota{\textbf{Kerf} é a largura do material que é removido pelo corte a laser. Este valor é dependente da máquina de corte utilizada e vai ter implicações na perfeição das junções finais da caixa.}

![Imagem SVG produzida pelo makercase.com](assets/caixa_chassis.svg){width=10cm}

Faz download do ficheiro resultante e abre-o no InkScape ou Adobe Illustrator. Deverás ter algo semelhante à figura.

## Recortes

A caixa tal como foi descarregada está totalmente fechada. Vai ser necessário fazer recortes extra para colocar os componentes móveis e eléctricos. Nomeadamente haverá recortes para:\nota{Será facultado um template em SVG para os recortes, para a máquina básica, mas deves desenhar o teu para a tua versão da máquina. Deves medir rigorosamente todas as dimensões e realizar o desenho em InkScape ou Illustrator.}

- Tomada USB do Arduino num tampo lateral. Poderá ser feito a Laser ou com um berbequim com uma broca larga.
- Recortes para encaixe do motor, potenciometros e outros componentes no tampo superior da máquina. Estes recortes serão feitos num desenho SVG para que a tampa possa ser de seguida recortada a Laser.

\pagebreak
# Partes móveis

As partes móveis correspondem aos braços de pantógrafos que conectam os discos de rotação e a caneta de desenho aos motores.

![Princípio de funcionamento de um pantógrafo](assets/pantografo-01.png){width=10cm}

> Vê o que é um pantógrafo e estuda o princípio de funcionamento na [wikipédia](https://en.wikipedia.org/wiki/Pantograph) — <https://en.wikipedia.org/wiki/Pantograph> — e [youtube](https://www.youtube.com/watch?v=Muic3yyhSv8) — <https://www.youtube.com/watch?v=Muic3yyhSv8>

Estas peças serão realizadas através de fabricação aditiva — impressão 3D em PLA.


## Braços do pintógrafo.

![Braços para o Pintógrafo](assets/pinto-bracos.png){width=8cm}

Os Braços do pintógrafo devem ser modelados com orifícios regularmente espaçados. Desta forma será possível utilizar diferentes posições para fazer a montagem e produzir desenhos diferentes.

A altura dos braços pode ser limitada a $4mm$ e o comprimento de cada braço não deve exceder os $200mm$. Os orifícios devem ser dimensionados de acordo com os veios e parafusos a utilizar. Tipicamente $3mm$ são apropriados.

## Discos de rotação.

![Disco de rotação](assets/pinto-discos-rotacao.png){width=7cm}

Os discos de rotação servem para colocar o ponto de fixação dos braços. Colocando diverso orifícios com diferentes raios podes experimentar e obter diferentes tipos de desenhos. 

Os discos de rotação podem ser simples ou podem ser compostos por mais do que um disco, normalmente interligados por um sistema de rodas dentadas como no exemplo acima.

## Suporte de caneta.

![Suporte de canetas de $8mm$ de diâmetro](assets/pinto-suporte-caneta.png){height=4cm}

\nota{Um lápis típico normalmente tem $8mm$ de diâmetro. No entanto uma caneta BIC é ligeiramente maior. Pensa se podes fazer uma versão de suporte universal, por exemplo recorrendo à utilização de um elástico.}
O suporte de caneta deverá ser pensado para dar estabilidade à caneta. Um tubo com o diâmetro aproximado de $8-10mm$ pode ser apropriado desde que este possua um orifício onde se possa colocar um parafuso para fixar a caneta no local. 

\pagebreak
# Electrónica

A tua máquina de desenho vai funcionar com a utilização de dois steppers\nota{Os steppers, ou motores de passo, são utilizados em muitos dispositivos que requerem controlo fino da rotação do veio, como por exemplo nas impressoras\,3D}muito simples. Neste projeto vamos utilizar o steppper 28BYJ-48 conjuntamente com o driver ULN2003.

![28BYJ-48 stepper](assets/28BYJ-48_Stepper_Motor.png){height=5cm}

Este stepper trata-se dum motor unipolar de 4 fases, que pode ser alimentado por 5V. Cada motor consome relativamente pouca corrente ($\approx 200mA$). 

> Para mais informação sobre o funcionamento de steppers podes ler o link <http://solarbotics.net/library/pieces/parts_mech_steppers.html> (em Inglês).

Para controlar este motor é necessário utilizar um driver que vai ligar e desligar as 4 bobines que fazem o motor girar. O driver que vamos utilizar é o UNL2003.

![ULN2003 driver](assets/ULN2003_webp.png){height=5cm}

Este driver permite controlar facilmente o stepper. Deve ser alimentado por 5V, preferencialmente de um fonte externa ao Arduino (por exemplo a partir de um carregador de telemóvel de 5V e 1A).

O Arduino vai conectar 4 pinos a este driver nos pontos *in1*, *in2*, *in3* e *in4*. Como vamos utilizar 2 steppers vamos ocpupar 8 pinos digitais do Arduino. A fonte de alimentação deve ligar aos pinos assinalados por **GND** e **VCC** na figura. Atenção à correcta conexão dos fios de alimentação.

## Montagem do stepper

O circuíto da montagem para um stepper será semelhante ao diagrama seguinte:

![Diagrama da montagem para um stepper](assets/Motor-de-Passo-ULN2003-1024x459.jpg){heigth=7cm}

## Código para o Arduino.

A forma mais simples de controlar um Stepper é utilizando a biblioteca `Stepper.h` incluída na instalação do Arduino.

Assim, um exemplo de código para o controlo do stepper pode ser visto a seguir, onde o stepper foi conectado aos pinos 8, 9, 10 e 11 e o sketch vai fazer o stepper dar uma revolução no sentido dos ponteiros do relógio e de seguida no sentido contrário ao dos ponteiros do relógio.

```c
#include <Stepper.h>

const int stepsPerRevolution = 64;  

Stepper myStepper(stepsPerRevolution, 8, 9, 10, 11);

void setup() {
  myStepper.setSpeed(10);
}

void loop() {
  myStepper.step(stepsPerRevolution);
  delay(500);
  myStepper.step(-stepsPerRevolution);
  delay(500);
}
```

O controlo do motor stepper com esta biblioteca implica que estamos a utilizar full-steps --- que tem mais binário e consomem mais energia. Em alternativa é possível utilizar o stepper com half-steps o que permite um controlo mais suave do motor mas com menos binário. Uma solução deste género pode ser encontrada no repositório deste projeto no <https://github.com/sixhat/Pintografo>

## Controlo da velocidade dos steppers

O controlo dos dois steppers será efectuado por meio de um potenciometro de veio rotativo. Este dispositivo trata-se de uma resistência variável que por movimento do braço permite obter diferentes valores de resistência. Vamos utilizar esta propriedade para ler valores analógicos de voltagem nos pinos analógicos do Arduino (A0--A5).

![Diagrama de um potenciometro](assets/potenciometer.png){height=7cm}

Os valores lidos estarão no interavalo $[0, 1023]$ pelo que podemos utilizar o potenciometro para controlar a velocidade e direcção de rotação se considerarmos o ponto central $512$ como o ponto de inversão de direção da rotação do stepper.

## Adiconar um botão on-off

Por vezes é necessário parar o movimento dos steppers para colocar uma folha de papel ou para impedir alguma situação mais complicada. Assim será útil possuir um botão de ON-OFF que permita controlar o movimento de rotação dos steppers. Este botão ON-OFF deverá estar conectado a um pino digital de input e permitir que o Arduino execute os passos dos steppers somente se estiver na posição ON.

Para evitar ter que adicionar resistências extra ao circuíto este botão ON-OFF deve estar configurado em modo pull-up interno indicando ao arduino no `setup` para configurar o respectivo pino de acordo. Por exemplo se o pino onde se vai ligar o botão ON-OFF for o pino Digital 7 (D7), deves fazer algo semelhante ao seguinte código:

```c
void setup(){
  pinMode(7, INPUT_PULLUP);
}
void loop(){
  if (LOW == digitalRead(7)){
    // Run stepper code here
  }
}
```

\pagebreak
# Sugestões de melhoria do pintógrafo

Até esta secção construíste um pintógrafo simples, com 2 braços, dois discos de rotação, 2 steppers e 2 potenciometros. Neste momento a máquina está funcional, mas como podes ver, não é muito original, uma vez que fará desenhos simples e iguais às restantes máquinas. 

Está na altura de melhorar a máquina consoante a tua criatividade e conceito. Aqui ficam algumas sugestões de melhoria do teu pintógrafo, mas podes sugerir outras alterações que serão analisadas pelos professores. 

## Acrescentar uma mesa de papel rotativa

![Pintógrafo Rotativo](assets/pinto-rotativo.png){width=10cm}

Se adicionares um 3º motor podes construir um mesa rotativa no centro da área de desenho e dessa forma obter efeitos mais próximos de um espirógrafo.

## Acrescentar novos discos na extremidade dos discos de rotação

A forma mais completa do pintógrafo inclui um segundo conjunto de discos na extremidade dos primeiros. A utilização destes discos permite uma amplitude de movimentos maior resultando em desenhos mais variados que os do pintógrafo simples.

## Acrescentar um microfone

Se adicionares um microfone podes criar um sistema de gravação de voz ou de música. A registo em papel será o resultado da captação da realidade ficando para sempre registada. Os teus utilizadores podem assim obter uma representação visual da sua voz, de uma música, ou de qualquer outra experiência sonora.

## Acrescentar um sensor de temperatura e humidade

Semelhante ao que acontece numa estação meteorológica, podes adicionar um sensor de temperatura e humidade e dessa forma registar em papel o estado do ambiente. Podes redesenhar e programar a tua máquina para fazer um desenho por dia.

## Controlar se a caneta risca ou não o papel

Podes adicionar um pequeno servo ao suporte da caneta de forma a que o desenho da linha não seja contínuo. O pequeno servo irá afastar ou colocar a caneta no papel. O controlo deste processo pode ser feito através de um botão na própria caixa ou programaticamente.

### Acrescentar uma interface capacitiva

As interfaces capacitivas permitem integrar um controlo digital que responda ao toque. Coloque uma interface capacitiva de forma a que a velocidade dos motores seja controlada pelo toque do utilizador.

## Crie uma interface animada em p5js

Construa uma animação no P5js de forma a que a máquina de desenho comunique bidireccionalmente com o computador. A animação enviará comandos do utilizador para a máquina de desenho e em simulatâneamente animará um sketch baseado no estado da máquina (posição dos potenciometros, motores, sensores, etc.)

## Conecte duas máquinas de desenho

Conecte duas máquinas entre si utilizando o protocolo I2C ou Serial de forma a que os sensores de uma máquina afectem a outra.

\pagebreak
# Repositório online

No repositório deste projeto, localizado em <https://github.com/sixhat/Pintografo> podes encontrar ficheiros modelo para as diversas fases do projecto. Estes ficheiros são bons pontos de partida para desenvolver os teus próprios modelos.
