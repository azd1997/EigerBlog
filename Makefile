# make
default:
	# ������վ�ļ�
	cd public;pwd;rm -rf *;cd ../;
	hugo;
	echo "�Ʋ����ʵ�";
	@echo -e "��վ�ļ�������public/��";
	# ��ʱ����.git��CNAME
	cp -fp website/CNAME mycustom/tmp/;
	cp -fp website/.git mycustom/tmp/123.txt;
	@echo 'CNAME��.git�ѱ�����mycustom/tmp/��';
	pwd;
	# ���ԭwebsite�ļ����������ļ�������website
	cd website;pwd;rm -rf *;cd ../;
	@echo 'website�����������';
	cp -rf public/. website;
	cp -fp mycustom/tmp/123.txt website/.git;
	cp -fp mycustom/tmp/CNAME website/;
	@echo 'website�ļ���ȫ������';
	pwd;
	# git�ύ��Զ�ֿ̲⣬���±ʼǲֿ⡢��վ�ֿ⡢���Ͳֿ�
	# CUR_DATE = $(shell date '+%Y-%m-%d');
	@date=`date +%Y-%m-%d`;\
		@echo "$${date}";\
		cd content/post/;pwd;\
		git add .;\
 		git commit -m "$${date}  update my blog notes";\
		git push;
	@date=`date +%Y-%m-%d`;\
		@echo "$${date}";\
		cd website/;pwd;\
		git add .;\
 		git commit -m "$${date}  update my blog site eiger.me";\
		git push;
	@date=`date +%Y-%m-%d`;\
		@echo "$${date}";\
		pwd;\
		git add .;\
 		git commit -m "$${date}  update my blog";\
		git push;
	# ע�⣺������˫���������ַ�����˫$�ӻ����Ű�ס����
	pwd;
	@echo '������վhttps://eiger.me�������';
