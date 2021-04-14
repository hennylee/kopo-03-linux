## WebServer와 Was

![image](https://user-images.githubusercontent.com/77392444/114024060-9535e200-98ae-11eb-8c26-f25a3887b00d.jpeg)

- 좀더 상세하게 표현하면 아래와 같은 구조를 갖는다.

![image](https://user-images.githubusercontent.com/77392444/114024458-0b3a4900-98af-11eb-913d-ba43be2a53bd.jpeg)



## Web Server의 역할
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

## Web Server 설치하기

- Apache 설치 : `apt-get install apache2`

- 설치된 버전 확인 : `apache2 -v`

- Apache 서비스 가동/멈춤/가동+멈춤 : `service apache2 start/stop/restart`

- 80포트 확인 : `netstat -ntlp`

## index 페이지 바꿔보기
- http://localhost 에 접속하면 나오는 페이지는 `located at /var/www/html/index.html` 에 있다.

- 해당 index.html 파일을 수정하면 static resource 페이지를 수정할 수 있다.

## WAS 설치하기

- Permission 변경 : `/etc/apache2/apache2.conf`에서 <Directory>에 관한 설정을 `denied -> granted` 로 변경하기

- 방화벽 해제 : `ufw allow 80`

- tomcat 설치 : `apt-get install tomcat9*`

- 접속 주소 : http://localhost:8080  

- tomcat 기본 경로 : `/var/lib/tomcat9/webapps/ROOT`

  - 해당 경로에 Application을 deploy하면 `ip번호:포트번호//Application명`로 접속 가능하다.

  - Application은 WAR파일로 deploy한다. 
  
  - WAS 설치에는 여러가지 목적이 있는데 EJB, Servlet...등을 지원하는 기능이 있다.

- 경로 변경 : `/etc/tomcat9/server.xml`


## WAR란

- WAR란 Web Application aRchive이다. 

- Web Application을 묶는 확장자이다. 

- 어플리케이션 실행을 위해 컴파일된 모든 클래스 파일, 설정 파일들이 모두 포함된다.

- 웹 어플리케이션 설정을 정의한 배포 명세서(web.xml)이 존재한다. 

- deploy는 WAS에게 다른 사용자가 이 서비스를 받을 수 있도록 너가 구동시켜줘라고 시키는 것이다. 이 앱을 deploy한다라고 하면 웹에서 구동되게 한다는 것이다. 

- 배포는 distribute : 서버에 가져다 두는 것

- deploy는 배포 후 동작하도록 WAS에게 명령하는것이다.


## Web Server 와 WAS 연결하기
- 현재는 Web Server와 WAS가 따로 동작하고 있다. 

- Apache의 라이브러리를 활용해서 WebServer와 WAS를 연결해볼 것이다. 

- Web Server와 WAS를 연동하는 첫 번째 이유는 static resource를 웹서버에서, dynamic resource를 WAS에서 처리하도록 하기 위함이다. 

- 
