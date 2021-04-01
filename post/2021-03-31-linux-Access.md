
## 사용자 관리
- 리눅스는 다중 사용자 시스템이기 때문에 서버 1대에 여러 사용자가 동시에 접속할 수 있다.

- 슈퍼 유저는 사용자 생성 뿐 아니라 모든 작업을 실행할 수 있는 권한이 있다. 

- 사용자 / 그룹 : 모든 사용자는 1개 이상의 그룹에 속한다. 

- `cat /etc/passwd` : 사용자 정보를 본다.

- `cat /etc/group` : 그룹 정보를 본다.

  - 각 행은 `그룹이름:비밀번호:그룹 id:보조그룹 사용자`로 구성되어 있다. 
  
  - 그룹을 만드는 목적은 특정 커미션을 구분해서 부여하기 위함이다. 

- `cat /etc/shadow` : 사용자들의 비밀번호를 본다.

- `useradd`와 `adduser` : 사용자를 추가하는 명령어

- `sudo adduser 유저이름` : 유저가 먼저 만들어지고, 유저이름과 같은 이름의 그룹이 생성되어 유저가 해당 그룹에 추가된다. 
  
  - `--uid` : userID 옵션
  
  - `--gid` : groupID 옵션
  
  - `--home` : user의 홈 디렉토리를 설정하는 옵션
  
  - `--shell` : shell 종류를 설정하는 옵션

  - 새로 만든 사용자의 home directory는 /etc/skel과 동일하다
    
- `deluser`와 `userdel` : 사용자를 삭제하는 명령어

- `chage` : 사용자의 비밀번호를 주기적으로 변경하도록 설정하는 명려어

- `groups` : 사용자가 소속된 그룹을 보여주는 명령어


- `su` : 이전 계정의 HOME 디렉토리 환경변수를 유지한채로 사용자 계정 전환
  - `su - ` :  사용자 전환 전의 HOME 디렉토리 환경변수가 갱신되고 계정이 전환된다. 
  - `echo $HOME` : 계정별로 HOME 디렉토리 환경변수를 확인하는 방법
  - `echo $PATH` : Global한 시스템 PATH 환경변수를 확인하는 방법
  - `su` , `su -` : 뒤에 root는 생략할 수 있다.  
  
- `exit`을 통해 로그아웃하면 이전의 계정으로 접속된다. `su`를 통해 계정을 전환해도 로그아웃되는 것이 아니기 때문에 뒤에 계정이 숨어있는 것으로 볼 수 있다. 
![9B00CDE3-DEDF-44E0-9584-1F56699310A2](https://user-images.githubusercontent.com/77392444/113230215-7f835400-92d3-11eb-8eab-7b153ce29726.jpeg)


- `whoami` : 현재 접속된 계정이 무엇인지 알려줌

- `sudo passwd` : passwd를 변경하기

- `sudo`와 `su`는 다른 단어이다.
    - `sudo` : super user do
    - `su` : substitute user


## 파일의 소유와 허가권

- 파일 허가권 : 3개씩 끊어서 구분한다. 소유자 / 그룹 / 그외 사용자에 대해 각각 Read(4), Write(2), eXecute(1)의 권한을 2진법으로 표기한다. <br>
![image](https://user-images.githubusercontent.com/77392444/113228610-35e53a00-92d0-11eb-86ae-abb08bc0cf90.png)
  - 755 : rwx r-x r-x
  - 641 : rw- r-- --x
  - 554 : r-x r-x r--
  - 753 : rwx r-x -wx
  - 아예 소유그룹과 소유자의 권한을 따로 지정할수도 있다.

- `chmod` : 파일 허가권을 변경하는 명령어
  - `chmod 777 aaa.txt` : 숫자로 권한을 부여하는 방법
  - `chmod u/g/o + r/w/x aaa.txt` : [대상자+권한]로 권한을 부여하는 방법


- `chown` : 파일 소유권을 변경하는 명령어

- `chgrp` : 파일 그룹을 변경하는 명령어

## 링크

- 링크 : 바로가기와 같은 개념이다.

- i-node란? 파일이 생성될때마다 주어지는 고유의 번호이다.
  - `-i` : i옵션을 주면 i-node를 확인할 수 있다.
![image](https://user-images.githubusercontent.com/77392444/113235382-e443ac00-92dd-11eb-83a0-04325b4481a9.png)

- 리눅스에서 파일 구성 : `파일명` + `i-node` + `데이터 블록`


- test1, hard_test1, symbolic_test1 파일을 만들었을 때 i-node를 확인하면?

![image](https://user-images.githubusercontent.com/77392444/113235979-f6721a00-92de-11eb-9faa-e3c11782a2e6.png)

- 하드 링크 : 기존 파일에 새로운 파일을 추가로 생성하는 것이다. `i-node`와 `데이터블록`이 같은 파일이 추가로 생성된다.
  - `ls 원본파일명 심벌릭링크명`

- 심벌릭 링크 : 원본 파일을 가리키는 새로운 파일을 만드는 것이다. 
  - `ln -s 원본파일명 심벌릭링크명`


![image](https://user-images.githubusercontent.com/77392444/113234342-0d633d00-92dc-11eb-9d51-371a27bf213d.png)
![image](https://user-images.githubusercontent.com/77392444/113234434-371c6400-92dc-11eb-889e-4b7321ba3fab.png)

- 원본파일을 지우면?
![image](https://user-images.githubusercontent.com/77392444/113234565-7c409600-92dc-11eb-9fc7-2cd5a9789851.png)
![image](https://user-images.githubusercontent.com/77392444/113234596-92e6ed00-92dc-11eb-99ac-faeb0137d4c5.png)

- 이때, 심볼릭 링크를 살리려면? 

- 심볼릭 링크가 가리키던 원본 파일과 같은 이름의 파일을 만들면 다시 가리키는 대상이 생긴다. 하지만 기존 원본과는 다른 것을 가르키게 된다. 
- ![image](https://user-images.githubusercontent.com/77392444/113234707-bf9b0480-92dc-11eb-8fde-3e08bef7de07.png)

- 심벌링링크는 원본 이름만 같다면, 다른 파일이어도 동작하기 때문이다. 

- 하드링크를 사용하면 원본이 훼손되어도 백업파일이 있다는 남아있다는 장점이 있지만, 큰 용량의 원본파일을 삭제해도 남아있기 때문에 저장소 낭비라는 단점을 갖기도 한다. 

- 하드링크는 inode를 그대로 가르키고 있기 때문에, 원본이 삭제되거나 이동되어도 그대로 사용 가능하다. 


- 하드링크를 여러개 만들면? Links 수가 많아진다.
  - 하드링크가 2개일 때
![image](https://user-images.githubusercontent.com/77392444/113236287-8d3ed680-92df-11eb-9610-02e9a2b88230.png)

  - 하드링크가 3개일 때
![image](https://user-images.githubusercontent.com/77392444/113236384-b495a380-92df-11eb-8361-c0131bcd6708.png)


- 소프트링크를 여러개 만들면?
  - 소프트링크가 2개일 때
![image](https://user-images.githubusercontent.com/77392444/113236580-16560d80-92e0-11eb-838f-a105ff61e4e5.png)

  - 소프트링크가 3개일 때


## 프로세스, 서비스(데몬)
