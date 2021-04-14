
## git apt-get 실습
- git 설치하기

![image](https://user-images.githubusercontent.com/77392444/113374010-0e14d580-93a7-11eb-8980-4fb18d3770a1.png)

- git과 연동할 폴더 만들고 이동하기 : `mkdir git` - `cd git`

- git 연동 초기화하기 : `git init` - `ls -al` 해서 `.git`폴더가 만들어졌는지 확인하기 

- git repository clone하기 : `git clone https://github.com/hennylee/kopo-03-linux.git` 

- git 원격 repository 변경사항 pull 받기 : `git pull`
  - pull 받기 위해서는 `.git`폴더가 있는 디렉토리가 아니라, clone받은 repository의 상위 폴더에서 명령어를 실행해야 한다. 

![image](https://user-images.githubusercontent.com/77392444/114687653-f0545280-9d4e-11eb-9b69-ced99eedd265.png)

- git 로컬 repository 변경사항 add, commit 하기 : `git add --all` - `git commit -m "First Commit"`
  - 만약 첫 commit이라면 git user정보를 등록해야 한다.

![image](https://user-images.githubusercontent.com/77392444/114687937-30b3d080-9d4f-11eb-820e-eb5fe03e8716.png)


- stash에 add한 내역 commit하기 : `git commit -m "커밋 메세지 입력하기`

![image](https://user-images.githubusercontent.com/77392444/114688341-9011e080-9d4f-11eb-9a11-a26592cbcc1d.png)

- commit한 내역 원격 repository 브랜치에 push 하기 : `git push -u origin 브랜치명`

![image](https://user-images.githubusercontent.com/77392444/114688491-b33c9000-9d4f-11eb-9d03-2723b9fd3051.png)
