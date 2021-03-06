
## 서버란

- 서버에 접속하고 작동하는 방법

- 서버라는 것에는 무언가 서비스를 제공해주는 소프트웨어가 돌고 있다.

- 예를 들면, 웹서버한테 폴리텍 홈페이지를 보여줘 라고 요청하면 서버는 홈페이지는 보여주는 동작을 계속 수행하고 있는 것이다. 

- telnet관련 규칙에 맞게 보내면 telnet이라고 인식하고 telnet이 처리한다.

- 이때, 컴퓨터와 컴퓨터가 통신하는 규칙을 프로토콜이라고 한다.

- telnet의 문은 포트라고 한다. 


## telnet 서버 구축 과정

- 현재까지 사용하던 StandAlone 우분투는 Client서버로 사용할 것이고, 새로운 우분투는 Server로 사용할 것이다. 

**1. 설치**

**2. 설정 파일 작성**

**3. 텔넷을 입력이 들어오기만들 무한으로 기다리는 데몬(=서비스)**
  - xinetd : 텔넷의 데몬
  - systemctl : 데몬 관련 명령어
    - enable : 재부팅해도 계속 켜지도록 하겠다.
    - restart : 재부팅 (telnet설정파일을 반영하기 위해서 재부팅이 필요하다)
    - status : 상태 보기

**4. 방화벽 열기, 포트 허용하기**

**5. ip주소 찾기**
  - `ipconfig` : ip주소 확인하기
  - `apt install net-tools` : 만약 깔려있지 않다면 미리 설치해야 `ifconfig`를 사용할 수 있다.

![image](https://user-images.githubusercontent.com/77392444/113546609-4a566900-9627-11eb-8dac-f2f8c06f503e.png)

  - `inet` : ip주소이다.
  - `ens33`의 `inet` : 33랜카드가 꽂혀있는 ip주소이다. 
  - `lo`의 `inet` : 본인 자기자신을 의미하는 ip이다.


**6. 클라이언트 서버에서 telnet서버 접속해보기**

![image](https://user-images.githubusercontent.com/77392444/113547075-30695600-9628-11eb-81cb-d48b22273ace.png)

- telnet을 설치하 서버 말고 다른 client서버로 접속한다. 

- `ping 목적지ip` : 현재 접속된 네트워크에서 특정 호스트에 접근이 가능한지 확인한다. 

- `telnet 목적지ip 서비스port` : telnet서버로 접속

- `exit` : telnet서버 접속 종료
