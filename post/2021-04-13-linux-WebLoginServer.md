


## jdk 환경변수 설정해주기

- 웹로직이 JAVA_HOME이라는 환경변수를 읽어서 실행하는 방식이기 때문에 JDK의 환경변수를 꼭 먼저 설정해줘야 한다.

- `C드라이브 - ProgramFiles - JAVA` 에서JDK 위치 확인하기

![image](https://user-images.githubusercontent.com/77392444/114503155-cecc6b80-9c67-11eb-98b1-36ce37fbfdd0.png)


- 시스템 변수에서 `JAVA_HOME` 환경변수 새로 만들기

![image](https://user-images.githubusercontent.com/77392444/114502842-59f93180-9c67-11eb-80eb-7575c78daa0d.png)


- `Path` 환경변수에 `JAVA_HOME` 추가하기

![image](https://user-images.githubusercontent.com/77392444/114502796-4a79e880-9c67-11eb-9f74-ffe266bc350b.png)

- 시스템 변수에서 `CLASSPATH` 환경변수 새로 만들기

![image](https://user-images.githubusercontent.com/77392444/114503236-ee639400-9c67-11eb-91a8-836e9085b479.png)

- 환경변수 잘 설정되었는지 확인하기

![image](https://user-images.githubusercontent.com/77392444/114503406-3a163d80-9c68-11eb-9bec-bc29aff1a273.png)



## Oracle의 WebLogic Sever 설치하기

- Oracle의 WebLogic Sever는 WAS의 일종이다.

- 다운로드 : https://www.oracle.com/kr/middleware/technologies/fusionmiddleware-downloads.html

- 압축풀기

- 압축 풀린 폴더 `fmw_14.1.1.0.0_wls_lite_Disk1_1of1` 를 jdk의 bin 폴더에 붙여넣기

- 관리자 권한으로 명령 프롬프트 실행하기

- 경로 이동 : `cd C:\Program Files\Java\jdk1.8.0_241\bin\fmw_14.1.1.0.0_wls_lite_Disk1_1of1` 

- jar 파일 실행 : `java -jar fmw_14.1.1.0.0_wls_lite_generic.jar`

![image](https://user-images.githubusercontent.com/77392444/114504516-f1f81a80-9c69-11eb-89b3-1baf669a9075.png)

- 계속 다음 버튼 클릭하여 설치 완료 하기

- 설치 완료되면 구성 마법사 실행하기 (비밀번호는 최소 한 개의 숫자 또는 특수 문자를 포함한 8자 이상의 영숫자여야 한다)

![image](https://user-images.githubusercontent.com/77392444/114505012-b447c180-9c6a-11eb-8e07-49395234302f.png)

- 설치 완료되면 base_domain (`C:\Oracle\Middleware\Oracle_Home\user_projects\domains\base_domain`) 에서 웹로직 실행하기

![image](https://user-images.githubusercontent.com/77392444/114505238-0983d300-9c6b-11eb-85c5-e3013b38735d.png)

- http://localhost:7001/console/login/LoginForm.jsp 에 접속하기

![image](https://user-images.githubusercontent.com/77392444/114505370-3f28bc00-9c6b-11eb-8370-467eb6558dbd.png)

- 설치할 때 설정했던 id/pw로 로그인 하기

![image](https://user-images.githubusercontent.com/77392444/114505463-62ec0200-9c6b-11eb-8fcd-30754815939d.png)

- 참고 블로그 : https://m.blog.naver.com/applej424/222090917540

## WebLogic 서버(WAS)에 웹어플리케이션 deploy하기

- base_domain에서 웹로직 실행하기
  - base_domain 위치 : `C:\Oracle\Middleware\Oracle_Home\user_projects\domains\base_domain`
  - 명령어 : `startWebLogic.cmd`

![image](https://user-images.githubusercontent.com/77392444/114505238-0983d300-9c6b-11eb-85c5-e3013b38735d.png)


- http://localhost:7001/console/login/LoginForm.jsp 접속해서 배치 클릭

![image](https://user-images.githubusercontent.com/77392444/114507000-8021d000-9c6d-11eb-8059-f26ca286e669.png)


- 파일 설치 버튼 눌러서 업로드하기

![image](https://user-images.githubusercontent.com/77392444/114507670-67fe8080-9c6e-11eb-810a-187e63e287bd.png)


- 만약 버전에 맞지 않는 파일을 deploy하면 아래와 같은 오류가 발생한다.

![image](https://user-images.githubusercontent.com/77392444/114506688-1e616600-9c6d-11eb-8f4b-c0f884196c5b.png)

- 새로운 war파일을 설치한다. 

![image](https://user-images.githubusercontent.com/77392444/114507609-4ef5cf80-9c6e-11eb-8cb2-4c15cd889beb.png)


- http://localhost:7001/설치한파일명 으로 접속했을때, 설치한 파일이 뜨면 deploy에 성공한 것이다. 

![image](https://user-images.githubusercontent.com/77392444/114507567-443b3a80-9c6e-11eb-8e60-d0adccaad80e.png)

