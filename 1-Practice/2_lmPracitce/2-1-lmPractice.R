x = sample(1:10,25,replace=TRUE) # �q 1 �� 10 �����i���ƪ��H����X 25 �Ӽ˥�
x
y = 1+3*x�@ # �γo�� x �˥��z�L�u�����Y������ y �˥��A�o�O�������u�����Y�A�����S���~�t�C
y
plot(x,y)�@# �e�X (x,y) ���ϧΡA�z�|�o�{�Ҧ��I�������b�@���ײv�� 3 ���׽u�W
xy = data.frame(x, y)�@# �� (x,y) ���t��Φ� frame �ܼơA�o�ˤ~�వ�� lm(formula, data) ���� data �ѼơC
xy
model = lm(y~x, data=xy) # �}�l�@�u�ʰj�k���R
model�@ # ��ܤ��R���G�A�o�{ �I�Z intercept ���@1, �B x ���Y�Ƭ� 3�A�]�N�O y=1+3*x�A���T��X�ڭ̲��͸�ƥΪ��⦡�C
