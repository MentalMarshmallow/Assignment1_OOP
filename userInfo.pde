/*Displays user info in top right corner
*/

void userInfo()
{
  //PVector temp=gauge1.needle.vertex1.get();
  String degrees=nf(temperature,2,1);;
  
  text("Name:",gridWidth*8.5,gridHeight);
  text(name,gridWidth*9,gridHeight);
  text("Location:",gridWidth*8.5,gridHeight*1.5);
  text(location,gridWidth*9.2,gridHeight*1.5);
  text("Temperature °C:",gridWidth*8.5,gridHeight*2);
  text(degrees,gridWidth*9.7,gridHeight*2);
  text("Oxygen Level %:",gridWidth*8.5,gridHeight*2.5);
  text(oxygen,gridWidth*9.675,gridHeight*2.5);
  
}