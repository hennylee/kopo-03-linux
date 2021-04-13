

## IaaS란?

<img width="835" alt="image" src="https://user-images.githubusercontent.com/77392444/114500009-3aabd580-9c62-11eb-8cf0-15df22efd179.png">

- 구글 클라우드 infrastructure : https://cloud.google.com/security/infrastructure/?hl=ko

- PaaS, SaaS의 기반이 되는 기술로 서버/스토리지 등의 인프라를 원하는 만큼 자원을 빌려쓸 수 있는 것이다. 

- 물리적 서버, 스토리지 등을 가상화하여 고객에게 서비스를 인프라 형태로 제공하는 개념이다.

- VM을 할당해주고 스토리지, 네트워크 등 서비스 인프라를 제공해주는 것이다. 



## 구글클라우드로 IaaS 경험해보기

- 구글 클라우드 플랫폼 : https://console.cloud.google.com/getting-started?hl=ko&pli=1

- 중지만 하면 과금이 되기 때문에, 정지를 시켜야 하는 점 유의해야 한다.


## VM 인스턴스 만들기

- Compute Engine

![image](https://user-images.githubusercontent.com/77392444/114482494-a29df400-9c41-11eb-8993-b7c52cf663f2.png)

- 새 인스턴스 만들기

![image](https://user-images.githubusercontent.com/77392444/114482737-0d4f2f80-9c42-11eb-8102-bb574e7e44d7.png)

- 만들어진 인스턴스 확인

![image](https://user-images.githubusercontent.com/77392444/114483288-0bd23700-9c43-11eb-900b-4cd47c219051.png)

- SSH 연결 : 클라우드 내에서 생성된 vm서버환경에 접속하는 것이다.

![image](https://user-images.githubusercontent.com/77392444/114483363-2b695f80-9c43-11eb-8767-56c5148a8170.png)

- VM 세부 설정 보기

  - 내부 ip : 내PC가 내부에서 사용하기 위해 할당받은 ip입니다.
  - 외부 ip : 내PC가 외부에서 사용하기 위해 할당받은 ip입니다.

- 네트워크 인터페이스 세부 정보

![image](https://user-images.githubusercontent.com/77392444/114483493-68355680-9c43-11eb-88f8-0d73dc51d178.png)

- 방화벽 추가하기 
  - tomcat 80포트 열어주기
  - tomcat 송/수신 두 개를 모두 허용해야 한다.
  - VMWare와 다르게 포트를 마음대로 열고 닫을 수 없다. 
  - IP범위는 `0.0.0.0/0`으로 서브넷 마스크까지 작성해주어야 한다.

![image](https://user-images.githubusercontent.com/77392444/114483926-37a1ec80-9c44-11eb-82dd-a894341dc80d.png)


## VM 인스턴스에 apache2 설치하기

- 인스턴스 SSH 접속하기

- apache2 설치하기 : `sudo apt-get install apache2`

![image](https://user-images.githubusercontent.com/77392444/114484317-f231ef00-9c44-11eb-98af-94c746d1a21b.png)

- http://34.64.119.238/ 로 접속

- index.html 변경하기 : `/var/www/html/index.html`


## VM 인스턴스에 tomcat9 설치하기

- 인스턴스 SSH 접속하기

- tomcat9 설치하기 : `sudo apt-get install tomcat9*`

![image](https://user-images.githubusercontent.com/77392444/114485333-b8fa7e80-9c46-11eb-8ee5-b70b246e2849.png)

- http://34.64.119.238:8080/ 로 접속

![image](https://user-images.githubusercontent.com/77392444/114485625-358d5d00-9c47-11eb-8ecb-4ad9dc497ce9.png)

- index.html 변경하기 : `/var/lib/tomcat9/webapps/ROOT/index.html`






## WebServer와 WAS에 WebApplication 올려보기

- apache도 쓰고 tomcat도 써서 static resource와 dynamic resource를 분배하여 처리하는 효율적인 프로그램을 만들어보는 것이 목적이다.

- 즉 `/MyFirstApp/*`으로 들어오는 요청만 WAS로 보내고, 나머지는 다 Webserver가 받는 방식으로 만들어볼 것이다. 

### WAR파일 tomcat에 deploy하기

```
방법 1. scp 명령어로 WAR 파일 다운로드 받아서 root폴더에 위치시키기
방법 2. GUI Manager를 활용해 deploy하기
```

#### scp 명령어로 WAR 파일 복사해서 deploy하기

`scp HP@192.168.217.33:/C:/Users/HP/Downloads/MyFirstApp.war iamsunny7514@34.64.119.238:/home/iamsunny7514/var/lib/tomcat9/webapps/ROOT/test/MyFirstApp.war`로 시도 했으나 실패함!


#### GUI Manager를 활용해서 deploy하기

- Manager-gui User 등록하기 : `sudo vim tomcat-users.xml`
   - username은 tomcat, password는 1111로 유저 등록을 하였다. 
  
![image](https://user-images.githubusercontent.com/77392444/114489640-7046c380-9c4e-11eb-8b38-1ac3baf24953.png)

- manager webapp 또는 host-manager webapp 페이지로 접속하기

![image](https://user-images.githubusercontent.com/77392444/114489753-a4ba7f80-9c4e-11eb-846f-05ab84f4a9a4.png)

- 로그인하기 : `tomcat-users.xml`에 등록해둔 username과 password 입력하기

![image](https://user-images.githubusercontent.com/77392444/114489779-b00dab00-9c4e-11eb-8ff3-57797b0f4c72.png)

- WAR 파일 deploy하기 

![image](https://user-images.githubusercontent.com/77392444/114489908-e3503a00-9c4e-11eb-8589-6945d5dfe35c.png)


### apache2에 static resouce 만들기

- `/var/www/html`폴더 내에 static resource 폴더 및 파일 만들기

![image](https://user-images.githubusercontent.com/77392444/114490506-f1eb2100-9c4f-11eb-963d-5dcc4728a589.png)


### connector로 연결하기

- Apache와 Tomcat을 연결하는 connector 모듈 다운로드 : `sudo apt-get install libapache2-mod-jk*`

![image](https://user-images.githubusercontent.com/77392444/114491158-13004180-9c51-11eb-81ed-98714a9ad875.png)

- tomcat의 별칭 설정해서 worker로 등록하기 : `/etc/libapache2-mod-jk/workers-properties` 

![image](https://user-images.githubusercontent.com/77392444/114491576-cb2dea00-9c51-11eb-9a9c-f69d2ed28e73.png)


- apache2에 JkMount 설정하기(URL 패턴) : `/etc/apache2/sites-available/000-default.conf`

![image](https://user-images.githubusercontent.com/77392444/114491840-4b544f80-9c52-11eb-859b-642e4e2fc92e.png)

- apache2에 workers.properties 위치 설정하기 : `/etc/apache2/mods-enabled/jk.conf`파일 만들어서 아래 내용 작성하기

![image](https://user-images.githubusercontent.com/77392444/114492268-36c48700-9c53-11eb-9203-637cbef20112.png)

- apache2에 JkWokersFile, LogFile, LogLevel, ShmFile 설정해주기 : `/etc/apache2/mods-available/jk.load`

![image](https://user-images.githubusercontent.com/77392444/114492440-928f1000-9c53-11eb-88c1-b01590ba2890.png)


- tomcat에 connector의 port와 protocol로 오는 요청을 수신하라고 설정하기  : `/etc/tomcat9/server.xml`

![image](https://user-images.githubusercontent.com/77392444/114492860-645e0000-9c54-11eb-94ea-4b430cc64504.png)

- 설정이 완료되면 `http://34.64.119.238/MyFirstApp/`로 접속했을 때, apache2의 MyFirstApp이 아니라 tomcat9의 MyFirstApp.war파일이 나온다.
