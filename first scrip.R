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
seq1<-(9:-2)
seq2<-seq(from=0,to=20,by=2)
seq3<-seq(from=0,to=20,length.out=5)

# "ls()"는 현재 변수의 목록을 출력, "ls.str()"은 변수 목록의 세분화 문자열(str)
ls()
ls.str()
typeof(ls.str())

# "c"는 백터 생성 (숫자,문자,논리)==문자열로 생성 / (숫자,논리)==논리를 숫자로
c<-c(10,"hi",T)
typeof(c)
d<-c(10,T)

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

