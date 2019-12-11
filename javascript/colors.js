
        var Links = {
            setColor:function(color){
            var alist = document.querySelectorAll('a');
            var i = 0;
            while(i < alist.length){
                 alist[i].style.color = color;
                 i = i + 1;
                }
            }
        }
        
        var Body = {
            setColor : function (color){
                document.querySelector('body').style.color = color;
            },
            SetBackgroundColor : function (color){
            document.querySelector('body').style.backgroundColor = color ;
            }
        }
        function nightDayHandler(self){
        var target = document.querySelector('body');
         if(self.value === 'dark' ){               
            Body.SetBackgroundColor('black') ;
            Body.setColor('white');
            self.value = 'shine' ;  

            Links.setColor('powderblue');

            } else {
            Body.SetBackgroundColor('white') ;
            Body.setColor('black');
            self.value = 'dark';

            Links.setColor('green');
            }
        }
  