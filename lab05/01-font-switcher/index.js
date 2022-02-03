let currnFont = 1.4;
const makeBigger = () => {
   alert('make bigger!');
   currnFont += 0.2;
   setFont();



};

const makeSmaller = () => {
   alert('make smaller!');
   currnFont -= 0.2;
   setFont();


};

const setFont = () => {
   document.querySelector('.content').style.fontSize = `${currnFont}em`;
   document.querySelector('h1').style.fontSize = `${currnFont + 0.5}em`;
   
}


document.querySelector('#a1').addEventListener('click', makeBigger);
document.querySelector('#a2').addEventListener('click', makeSmaller);

