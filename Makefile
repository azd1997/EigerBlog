# `make`
default:
	# 生成网站文件
	hugo;
	@echo '网站文件生成在public/下'; 
	# 临时保存.git与CNAME
	cp -fp website/CNAME mycustom/tmp/;
	cp -fp website/.git mycustom/tmp/123.txt;
	@echo 'CNAME、.git已备份至mycustom/tmp/下';
	pwd;
	# 清空原website文件，将所需文件复制入website
	cd website;pwd;rm -rf *;cd ../;
	@echo 'website下内容已清空';
	cp -rf public/. website;
	cp -fp mycustom/tmp/123.txt website/.git;
	cp -fp mycustom/tmp/CNAME website/;
	@echo 'website文件已全部生成';
	pwd;
	# git提交至远程仓库，更新笔记仓库、网站仓库、博客仓库
	# CUR_DATE = $(shell date '+%Y-%m-%d');
	@date=`date +%Y-%m-%d`;\
		echo "$${date}";\
		cd content/post/;pwd;\
		git add .;\
 		git commit -m "$${date}  update my blog notes";\
		git push;
	@date=`date +%Y-%m-%d`;\
		echo "$${date}";\
		cd website/;pwd;\
		git add .;\
 		git commit -m "$${date}  update my blog site eiger.me";\
		git push;
	@date=`date +%Y-%m-%d`;\
		echo "$${date}";\
		pwd;\
		git add .;\
 		git commit -m "$${date}  update my blog";\
		git push;
	# 注意：必须是双引号括起字符串，双$加花括号包住变量
	pwd;
	@echo '博客网站https://eiger.me更新完成';
