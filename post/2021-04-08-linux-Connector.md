
## ServeC 컴퓨터에 tomcat9 설치하기

- 설치 : `sudo apt-get install tomcat9*`

- 설정 파일 : `sudo vim /etc/tomcat9/server.xml`에서 커넥터 설정 추가

![image](https://user-images.githubusercontent.com/77392444/113952618-f4fda000-9850-11eb-8d1d-eb6edfe91429.png)

- 변경 설정 적용하기 위해 데몬 재시작 : `systemctl restart tomcat9`

## Standalone 컴퓨터 Connector에 ServerC의 tomcat 정보 추가하기

- 설정 파일 : `sudo vim /etc/libapache2-mod-jk/workers.properties`에서 내용 수정

![image](https://user-images.githubusercontent.com/77392444/113952687-18c0e600-9851-11eb-87d4-0308484f4528.png)

