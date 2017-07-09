
Grafana 

	SERVICE	|	Public	|	User	|	Password	
Falcon | `https://falcon-uic.xd.com/` | pingcap | yhlm!U$nDG 
	Grafana	|	`https://jk002.xd.com/grafana/`	|	`pingcap`	|	`rmMh7tcbrxV`	
Prometheus | `http://10.30.1.4:9090` | | 

----

修改 自己电脑hosts文件 

60.205.86.149 | falcon-portal.xd.com 
60.205.86.149 | falcon-uic.xd.com  
60.205.86.149 | falcon-dashboard.xd.com 


AlertManager 

Service	|	Public 	
	Alertmanger	|	`http://office.pingcap.net:39093/#/alerts`	







登录方式 

- 先登陆到 office 113 机器，然后登录到跳板机
- tsh --proxyteleport.xindong.com --userpingcap ssh pingcap@51x001.xd.cn
- 需要token（找申砾）
- 然后在 ssh 到其他机器
- ssh pingcap@51x022.xd.cn

- 先登陆到 office 161 机器，然后登录到跳板机
- tsh --proxyteleport.xindong.com --userliuyin ssh pingcap@51x001.xd.cn
- 需要token（找刘寅）
- 然后在 ssh 到其他机器
- ssh pingcap@51x022.xd.cn


服务启停方式 

