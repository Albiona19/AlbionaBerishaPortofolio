/*=============== CHANGE BACKGROUND HEADER ===============*/
function scrollHeader(){
    const header = document.getElementById('header')
    if(this.scrollY >= 50) header.classList.add('scroll-header'); else header.classList.remove('scroll-header')
}
window.addEventListener('scroll', scrollHeader)

/*=============== SERVICES MODAL ===============*/
const modalViews = document.querySelectorAll('.services__modal'),

    modalBtns = document.querySelectorAll('.services__button'),
    modalClose = document.querySelectorAll('.services__modal-close')


let modal = function(modalClick){
    modalViews[modalClick].classList.add('active-modal')
}

modalBtns.forEach((mb, i)=>{
    mb.addEventListener('click', () =>{
        modal(i)
    })
})

modalClose.forEach((mc)=>{
    mc.addEventListener('click', ()=>{
        modalViews.forEach((mv)=>{
            mv.classList.remove('active-modal')
        })
    })
})

// GITHUB REPOS//
// Create a request variable and assign a new XMLHttpRequest object to it.
var request = new XMLHttpRequest()

// Open a new connection, using the GET request on the URL endpoint
request.open('GET', 'https://api.github.com/users/Albiona19/repos', true)

request.onload = function () {
  // Begin accessing JSON data here
  var data = JSON.parse(this.response);

  var statusHTML = '';
  $.each(data, function(i, status) {
    statusHTML += '<tr>';
    // statusHTML += '<td>' + status.id + '</td>';
    // statusHTML += '<td>' + status.name + '</td>';
    statusHTML += '<td><a target="_blank" href="'+status.html_url+'">' + status.html_url + '</a></td>';
    statusHTML += '<td>' + status.language + '</td>';
    statusHTML += '</tr>';
  });
  $('tbody').html(statusHTML);

  }


// Send request
request.send();
/*=============== MIXITUP FILTER PORTFOLIO ===============*/


/* Link active work */ 


/*=============== SWIPER TESTIMONIAL ===============*/
let swiperTestimonial = new Swiper(".testimonials__container",{
    spaceBetween: 24,
    loop: true,
    grabCursor : true,
    pagination : {
        el:".swiper-pagination",
        clickable : true,
    },

    breakpoints:{
        576: {
            slidesPerView: 2,
        },
        768: {
            slidesPerView: 2,
            spaceBetween: 48,
        }

    }
})



/*=============== LIGHT DARK THEME ===============*/ 
const themeButton = document.getElementById('theme-button')
const lightTheme = 'light-theme'
const iconTheme = 'fa-sun'

const selectedTheme = localStorage.getItem('selected-theme')
const selectedIcon = localStorage.getItem('selected-icon')

const getCurrentTheme = () => document.body.classList.contains(lightTheme) ? 'dark' : 'light'
const getCurrentIcon = () => document.body.classList.contains(iconTheme) ? 'fa-moon' : 'fa-sun'

if(selectedTheme){
    document.body.classList[selectedTheme === 'light' ? 'add' : 'remove'](lightTheme)
    themeButton.classList[selectedIcon === 'fa-moon' ? 'add' : 'remove'](iconTheme)

}



themeButton.addEventListener('click', ()=> {
    document.body.classList.toggle(lightTheme)
    themeButton.classList.toggle(iconTheme)

    localStorage.setItem('selected-theme', getCurrentTheme())
    localStorage.setItem('selected-icon', getCurrentIcon())

})
/*=============== SCROLL REVEAL ANIMATION ===============*/

