# Projeto Clima

## Diferença entre Expanded e Flexible

O `Expanded` faz o widget ocupar o espaço disponível dentro de uma `Row` ou `Column`.

O `Flexible` permite que o widget utilize o espaço disponível sem obrigatoriamente ocupar todo esse espaço.

## O que acontece quando usamos valores diferentes de flex?

O valor de `flex` define a proporção do espaço disponível que cada widget recebe em relação aos outros widgets flexíveis.

Por exemplo, quando usamos `Expanded` com `flex: 1` e `Flexible` com `flex: 2`, o segundo widget pode receber uma proporção duas vezes maior do espaço disponível que o primeiro, considerando o espaço distribuído entre eles.

## Conclusão

`Expanded` é usado quando queremos que o widget ocupe o espaço disponível. `Flexible` permite maior flexibilidade na ocupação desse espaço. Os valores de `flex` controlam a proporção de espaço distribuída entre os widgets.