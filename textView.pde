//Displays text in text files
void textView()
{
  String[] lines = loadStrings("Earth.txt");
  
  fill(0,255,255);
  for(int i=0;i<lines.length;i++)
  {
    text(lines[i], 250,200+gridHeight*i);
  }
}