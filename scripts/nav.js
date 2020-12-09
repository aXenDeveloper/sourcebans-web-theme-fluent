const button_mobile_open = document.querySelector('#button_mobile_open');
const button_mobile_close = document.querySelector('#button_mobile_close');
const mobile = document.querySelector('#layout_mobile');

button_mobile_open.addEventListener('click', () => {
    mobile.classList.add('show');
});

mobile.addEventListener('click', () => {
    mobile.classList.remove('show');
})

document.querySelector('.nav_mobile_tab').addEventListener('click', el => el.stopPropagation());