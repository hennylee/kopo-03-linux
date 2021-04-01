



- `locate`

  - `sudoapt-get install mlocate`라는 명령어로 mlocte라는 프로그램을 설치해야 함
  
  
- `find` : `locate`보다 더 많은 옵션을 추가해서 검색할 수 있음
  
  - 왜 exec 외부명령을 통해 파일을 찾아서 삭제하면 재귀적으로 호출할까?
  ![image](https://user-images.githubusercontent.com/77392444/113079820-be040a80-9210-11eb-927c-2a9a074c34aa.png)
  - https://cloudreports.net/linux-find-exec-rm-r-report-no-such-file-or-directory/

# 파일 필터

## 파이프(|)와 grep 명령어

- `명령 1 | 명령 2` : 명령1의 결과를 받아 명령2를 실행하라

- `grep pattern filename` : globally find regular-expression and print, 지정된 표현형식이 전체에 있는지 찾아서 프린트하는 명령어
  - `-w` : 전체 단어가 일치하면 출력
  - `-n` : 라인 넘버 출력
  - `-v` : 단어가 일치하지 않는 경우 출력
  - `-l` : 해당되는 파일명을 출력

- 2018년 3월에 발생한 에러 로그를 출력하시오

[null] [2018-03-17 00:11:22.429] 


## 리다이렉션

- `>`


- test2라는 파일을 출력하고 이 기록을 test에 저장한다. test라는 파일이 이미 존재하면 내용을 밀어버리고 결과값을 저장한다.  
![image](https://user-images.githubusercontent.com/77392444/113253506-4ca38500-9300-11eb-9a3e-242ef7e9df9e.png)


- `>>`

- list_file이라는 파일을 출력하고 이 기록을 test파일 맨 끝부터 추가하여 기록한다. 만약 test파일이 없다면 에러가 발생한다.
![image](https://user-images.githubusercontent.com/77392444/113253700-92604d80-9300-11eb-9bd9-497258e28fb3.png)



- `cat 파일명.확장자 | grep 찾을 문구 > 저장할 파일명`

- test라는 파일을 출력하고, 이 결과 중 tar라는 문자열이 있으면 그 줄만 출력하는데, 그 결과를 test2파일에 저장(덮어쓰기)한다.

![image](https://user-images.githubusercontent.com/77392444/113255351-b1f87580-9302-11eb-93a4-f6ba11885fea.png)


- test라는 파일을 출력하고, 이 결과 중 list라는 문자열이 있으면 그 줄만 출력하는데, 그 결과를 test2파일 맨끝부터 추가하여 기록한다. 
![image](https://user-images.githubusercontent.com/77392444/113255376-bae94700-9302-11eb-80c2-79580cc22373.png)


## 파일 비교

- `cmp`

- 
