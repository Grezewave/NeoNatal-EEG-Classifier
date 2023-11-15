# Projeto de Conclusão de Curso (PFC) - Engenharia de Controle e Automação - UFMG

## Deep Learning para Classificação de Sinais de EEG

Este repositório contém o código e recursos relacionados ao meu Projeto de Conclusão de Curso (PFC) para o curso de Engenharia de Controle e Automação na Universidade Federal de Minas Gerais (UFMG). O objetivo deste projeto é aplicar técnicas de Deep Learning para a classificação de sinais de EEG (Eletroencefalograma), extraindo atributos dos sinais relevantes para classificação.

## Conteúdo

O repositório é organizado da seguinte forma:

- `Data/`: Pasta contendo os dados do EEG utilizados no projeto.
- `DataExplore/`: Códigos MatLab e Python para gerar figuras, tabelas e os atributos utilizados.
- `Models/`: Códigos para modelagem da rede neural, testes da rede, e logs de execução.
- `Models/TrainedModel`: Modelos treinados, com desempenho bom e ruim.

## Como Utilizar

O Notebook modelOptimizer testa várias configurações para o modelo, usando o GridSearchCV do Keras. O Notebook model gera um modelo definitivo com essas configurações e faz o teste com uma base de dados de teste. O final do código carrega configurações específicas e aplica a rede à toda a base.

## Contribuições

Contribuições para este projeto são bem-vindas. Se você deseja colaborar, envie um Pull Request. Este código é público para ser utilizado em trabalhos futuros e aplicados à conjuntos maiores de dados.

## Contato

O contato pode ser feito via email institucional, Grezewave@ufmg.br

## Resumo do trabalho

Sinais eletroencefalográficos (EEG) são notoriamente complexos, variando significativamente entre indivíduos e atividades cerebrais. Sua baixa amplitude torna-os suscetíveis a ruídos, dificultando a interpretação e classificação, especialmente por inspeção visual. No entanto, o EEG é valioso para diagnósticos médicos, incluindo em recém-nascidos. Neste contexto, o trabalho aborda classificação de padrões de EEG neonatal em duas classes: High Voltage Slow (HVS) e Tracé Alternat (TA). O objetivo do projeto é extrair características relevantes no domínio do tempo e frequência dos sinais EEG. Isso envolve a aplicação de conhecimentos de Algoritmos, Estruturas de Dados, Análise de Sistemas Dinâmicos Lineares, Processamento Digital de Sinais e Probabilidade e Estatística, além de conceitos de neurofisiologia. Foi desenvolvido um classificador de EEG neonatal com deep learning. A rede neural desenvolvida destaca a importância do volume de dados no treinamento de modelos de machine learning. A conclusão discute a eficiência de redes neurais na classificação de EEG neonatal em HVS e TA. Estudos adicionais são necessários para expandir o conjunto de dados e explorar diferentes configurações de rede. O projeto visa contribuir para a compreensão e diagnóstico de distúrbios neurológicos em recém-nascidos por meio de técnicas avançadas de processamento de sinais e aprendizado profundo. A análise de sinais de EEG oferece insights valiosos para a área médica e demonstra o potencial das técnicas de machine learning e deep learning na medicina. 
