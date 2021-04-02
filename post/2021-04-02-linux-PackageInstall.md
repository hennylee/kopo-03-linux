

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


## apt-cache
- Package 정보를 찾거나 보여주는 명령어이다.

- 설치해야할 패키지명을 모를때 유용하게 사용할 수 있다.
