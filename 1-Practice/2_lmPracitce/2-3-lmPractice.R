x1 = sample(1:10, 25, replace=TRUE) # ���ͲĤ@�Ӧ��ܼƪ� 25 �Ӽ˥���
y = 3+x1
x1
y
yx = data.frame(y, x1)�@# �� (y, x1) ���t��Φ� frame �ܼơA�o�ˤ~�వ�� lm(formula, data) ���� data �ѼơC
yx.model = lm(y~ x1, yx) # �}�l�@�u�ʰj�k���R
yx.model
abline(yx.model,lwd=2) #lwd:�u��
