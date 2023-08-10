
void main(){
  int summ=0;
  List<int> subjects_marks=[85,92,78,65,88,72];
  for(int marks in subjects_marks){
    summ+=marks;
  }
  double avgGrade=summ/subjects_marks.length;
  print("Student's average grade: $avgGrade");
  var grade=avgGrade.round();
  print("Rounded average: $grade");
  if(grade>=70){
    print("Passed");
  }
  else{
    print("Failed");
  }
}