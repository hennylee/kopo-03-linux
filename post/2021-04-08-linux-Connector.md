# Webserver(ip1)에 다른 IP(ip2)의 WAS(tomcat9) 연동하기


## ServeC 컴퓨터에 tomcat9 설치하기

- 설치 : `sudo apt-get install tomcat9*`


## Standalone 컴퓨터 Connector에  ServeC 컴퓨터에 tomcat9을 worker로 등록하기

- 설정 파일 : `sudo vim /etc/libapache2-mod-jk/workers.properties`에서 내용 수정

![image](https://user-images.githubusercontent.com/77392444/113952687-18c0e600-9851-11eb-87d4-0308484f4528.png)


## Standalone 컴퓨터 apache2에 ServeC 컴퓨터에 tomcat9 worker url 패턴 등록하기

- 설정 파일 : `sudo vim /etc/apache2/sites-available/000-default.conf`

![image](https://user-images.githubusercontent.com/77392444/113956336-452c3080-9858-11eb-8327-6b26ffd53f59.png)



## ServeC 컴퓨터 tomcat9에 Standalone 컴퓨터의 connector 포트 열어주기

- 설정 파일 : `sudo vim /etc/tomcat9/server.xml`에서 커넥터 설정 추가

![image](https://user-images.githubusercontent.com/77392444/113952618-f4fda000-9850-11eb-8d1d-eb6edfe91429.png)

- 변경 설정 적용하기 위해 데몬 재시작 : `systemctl restart tomcat9`


# Webserver1 (ip0) - WAS1(ip1, port1), WAS2(ip2, port2) 연동하기

## 개요

- WebServer1 : Standalone (192.168.77.128)에 위치한 apache2

- Connector : Standalone (192.168.77.128)에 위치한 libapache2
  - libapache2라는 Connector는 apache2의 라이브러리이기 때문에 둘은 같은 컴퓨터(IP)에 위치해야 한다. 

- WAS1 : ServerA (192.168.77.131)에 위치한 tomcat9

- WAS2 : ServerC (192.168.77.130)에 위치한 tomcat9



## Standalone Connector worker 등록하기 (JkMount : url패턴으로 구분하는 방법)

- 설정 파일 : `sudo vim /etc/libapache2-mod-jk/workers.properties`

![image](https://user-images.githubusercontent.com/77392444/113960725-dbb02000-985f-11eb-9801-e077fdb7ad63.png)


## Standalone WebServer1에 worker 연결하기 (JkMount)

- 설정 파일 : `sudo vim /etc/apache2/sites-available/000-default.conf`

![image](https://user-images.githubusercontent.com/77392444/113959379-b7ebda80-985d-11eb-8efc-25846c47a295.png)


## WAS1

- tomcat9 설정파일에 connector 등록하기

- tomcat9 설정파일에 connector 등록하기

## WAS2

- tomcat9 설치하기 : `sudo apt-get install tomcat9*`

- tomcat9 설정파일에 connector 등록하기 : `sudo vim /etc/tomcat9/server.xml`

![image](https://user-images.githubusercontent.com/77392444/113961418-f6cf5f80-9860-11eb-856d-d03870135dbb.png)






# Standalone Connector worker 등록하기 (loadbalancing : 하나의 url인데 다른 서버로 돌리기)

## connector에서 loadbalancer worker들 묶어주기

- worker이름을 loadbalancer 이름으로 변경하기

![image](https://user-images.githubusercontent.com/77392444/113966644-70b81680-986a-11eb-8cf3-909cb7b6d2cb.png)

- loadbalancer로 묶을 worker들 등록하기

![image](https://user-images.githubusercontent.com/77392444/113966708-92190280-986a-11eb-9805-33d5960ccd3b.png)



## apache에서 loadbalancer worker 매핑해주기

![image](https://user-images.githubusercontent.com/77392444/113966757-a8bf5980-986a-11eb-8f53-eb96b1b25620.png)


## tomcat port번호 바꾸기

- severA는 port 8010

![image](https://user-images.githubusercontent.com/77392444/113966313-d7890000-9869-11eb-8509-b108d4dc5eb7.png)


## connector에 등록된 worker의 port번호 바꾸기

![image](https://user-images.githubusercontent.com/77392444/113966247-b32d2380-9869-11eb-962f-438b9d78b39d.png)


