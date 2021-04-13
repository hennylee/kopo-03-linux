

## IaaS란?
- 구글 클라우드 infrastructure : https://cloud.google.com/security/infrastructure/?hl=ko

- PaaS, SaaS의 기반이 되는 기술로 서버/스토리지 등의 인프라를 원하는 만큼 자원을 빌려쓸 수 있는 것이다. 

- 물리적 서버, 스토리지 등을 가상화하여 고객에게 서비스 


## 구글클라우드로 IaaS 경험해보기

- 구글 클라우드 플랫폼 : https://console.cloud.google.com/getting-started?hl=ko&pli=1

- 중지만 하면 과금이 되기 때문에, 정지를 시켜야 하는 점 유의해야 한다.


## VM 인스턴스 만들기

- Compute Engine

![image](https://user-images.githubusercontent.com/77392444/114482494-a29df400-9c41-11eb-8993-b7c52cf663f2.png)

- 새 인스턴스 만들기

![image](https://user-images.githubusercontent.com/77392444/114482737-0d4f2f80-9c42-11eb-8102-bb574e7e44d7.png)

- HTTP 트래픽 허용 : 80포트 열어주기
  - VMWare와 다르게 포트를 마음대로 열고 닫을 수 없다. 

- 만들어진 인스턴스 확인

![image](https://user-images.githubusercontent.com/77392444/114483288-0bd23700-9c43-11eb-900b-4cd47c219051.png)

- SSH 연결

![image](https://user-images.githubusercontent.com/77392444/114483363-2b695f80-9c43-11eb-8767-56c5148a8170.png)

- VM 세부 설정 보기

  - 내부 IP : 내부적으로 접근
  - 외부 IP : 

- 네트워크 인터페이스 세부 정보

![image](https://user-images.githubusercontent.com/77392444/114483493-68355680-9c43-11eb-88f8-0d73dc51d178.png)

- 방화벽 추가하기 : tomcat 송/수신

![image](https://user-images.githubusercontent.com/77392444/114483926-37a1ec80-9c44-11eb-82dd-a894341dc80d.png)
