a<-seq(1:10)
print(a)
#print는 다음 행으로 개행한다
#cat은 개행 하지 않는다.
cat("안녕하세요","!")
print("안녕하세요")
cat(1,2,3,4,5,"\n")
cat("Hello R!","\n")

#"<-"는 지역 변수 "<<-"는 전역 변수(global)
a<-seq(1:10)
b<-seq(1:20)
#문자 구간과 간격/ lengh.out은 문자 구간중 몇개를 가질 것인지
seq1<-(9:-2)
seq2<-seq(from=0,to=20,by=2)
seq3<-seq(from=0,to=20,length.out=5)

#반복 대상과 횟수
rep(1,time=5)
rep(1:4,each=2)
# paste는백터의 원소를 하나로 합쳐준다. 문자열 타밉
# sep은 원소를 연결할떄 사이에 넣을 문자
# collap는 원소들을 합칠때 원소 사이에 무엇으로 분리할지지
a=c(1,2,3,4,5)
paste(a,"hi")
paste(a,"hi",sep="**")
b=c(1,2,3,4,5)
paste0(b,"hi",collapse = ",")
b


#substr은 문자열의 특정부분을 추출가능
substr("Bigdata",1,4)


# "ls()"는 현재 변수의 목록을 출력, "ls.str()"은 변수 목록의 세분화 문자열(str)
ls()
ls.str()
typeof(ls.str())

# "c"는 백터 생성 (숫자,문자,논리)==문자열로 생성 / (숫자,논리)==논리를 숫자로
c<-c(10,"hi",T)
typeof(c)
d<-c(10,T)

# 백터의 연산
# 연산자 우선순위 [],$,^,-+(-3),:,%any%,* /,+-,==,!,&,|,~,->,=,<-,?
x<-c(1:10)
x[1]

# "$"는 if 데이터 리스트 항목중 추출 datalist$age

# %%연산자(%%,%/%,%*%,%in%)
#나머지 연산자
x<-c(1:10)
y<-c(5)
x%%y
x%/%y 
#정수 나누기 연산자 정수 몫
#0만 FALSE !은 0만 TRUE
a=c(0,0,2,3)
b=c(0,1,1,4)
a&&b
a|b 
!a
c=a||b
c
# &은 백터끼리 비교 &&은 논리형 끼리 비교

#|은 백터의 원소를 비교 ||은 백터의 첫번째 결과만 

# 함수
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

# 내장함수
z<-c(1:10)
k<-c(5:14)
mean(z)
sum(z)
median(z) #중앙값
log(z)
var(z) #분산
cov(z,k) #공분산 두 변수의 길이가 같아야 한다.
cor(z,k) #상관계수
length(z)

