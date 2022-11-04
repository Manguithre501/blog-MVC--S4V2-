const form = document.getElementById('form'),
btn = document.getElementById('submit');


btn.disabled = true;

form.title.addEventListener('keyup', () => {
   
    if(form.content.value === '' || form.title.value === '')
    {
        btn.disabled = true;
        btn.classList.add('disabled');   
    }
    else
    {
        btn.disabled = false;
        btn.classList.remove('disabled');
     }
    });
 
    form.content.addEventListener('keyup', () => {
         
         if(form.title.value === '' || form.content.value === '')
         {
             btn.disabled = true;
             btn.classList.add('disabled');
            
             }
             else
         {
             btn.disabled = false;
             btn.classList.remove('disabled');
             }
    });
