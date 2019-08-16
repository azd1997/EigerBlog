# `make`
default:
	@hugo;
	@echo '网站文件生成在public/下'; 
	@cp -fp website/CNAME mycustom/tmp/;
	@cp -rpf website/.git mycustom/tmp/;
	@echo 'CNAME、.git已备份至mycustom/tmp/下';
	@cd website;rm -rf *;cd ../
	@echo 'website下内容已清空';
	@cp -rf public/. website;
	@cp -rpf mycustom/tmp/.git website/;
	@cp -fp mycustom/tmp/CNAME website/;
	@echo 'website文件已全部生成';
	cd website;
	@git add .;
	@git commit -m 'update my blog site  https //eiger.me';
	@git push;
	@echo '博客网站https //eiger.me更新完成';
