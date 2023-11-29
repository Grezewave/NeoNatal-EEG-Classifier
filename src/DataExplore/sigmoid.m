x = [-10:0.001:10];
y = 1 ./ (1 + exp(-x));


plot(x, y);

ylim([-1, 2]);

title('Função sigmoid');

set(gcf, 'Position', [100, 100, 800, 600]);

set(gcf, 'PaperSize', [800, 400]);

print('funcao_sigmoid.pdf', '-dpdf', '-r600');