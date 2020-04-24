function exam(form)
{
    i=0
    if(form.q1[2].checked)
        i+=1
    if(form.q2[0].checked)
        i+=1
    if(form.q3[1].checked)
        i+=1
    if(form.q4[2].checked)
        i+=1
    if(form.q5[1].checked)
        i+=1
    if(form.q6[1].checked)
        i+=1
    if(form.q7[2].checked)
        i+=1
    if(form.q8[2].checked)
        i+=1
    if(form.q9[3].checked)
        i+=1
    if(form.q10[0].checked)
        i+=1
    alert("Thank You For Taking This Online Exam! Your Score is: "+i)
}