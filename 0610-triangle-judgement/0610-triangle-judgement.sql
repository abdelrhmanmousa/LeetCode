select x , y , z,
case 
    when x + y > z and x + z > y and y + z > x then 'Yes'
    else 'No'
    End AS triangle
from Triangle