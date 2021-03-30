
## 디렉토리 명령어
- `ls`, `dir` : 디렉토리 목록

- `pwd` : 현재 디렉토리

- `cd` : 하위 디렉토리로 들어가기

- `cd ..` : 상위 디렉토리로 돌아가기

- `rm` : 파일 지우기

- `vi 문서이름` : 문서 만들기

## vi 명령어

- `Insert` : 입력모드

- `Esc` : 명령모드

- `h`, `j`, `k`, `l` : 오른쪽, 아래, 위, 왼쪽

- `:wq` : 저장 후 종료

- `:q!` : 저장 안하고 종료

- `dd` : 한줄 지우기

- `x` : 한글자 지우기

- `?` : 찾기, `n` : 다음 찾기

- gedit이라는 GUI환경에서 편리하게 vi를 사용할 수 있는 툴도 있다.

- 하나의 파일을 여러명이 접근하면 `.swap`파일이 생긴다. 

![image](https://user-images.githubusercontent.com/77392444/112935270-673df880-915e-11eb-832e-7002317a2317.png)
![image](https://user-images.githubusercontent.com/77392444/112935282-6e650680-915e-11eb-98c8-3b41d2ddf1c8.png)
![image](https://user-images.githubusercontent.com/77392444/112935304-74f37e00-915e-11eb-94ab-a0da9782f3e1.png)


## 시작과 종료
- 리눅스는 여러명이 동시접속하기 때문에 반드시 로그아웃과 파워오프 기능을 구분해야 한다.

- 파워오프는 컴퓨터 자체를 꺼버리기 때문에 여러명이 동시 작업 시, 유의해야 한다.

- `man poweroff` : 이 명령어를 통해 poweroff와 관련된 메뉴얼을 볼 수 있다.

- `shutdown -k +2` : 접속한 유저들에게 가짜로 2분 후 종료 예고 메세지를 날림 (`Ctrl-Alt-F3`로 전환하면 1분마다 종료 메세지가 날라온다)

- `shutdown -P +10` : 10분 뒤 종료 (`Ctrl-Alt-F3`로 전환하면 1분마다 종료 메세지가 날라온다)

- `shutdown -c` : 시스템 종료 취소하기 (`Ctrl-Alt-F3`로 전환하면 종료가 취소되었다는 메세지가 날라온다)

## root
- root 계정 비밀번호 설정하기 <br>
  ![image](https://user-images.githubusercontent.com/77392444/112924527-4324ec00-914b-11eb-9285-2a8a5dcc83fe.png)

- `ctrl`- `Alt` - `F3` : 새로운 터미널 열기, 또 새로운 터미널을 열려면 F4, F5...로 입력하면 된다.

- `ctrl`- `Alt` - `F2` : 기존 터미널로 돌아가기

- `exit`, `logout` : root계정 로그아웃


## 자동완성
- `tab`키를 활용하면 자동완성 기능을 활용할 수 있다.

- 화살표 아래, 위 키를 누르면 이전에 작성했던 문장을 볼 수 있다.

- 또는 `history` 키워드를 치면 작성했던 목록을 쭉 볼 수 있다. 

- 컴퓨터의 시작점을 root라고 하는데 루트를 나타낼때는 `/`라고 쓴다.
  - `cd /lib/a` : lib앞에 `/`라는 root표시가 있기 때문에 현재 pwd에 상관없이 root폴더부터 찾기 시작한다.
  - `cd lib/a` : lib앞에 `/`라는 root표시가 없기 때문에 현재 pwd 위치부터 `lib` 폴더 내의 `a`폴더를 찾기 시작한다.

