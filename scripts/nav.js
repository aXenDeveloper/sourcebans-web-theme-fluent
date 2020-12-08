const button_mobile_open = document.querySelector('#button_mobile_open');
const button_mobile_close = document.querySelector('#button_mobile_close');
const mobile = document.querySelector('#layout_mobile');

button_mobile_open.addEventListener('click', () => {
    mobile.classList.remove('mobile_fadeOut');
    mobile.classList.add('mobile_fadeIn');

    mobile.classList.add('mobile_show');
});

mobile.addEventListener('click', () => {
    mobile.classList.remove('mobile_fadeIn');
    mobile.classList.add('mobile_fadeOut');

    mobile.classList.remove('mobile_show');
})

document.querySelector('.mobile_nav').addEventListener('click', el => el.stopPropagation());