// var showing = [1, 0, 0];
// var questions = ['q0', 'q1', 'q2'];
// function next() {
//     var qElems = [];
    
//     for (var i = 0; i < questions.length; i++) {
//         qElems.push(document.getElementById(questions[i]));   
//     }
//     for (var i = 0; i < showing.length; i++) {
//         if (showing[i] == 1) {
//             qElems[i].style.display = 'none';
//             showing[i] = 0;
//             if (i == showing.length - 1) {
//                 qElems[0].style.display = 'block';
//                 showing[0] = 1;
//             } else {
//                 qElems[i + 1].style.display = 'block';
//                 showing[i + 1] = 1;
//             }
//             break;
//         }
//     }      
// }

export const next = () => {
    const nextButton = document.getElementById('next');
    let counter = 0;
    console.log(nextButton);
    const questions = document.querySelectorAll('.quiz-form__container');
    console.log(questions);
    const previousButton = document.getElementById('previous');
    const submitQuiz = document.getElementById('submit')

        nextButton.addEventListener('click', (event) => {
            console.log(counter);
            event.preventDefault();
            if (counter < questions.length) {
            questions[counter].style.display = 'none';
            questions[counter + 1].style.display = 'block';
            counter += 1;
            previousButton.style.display = 'block';
            }
            if (counter === 3) {
                nextButton.style.display = 'none'
                submitQuiz.style.display = 'block'
             }
            
         });

         

         previousButton.addEventListener('click', (event) => {
            event.preventDefault();
            console.log(counter);
            if (counter > 0 ) {
            questions[counter].style.display = 'none';
            questions[counter - 1].style.display = 'block';
            counter -= 1;
            nextButton.style.display = 'block';
            submitQuiz.style.display = 'none'
            }
         });



    
}

