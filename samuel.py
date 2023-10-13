import random
cartas = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10]
nome_1 = input("Informe o nome do primeiro jogador: ")
nome_2 = input("Informe o nome do segundo jogador: ")
pontos1 = []
pontos2 = []
vencedor = False
print(nome_1, "é a sua vez de jogar.")
while True:
    print("A sua pontuação atual é: ", sum(pontos1))
    escolha = input("Voce deseja uma nova carta ? ")
    if escolha == "não":
        print(nome_1, "sua vez já acabou", sum(pontos1))
        print("suas cartas são", pontos1)
        break
    elif escolha == "sim":
        pontos1.append(random.choice(cartas))
        print("suas cartas são: ", (pontos1))
    if sum(pontos1) > 21:
        print("Você ultrapassou o limite", nome_2, "ganhou.")
        vencedor = True
        break
print(nome_2, "é a sua vez de jogar.")
while True:
    print("A sua pontuação atual é: ", pontos2)
    escolha = input("Voce deseja uma nova carta ? ")
    if escolha == "não":
        print(nome_2, "sua vez já acabou", sum(pontos2))
        print("suas cartas são", pontos2)
        break
    elif escolha == "sim":
        pontos2.append(random.choice(cartas))
        print("suas cartas são:", (pontos2))
    if sum(pontos2) > 21:
        print("Você ultrapassou o limite", nome_1, "ganhou.")
        vencedor = True
        break
if not vencedor:
    if sum(pontos1) > sum(pontos2):
        print(nome_1, "Seus pontos foram: ", pontos1, ", você venceu")
        if sum(pontos2) > sum(pontos1):
            print(nome_2, "Seus pontos foram: ", pontos2, ", você venceu")
