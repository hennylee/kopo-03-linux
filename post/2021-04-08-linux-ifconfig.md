## ip 확인하는 명령어

- 명령어 : `ifconfig`

- `ifconfig` 명령어를 사용하기 위해서는 설치가 필요하다.

- 설치 : `sudo apt install net-tools`


## ip 확인해보기

- ServerC 가상머신에서 `ifconfig`

![image](https://user-images.githubusercontent.com/77392444/113951161-fa0d2000-984d-11eb-800a-ba53aebfb63b.png)

- Standalone 컴퓨터에서 `ifconfig`

![image](https://user-images.githubusercontent.com/77392444/113951214-16a95800-984e-11eb-8090-40eb08cfa79f.png)


## 127.0.0.1

- 두 컴퓨터 모두 `127.0.0.1` 이라는 IP주소가 나오는데, 이는 자기 자신을 지칭하는 IP주소이다. 

- 내 컴퓨터에서 내 컴퓨터를 지칭할 때 모든 컴퓨터는 주소 `127.0.0.1`을 호출하면 되는 것이다. 

- 다른 컴퓨터에 접속하기 위해서는 `ens숫자` 뒤에 있는 IP주소를 사용해야 한다. 
