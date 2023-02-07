# R-Learning
First Start Date #2023.02.05


adsp license learning~


### __R의 데이터 유형__


#### -숫자(Number) 
- integer(정수),double(실수)
  - 수치형(numeric)
    - 숫자 3.14
    - 숫자 백터 c(2,3,4,3)
    - 요인 factor(c("A","B","C"))


#### -논리값(Logical)
- TRUE(T),FALSE(F)


#### -문자(Character)
- "a","abc"
  - 문자형(character)
    - 문자열 "TOM"
    - 문자열 백터 c("Tom","kim","Jun")


#### -리스트(list)
- list("Tom","kim","Jun")
- 데이터 프레임 data.frame(x=1:3,y=c("Tom","Jun","Kim"))



#### -함수(function)
- print


<br>

### __R의 기초__

 
#### 출력하기 
- print(): 하나의 객체만 출력

    ex) print("Hello R!")  <br/> output: Hello R! <br/>
    >



- cat(): 개행하지 않고 묶어서 출력/개행("\n") 

    ex) cat("Hello R!","\n") <br/> output: Hello R! <br/>
    > <br>
<br>


#### 변수 할당
- <- (지역변수), <<- (전역변수), =, -> <br/>
<br>


#### 변수 목록보기
- ls(): 현재 변수의 목록을 출력
- ls.str(): 변수 목록의 세분화(문자열)


**&#35; typeof: type확인**<br>
<br/>



#### 벡터 변수 생성
- c() combine함수수: 백터의 원소 생성<br/>
    ex)a=c(1,2,3,4,5)<br/>
    output: [1] 1 2 3 4 5 <br>
<br>

#### 수열&반복
  - 수열: (:), seq() <br/>
  ``` R
    #lengh.out은 문자 구간중 몇개를 가질 것인지
    seq1<-(9:-2)
    > [1]  9  8  7  6  5  4  3  2  1  0 -1 -2
    seq2<-seq(from=0,to=20,by=2)
    > [1]  0  2  4  6  8 10 12 14 16 18 20
    seq3<-seq(from=0,to=20,length.out=5)
    > [1]  0  5 10 15 20
  ```

- 반복: rep()<br/>
  ``` R
  rep(1,time=5)
  > [1] 1 1 1 1 1
  rep(1:4,each=2)
  > [1] 1 1 2 2 3 3 4 4
  ```
<br>


#### 문자 붙이기 
- paste(): sep, collapse <br/>
  ``` R
  # paste는백터의 원소를 하나로 합쳐준다. 문자열 타밉
  # sep은 원소를 연결할떄 사이에 넣을 문자
  # collap는 원소들을 합칠때 원소 사이에 무엇으로 분리 할 것인지
  a=c(1,2,3,4,5)
  paste(a,"hi")
  > [1] "1 hi" "2 hi" "3 hi" "4 hi" "5 hi"
  paste(a,"hi",sep="**")
  > [1] "1**hi" "2**hi" "3**hi" "4**hi" "5**hi"
  b=c(1,2,3,4,5)
  paste0(b,"hi",collapse = ",")
  > [1] "1hi,2hi,3hi,4hi,5hi"
  ```

#### 문자열 추출
* substr("Bigdata",1,4)
  ``` R
  #substr은 문자열의 특정부분을 추출가능
  substr("Bigdata",1,4)
  ```
<br>

#### 함수 정의 
- function(매개변수1, 매개변수2)

  ``` R
  func1=function(x1,x2){
    y<-x1+x2
    return(y)
  }
  func1(2,3)
  
  func2<-function(x1,x2=3)
  {
    y<-(x1**x2)
    return(y)
  }
  func2(2)
  ```
  <br>
  
  
- 자주쓰는 내장함수
  ```
  mean(z) #평균
  sum(z) #합계
  median(z) #중앙값
  log(z) #로그함수
  var(z) #분산
  cov(z,k) #공분산 두 변수의 길이가 같아야 한다.
  cor(z,k) #상관계수
  length(z) #변수 길이
  ```
  <br>
  
  
  #### __연산자 우선순위__
  [], $, ^, -+(음/양), :, %any%, */, +-, ==, !, &, |, ~, ->, =, <-, ?
  
  - 	&#36;: 데이터 목록 중 추출 
      datalist	&#36;age(datalist에서 age항목 추출)<br>
  - %%연산자(%%,%/%,%*%,%in%)
    - (1)나머지 연산자 %%
    ``` R
    x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    y <- c(5)
    x %% y
    > [1] 1 2 3 4 0 1 2 3 4 0
    ```
    - (2)정수 나누기 연산자 %/%
    ``` R
    x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    y <- c(5)
    x %/% y
    > [1] 0 0 0 0 1 1 1 1 1 2
    ```
    - (3)행렬 곱하기 연산자 %*%
    ``` R
    x %*% y
    c(1, 2, 3) %*% c(4, 5, 6)
    > [1]32
    ```
  - (4)벡터 내 특정 값 포함 여부 확인 연산자 %in%
    ``` R
    x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    y <- c(5)
    x %in% y
    > [1] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE
    # x 내에 y 값이 포함된 개수의 합
    sum( x %in% y)
    > [1] 1
    ```
<br>
- "|" & "&" 연산자
  ``` R
  # |은 백터의 원소를 비교 ||은 백터의 첫번째 결과만 
  a=c(0,0,2,3)
  b=c(0,1,1,4)
  a|b
  > [1] FALSE  TRUE  TRUE  TRUE (0만 FALSE !은 0만 TRUE)
  
  !a
  > [1] TRUE  TRUE FALSE FALSE
  
  a||b
  > [1] FALSE (0이기 때문에) 
  
  a=c(0,0,2,3)
  b=c(0,1,1,4)
  a&b
  > [1] FALSE FALSE  TRUE  TRUE (0이 아닌 모든 숫자는 T)
  
  a&&b
  TRUE & TRUE
  >[1] TRUE
  
  TRUE & FALSE
  >[1] FALSE
  
  FALSE & TRUE
  >[1] FALSE
  
  FALSE & FALSE
  >[1] FALSE
  ```
  
  ### 파일 입출력
  
  
  R에서 다룰 수 있는 파일 타입
  - Tap-delimited text (tap으로 구분된 텍스트)
  - Comma-separated text (,로 구분된 텍스트)
  - Excel file 
  - JSON file (javaScript Object Notation)
  - HTML/XML file (마크업 언어)
  - Database 
  - statistical SW's file 
  <br>
  
  
  
  출력할 자리수 정의
  ```R
  # digits는 소수점 자리 표시
  print(pi,digits = 4)
  cat(format(pi,digits=4),'\n')
  > [1] 3.142
  
  #options는 나왔던 수들의 몇번쨰 자리에서 반올림(여러 자룔를 한번에 할떄 좋을 듯)
  i<-c(3.23423,23432.342)
  options(digits = 2)
  i
  > [1] 3.2 23432.3
  ```
  <br>
  
  
  #### 파일 출력
  ```R
  sink("파일 이름")
  ~~~~~
  sink()#파일 저장
  
  v1=c(1,3,2,4)
  v2=c(3,4,3,5)
  v3=v1+v2
  v4=v1*v2
  cat("vector v1=(",v1,")","\n",file="파일이름")
  cat("vector v1=(",v2,")","\n",file="파일이름",append=T) # append는 내용을 추가가
  ```
  <br>
  
  
  #### 파일 읽기
  
  - 고정자리수 파일 읽기
    ```R
    read.fwf("file_path"width=c(간격),col.names(변수명 설정))
    ```
  <br>
  - 테이블 데이터 일기
    ```R
      read.fwf("file_path"width=c(간격),col.names(변수명 설정))
    ```
  주의사항<br>
  1. 주소,이름,성 등의 텍스트를 요인으로 인식 <br>
    - read.table("파일이름",sep="구분자",stringASFactor=F)
    <br>
  2. 결측치를 NA가 아닌 다른 문자열로 표현할때 <br>
    - read.table("파일이름",sep="구분자",na.strings=".") <br>
  3. 파일의 첫행을 변수명으로 인식하고자 할떄 <br>
    - read.table("파일이름",sep="구분자",header=T) <br>
  <br>
  
  - csv 읽기
    ``` R
    #header == 첫행에 변수명이 있는가
    read.csv("파일이름",header=T)
    
    ```
    주의사항<br>
    1. 주소,이름,성등의 텍스트를 요인으로 인식함
      - read.csv("파일이름",header=T,as.is=T)
  <br>  
  
  
  
  - csv 출력
    ```R
    write.csv(행렬 또는 데이터 프레임,"파일이름",now.names=F)
    ```
    주의사항<br>
    1. 1행이 변수명으로 자동 인식하지만 변수명이 아닐 경우
      - write.csv(dfm,"파일이름",col.names=F)
    2. 1열에 레코드 번호를 자동 생성하지만 번호를 생성하지 않은 경우
      - write.csv(dfm,"파일이름",row.names=F)
  
  <br>
  
  
  - 웹에서 읽어오기
    ```R
    read.csv("http://~~~~~~~~~.csv")
    read.table("http://~~~~~~~.txt")
    ```
  <br>
  
  
  
  - html을 읽어오기
    ```R
    library(XML)
    "url<-"주소.html"
    t<-readHTMLTable(url)
    ```
  
  <br>
  
  
  
  - 복작한 구조의 파일 읽기
    ```R
    lines<-readLines("a.txt",n=num)
    token<-scan("a.txt",what=numeric(0))
    token<-scan("a.txt",what=list(v1=character(0),v2=njumeric(0)))
    token<-scan("a.txt",what=list(v1=character(0),v2=numeric(0),n=num,nlines=num,skip=num,na.strings=list))
    
    ```
  
