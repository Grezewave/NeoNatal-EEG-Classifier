##  Final Project (PFC) - Control and Automation Engineering - UFMG

## Deep Learning for EEG Signal Classification

This repository contains the code and resources related to my Final Project (PFC) for the Control and Automation Engineering course at the Universidade Federal de Minas Gerais (UFMG). The objective of this project is to apply Deep Learning techniques for the classification of EEG (Electroencephalogram) signals, extracting relevant signal attributes for classification. The data used cannot be shared due to compliance and privacy issues.

## Content

The repository is organized as follows:

- `Data/`: Folder containing the EEG data used in the project (Hidden and not shared).
- `DataExplore/`: MatLab and Python codes to generate figures, tables and the attributes used.
- `Models/`: Codes for neural network modeling, network testing, and execution logs.
- `Models/TrainedModel`: Trained models, with good and poor performance.

## How to Use

The `modelOptimizer` notebook tests several configurations for the model, using Keras' GridSearchCV. The `model` notebook generates a definitive model with these configurations and performs the test with a test dataset. The end of the code loads specific configurations and applies the network to the entire database.

## Contributions

Contributions to this project are welcome. If you wish to collaborate, please submit a Pull Request. This code is public to be used in future works and applied to larger datasets.

## Contact

Contact can be made via institutional email, Grezewave@ufmg.br

## Summary of the work

Electroencephalographic (EEG) signals are notoriously complex, varying significantly across individuals and brain activity. Their low amplitude makes them susceptible to noise, making interpretation and classification difficult, especially by visual inspection. However, EEG is valuable for medical diagnoses, including in newborns. In this context, the work addresses the classification of neonatal EEG patterns into two classes: High Voltage Slow (HVS) and Tracé Alternat (TA). The objective of the project is to extract relevant features in the time and frequency domain of EEG signals. This involves applying knowledge of Algorithms, Data Structures, Linear Dynamic System Analysis, Digital Signal Processing and Probability and Statistics, as well as concepts of neurophysiology. A neonatal EEG classifier with deep learning was developed. The developed neural network highlights the importance of data volume in training machine learning models. The conclusion discusses the efficiency of neural networ



# Projeto de Conclusão de Curso (PFC) - Engenharia de Controle e Automação - UFMG

## Deep Learning para Classificação de Sinais de EEG

Este repositório contém o código e recursos relacionados ao meu Projeto de Conclusão de Curso (PFC) para o curso de Engenharia de Controle e Automação na Universidade Federal de Minas Gerais (UFMG). O objetivo deste projeto é aplicar técnicas de Deep Learning para a classificação de sinais de EEG (Eletroencefalograma), extraindo atributos dos sinais relevantes para classificação. Os dados utilizados não podem ser compartilhados por questão de compliance e privacidade.

## Conteúdo

O repositório é organizado da seguinte forma:

- `Data/`: Pasta contendo os dados do EEG utilizados no projeto (Oculto e não compartilhado).
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
