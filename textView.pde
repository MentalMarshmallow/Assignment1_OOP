//Displays text in text files
void textView(int index)
{
  String[] textNames={"Earth.txt","gauge.txt","monitor.txt"};
  String[] lines = loadStrings(textNames[index]);
  
  fill(0,255,255);
  for(int i=0;i<lines.length;i++)
  {
    text(lines[i], 250,200+gridHeight*i);
  }
}