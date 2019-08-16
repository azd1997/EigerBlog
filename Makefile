# `make`
default:
	@hugo;
	@echo '网站文件生成在public/下'; 
	cp -fp website/CNAME mycustom/tmp/;
	cp -rpf website/.git mycustom/tmp/;
	@echo 'CNAME、.git已备份至mycustom/tmp/下';
	pwd;
	cd website;pwd;rm -rf *;cd ../;pwd;
	@echo 'website下内容已清空';
	pwd;
	cp -rf public/. website;
	cp -rpf mycustom/tmp/.git website/;
	cp -fp mycustom/tmp/CNAME website/;
	@echo 'website文件已全部生成';
	ls;
	cd website/;ls;
	echo '111'
	ls;
	git add .;
	git commit -m 'update my blog site  https //eiger.me';
	git push;
	@echo '博客网站https //eiger.me更新完成';
