let i = 0; 
let j = 7;


const images = document.querySelectorAll(".slider__img-container a");

function next(){
    document.getElementById("content" + (i+1)).classList.remove("slider__img-container__item-active");
    i = ( j + i + 1) % j;
    document.getElementById("content" + (i+1)).classList.add("slider__img-container__item-active");
    indicator( i+ 1 );
}

function prev(){
    document.getElementById("content" + (i+1)).classList.remove("slider__img-container__item-active");
    i = (j + i - 1) % j;
    document.getElementById("content" + (i+1)).classList.add("slider__img-container__item-active");
    indicator(i+1);
}
