

## dpkg 
- Debian Package 
- 확장자 `*.deb`인 패키지를 설치할 때 많이 사용되는 명령어이다.

- `dpkg -i 패키지명` : 설치하는 명령어

- `dpkg -r 패키지명` : 삭제하는 명령어

- `dpkg -l 패키지명` : 잘 설치되어 있는지 확인하기

- `dpkg --info nc 

## galculator 패키지 dbkg 설치 실습

- 단점 1 : 패키지를 직접 사용자가 다운로드 해야한다.
- 링크 : http://archive.ubuntu.com/ubuntu/pool/universe/g/galculator/galculator_2.1.4-1build1_amd64.deb

- 단점 2 : 의존성 문제, 패키지가 설치되려며 미리 설치되어야 하는 패키지를 일일히 다운로드 해줘야 한다.

![image](https://user-images.githubusercontent.com/77392444/113367253-832bdf00-9396-11eb-9551-57846d6efedc.png)


## ncftp 패키지 dbkg 설치 실습

- 설치하기

![image](https://user-images.githubusercontent.com/77392444/113367843-174a7600-9398-11eb-849a-25d42d89405c.png)

- 삭제하기

![image](https://user-images.githubusercontent.com/77392444/113367858-22050b00-9398-11eb-9c57-d8f5dda35cde.png)


## apt-get
- `*.deb`패키지를 설치하는 편리한 도구이다.

## apt-get원리

- 특정 웹페이지 (미러 사이트)에 접속해서 인터넷을 통해 우분투 패키지 저장소에서 필요한 패키지 목록을 받아와 설치한다. 

- 우분투 패키지 저장소는 전 세계적으로 수백개가 존재한다. 이러한 저장소를 미러사이트라고 한다. 

## apt-cache
- Package 정보를 찾거나 보여주는 명령어이다.

- 설치해야할 패키지명을 모를때 유용하게 사용할 수 있다.



## java apt-get 실습

- 자바 파일 작성하기

![image](https://user-images.githubusercontent.com/77392444/113372644-1fa8ae00-93a4-11eb-9cbb-d762928e9ea5.png)

- jdk설치하기

![image](https://user-images.githubusercontent.com/77392444/113372723-46ff7b00-93a4-11eb-9774-23d58c251e76.png)

- `whereis java`

- `which java`

- `java -version`

- Eclipse 설치하기


## git apt-get 실습
- git 설치하기

![image](https://user-images.githubusercontent.com/77392444/113374010-0e14d580-93a7-11eb-8980-4fb18d3770a1.png)

- git과 연동할 폴더 만들고 이동하기 : `mkdir git` - `cd git`

- git 연동 초기화하기 : `git init` - `ls -al` 해서 `.git`폴더가 만들어졌는지 확인하기 

- git repository clone하기 : `git clone https://github.com/hennylee/kopo-03-linux.git` 

