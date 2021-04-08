# Webserver에 다른 IP의 tomcat 연동하기


## ServeC 컴퓨터에 tomcat9 설치하기

- 설치 : `sudo apt-get install tomcat9*`


## Standalone 컴퓨터 Connector에  ServeC 컴퓨터에 tomcat9을 worker로 등록하기

- 설정 파일 : `sudo vim /etc/libapache2-mod-jk/workers.properties`에서 내용 수정

![image](https://user-images.githubusercontent.com/77392444/113952687-18c0e600-9851-11eb-87d4-0308484f4528.png)


## Standalone 컴퓨터 apache2에 ServeC 컴퓨터에 tomcat9 worker url 패턴 등록하기

![image](https://user-images.githubusercontent.com/77392444/113956336-452c3080-9858-11eb-8327-6b26ffd53f59.png)



## ServeC 컴퓨터 tomcat9에 Standalone 컴퓨터의 connector 포트 열어주기

- 설정 파일 : `sudo vim /etc/tomcat9/server.xml`에서 커넥터 설정 추가

![image](https://user-images.githubusercontent.com/77392444/113952618-f4fda000-9850-11eb-8d1d-eb6edfe91429.png)

- 변경 설정 적용하기 위해 데몬 재시작 : `systemctl restart tomcat9`
