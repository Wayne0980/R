x1 = sample(1:10, 25, replace=TRUE) # ���ͲĤ@�Ӧ��ܼƪ� 25 �Ӽ˥���
x2 = sample(1:8, 25, replace=TRUE) # ���ͲĤG�Ӧ��ܼƪ� 25 �Ӽ˥���
y = 5 + 3 * x1 - 2 * x2 # �γo�� (x1, x2) �˥��z�L�u�����Y������ y �˥��A�o�O�������u�����Y�A�����S���~�t�C
x1
x2
y
yx12 = data.frame(y, x1, x2)�@# �� (y, x1, x2) ���t��Φ� frame �ܼơA�o�ˤ~�వ�� lm(formula, data) ���� data �ѼơC
yx12.model = lm(y~x1+x2, yx12) # �}�l�@�u�ʰj�k���R
yx12.model
