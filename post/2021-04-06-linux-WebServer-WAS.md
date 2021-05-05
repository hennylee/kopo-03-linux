
## 1. Web Server란?

![image](https://user-images.githubusercontent.com/77392444/117099257-ab4e9980-adab-11eb-9d49-7beb6f65abe4.png)

- 클라이언트의 요청이 들어올 때, 가장 앞단에서 요청에 대한 처리를 하는 서버이다. 

- 클라이언트의 요청을 기다리고 요청에 대한 데이터를 만들어서 응답하는 역할을 한다. 

- 주로 바뀌지 않는 정적 콘텐츠를 제공하는 서버이다. 

## 2. WAS란?

![image](https://user-images.githubusercontent.com/77392444/117099273-b5709800-adab-11eb-9e05-9770981d0a73.png)


- Web Application Server의 약자로, 어플리케이션을 동작할 수 있도록 지원하는 서버이다. 

- WAS는 동적인 페이지를 주로 표현한다. 

- WAS란 실제로 처리해야 하는 비즈니스 로직이 올라가는 서버이다. 



## 3. WebServer와 Was

- 웹서버와 WAS서버의 관계는 주로 아래와 같다. 

![image](https://user-images.githubusercontent.com/77392444/114024060-9535e200-98ae-11eb-8c26-f25a3887b00d.jpeg)

- 좀더 상세하게 표현하면 아래와 같은 구조를 갖는다.

![image](https://user-images.githubusercontent.com/77392444/114024458-0b3a4900-98af-11eb-913d-ba43be2a53bd.jpeg)



## 4. Web Server의 역할
- Static resource
  - DB까지 가지 않는 그림파일,  text 등의 정보 전달을 담당한다. 
  - Web Server에서 Static Resource은 빠르게 처리할 수 있다.

- Security
  - 방화벽 바깥에 Web Server를 위치시키고, WAS와 DB는 방화벽 안쪽에 배치시킨다. 
  - WAS의 주소가 직접 노출되지 않기 때문에 보안이 강화된다. 
  - SSL처리를 해준다. https의 s가 SSL을 의미한다. 

- Load balancing
  - WAS의 부하가 심해지지 않도록 하나의 Webserver가 여러 개의 WAS 서버에 적절하게 업무를 분배해 줄 수 있다.
  - 이로 인해 한정된 자원을 효율적으로 사용할 수 있게 된다. 


## 5. Web Server 설치하기

```
- os : 우분투
- WebServer : Apache
- ip : 192.168.119.113
```

- Apache 설치 : `apt-get install apache2`

- 설치된 버전 확인 : `apache2 -v`

- Apache 서비스 가동/멈춤/가동+멈춤 : `service apache2 start/stop/restart`

- 80포트 확인 : `netstat -ntlp`

- Permission 변경 : `/etc/apache2/apache2.conf`에서 <Directory>에 관한 설정을 `denied -> granted` 로 변경하기

![image](https://user-images.githubusercontent.com/77392444/117101756-e227ae00-adb1-11eb-9f3d-669084887bd0.png)

- 방화벽 해제 : `ufw allow 80`


## 6. Web Server index 페이지 바꿔보기
- http://localhost 에 접속하면 나오는 페이지는 located at `/var/www/html/index.html` 에 있다.

- 해당 index.html 파일을 수정하면 static resource 페이지를 수정할 수 있다.



## 7. WAS 설치하기

```
- os : 우분투
- WAS : tomcat
- ip : 192.168.119.112
```

- tomcat 설치 : `apt-get install tomcat9*`

- Apache 서비스 가동/멈춤/가동+멈춤 : `service tomcat9 start/stop/restart`

- 8080포트 확인 : `netstat -ntlp`

- 방화벽 해제 : `ufw allow 8080`

- 접속 주소 : http://localhost:8080  

- tomcat 기본 경로 : `/var/lib/tomcat9/webapps/ROOT`

  - 해당 경로에 Application을 deploy하면 `ip번호:포트번호//Application명`로 접속 가능하다.

  - Application은 WAR파일로 deploy한다. 
  
  - WAS 설치에는 여러가지 목적이 있는데 EJB, Servlet...등을 지원하는 기능이 있다.

- 경로 변경 : `/etc/tomcat9/server.xml`


## 8. WAS에 WAR파일 배포하기

### 8.1 WAR란?
- WAR란 Web Application aRchive이다. 

- Web Application을 묶는 확장자이다. 

- 어플리케이션 실행을 위해 컴파일된 모든 클래스 파일, 설정 파일들이 모두 포함된다.

- 웹 어플리케이션 설정을 정의한 배포 명세서(web.xml)이 존재한다. 

- deploy는 WAS에게 다른 사용자가 이 서비스를 받을 수 있도록 너가 구동시켜줘라고 시키는 것이다. 이 앱을 deploy한다라고 하면 웹에서 구동되게 한다는 것이다. 

- 배포는 distribute : 서버에 가져다 두는 것

- deploy는 배포 후 동작하도록 WAS에게 명령하는것이다.



### 8.2. WAR 파일 Deploy하기

- tomcat sample WAR파일을 활용할 것이다. 

- 샘플 파일 다운로드 : https://tomcat.apache.org/tomcat-6.0-doc/appdev/sample/

- tomcat webapps 폴더로 sample WAR 파일 옮기기 : `mv /home/henny/Downloads/sample.war /var/lib/tomcat9/webapps/sample.war`

![image](https://user-images.githubusercontent.com/77392444/117108422-1c974800-adbe-11eb-8cd5-4f1e37769fd8.png)


- http://localhost:8080/sample/ 로 접속해보면 sample파일이 정상적으로 배포된 것을 알 수 있다. 

![image](https://user-images.githubusercontent.com/77392444/117108466-2b7dfa80-adbe-11eb-9fd7-c34e049055fd.png)


## 9. Web Server 와 WAS 연결하기

- 현재는 Web Server와 WAS가 따로 동작하고 있다. 

- Apache의 라이브러리를 활용해서 WebServer와 WAS를 연결해볼 것이다. 

- Web Server와 WAS를 연동하는 첫 번째 이유는 static resource를 웹서버에서, dynamic resource를 WAS에서 처리하도록 하기 위함이다. 


### 9.1 Connector 설치 

- 설치 : `sudo apt-get install libapache2-mod-jk*`

- Apache Web Server Connector 설정 : 
  - `vim /etc/libapache2-mod-jk/workers.properties`에서 workers 등록, JAVA 등 기본 디렉토리 설정

![image](https://user-images.githubusercontent.com/77392444/117105488-13f04300-adb9-11eb-96cf-295a1bc1530d.png)

![image](https://user-images.githubusercontent.com/77392444/113952687-18c0e600-9851-11eb-87d4-0308484f4528.png)


### 9.2 Tomcat WAS 설정
- `sudo vim /etc/tomcat9/server.xml`에서 커넥터 설정 추가

```shell
<!-- Define an AJP 1.3 Connector on port 8009 -->

<Connector protocol="AJP/1.3"
           port="8009"
        redirectPort="8443"
        address="0.0.0.0" secretRequired="false"/>
```


![image](https://user-images.githubusercontent.com/77392444/117107095-fec8e380-adbb-11eb-8dee-5bf51b334d1d.png)



### 9.2 Apache Web Server 설정 

- `vim /etc/apache2/mods-available/jk.load`에 아래 내용을 추가한다.

```shell
LoadModule jk_module /usr/lib/apache2/modules/mod_jk.so
JkWorkersFile /etc/libapache2-mod-jk/workers.properties
JkLogFile /var/log/apache2/mod_jk.log
JkLogLevel info
JkShmFile /var/log/apache2/jk-runtime-status
```

![image](https://user-images.githubusercontent.com/77392444/117106850-895d1300-adbb-11eb-9e1b-b263e0de34ae.png)


- `vim /etc/apache2/mods-available/httpd-jk.conf`에서 아래 내용을 추가한다. (있으면 생략)

```shell
<IfModule jk_module>

    # We need a workers file exactly once
    # and in the global server
    JkWorkersFile /etc/libapache2-mod-jk/workers.properties
```

- `vim /etc/apache2/sites-available/000-default.conf`에서 연동될 url 패턴(JkMount)를 등록한다.

  - 정적인 파일은 웹서버(Apache)의 파일이 실행되도록 하고,
  - 동적인 파일은 WAS(tomcat)의 파일이 실행되도록 할 것이다. 

```shell
ServerName 127.0.0.1
ServerAdmin webmaster@localhost
DocumentRoot /var/www/html
# JkMount /* ajp13_worker
JkMount /sample/* was_worker
```

![image](https://user-images.githubusercontent.com/77392444/117106961-c1645600-adbb-11eb-92b9-74628b6978f9.png)


### 9.4 연동 확인

- Apache가 깔린 Web Server 에서 `http://localhost/sample/`로 접속하면 tomcat이 깔린 WAS 서버의 내용이 열림


- Web Server 에서의 `http://localhost/sample/`

![image](https://user-images.githubusercontent.com/77392444/117109522-c3c8af00-adbf-11eb-9d9c-d0c8df49ca26.png)


- WAS 에서의 `http://localhost/sample/`
![image](https://user-images.githubusercontent.com/77392444/117109551-cdeaad80-adbf-11eb-8ed1-6cedbd5a3afb.png)



- 기타 링크 : https://github.com/hennylee/kopo-03-linux/blob/main/post/2021-04-08-linux-Connector.md
