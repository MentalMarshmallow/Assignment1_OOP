/*Function to check if the cursor is in the zone area for a detail
*/

void checkZone()
{
  if(pageNum==1)//Check if its in the main page
  {
    for(int i=0;i<details.size();i++)//Go through the details arraylist
    {
      Details detail = details.get(i);//retrieve data from the arraylist
      
      //check the x coordinates of the mouse
      if(cursorX>detail.pos.x && cursorX<detail.Width + detail.pos.x)
      {
        //check the y coordinates of the mouse
        if(cursorY>detail.pos.y && cursorY<detail.Height+detail.pos.y)
        {
          //if the display is the same number
          if(display==i)
          {
            display=-1;//reset to 0
          }
          //else set display to the detail to be rendered
          else
          {
            display=i;
          }
        }
      }
    }
  }
}