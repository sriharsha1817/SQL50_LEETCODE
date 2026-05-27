select
    class
from
    Courses
Group By class
Having Count(student)>=5;
