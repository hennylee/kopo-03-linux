## Web Server의 역할
- Static resource
  - Web Server에서 Static Resource 처리를 빨리 해준다.

- Security
  - 방화벽 바깥에 Web Server를 위치시키고, WAS와 DB는 방화벽 안쪽에 배치시킨다. 
  - WAS의 주소가 직접 노출되지 않기 때문에 보안이 강화된다. 
  - SSL이라는 https의 s가 SSL을 의미한다. 
  - 이것을 Web Server가 속도가 빠르기 때문에 처리한다. 

- Load balancing
  - WAS의 부하가 심하지 않도록 여러 개의 WAS 서버에 적절하게 업무를 분배해 주는 것이다.
  - 이로 인해 한정된 자원을 효율적으로 사용할 수 있게 된다. 


## Web Server 설치하기

- `apt-get install apache2`


## index 페이지 바꿔보기
- http://localhost에 접속하면 나오는 페이지는 `located at /var/www/html/index.html` 에 있다.



## WAS 설치하기

## sevlet이란?
- WAS 설치에는 여러가지 목적이 있는데 EJB, Servlet...등을 지원하는 기능이 있다.
- Framework는 네트워크, transaction를 밑단에서 처리해준다.
- 처음에는 EJB(Enterprise Java Bean)이 있었다.
- 이후 웹기반 Servlet이라는 프레임워크가 생겼다. 
- 스프링 프레임워크는 Servlet을 더욱 쉽게 이용할 수 있게 해준 것이다. 
- 스프링 프레임워크 내부적으로는 Servlet이 동작한다.

## Applications
- `ip번호:포트번호//Application명`

- Application은 WAR파일로 되어 있다. 

## WAR란

- WAR란 Web Application aRchive이다. 

- Web Application을 묶는 확장자이다. 

- 어플리케이션 실행을 위해 컴파일된 모든 클래스 파일, 설정 파일들이 모두 포함된다.

- 웹 어플리케이션 설정을 정의한 배포 명세서(web.xml)이 존재한다. 

- deploy는 WAS에게 다른 사용자가 이 서비스를 받을 수 있도록 너가 구동시켜줘라고 시키는 것이다. 이 앱을 deploy한다라고 하면 웹에서 구동되게 한다는 것이다. 

- 배포는 distribute : 서버에 가져다 두는 것

- deploy는 배포 후 동작하도록 WAS에게 명령하는것이다.

