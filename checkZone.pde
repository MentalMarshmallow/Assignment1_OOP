void checkZone()
{
  if(pageNum==1)
  {
    for(int i=0;i<details.size();i++)
    {
      Details detail = details.get(i);
      
      //check the x coordinates of the mouse
      if(cursorX>detail.pos.x && cursorX<detail.Width + detail.pos.x)
      {
        //check the y coordinates of the mouse
        if(cursorY>detail.pos.y && cursorY<detail.Height+detail.pos.x)
        {
          if(display==i)//if the display is the same number
          {
            display=-1;//reset to 0
          }
          else
          {
            display=i;//set display to the detail to be rendered
          }
        }
      }
    }
  }
}