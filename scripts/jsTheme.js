const selectElements = {
    color: document.querySelector('#colorTheme'),
    colorReset: document.querySelector('#jscolor_reset')
}

const localStorageName = {
    color: 'aXen_color'
}

const colorBackground = ".tee header";
const colorBorder = ".tee .nav_tab ul li.active a";
const colorColor = ".tee .jscolor_li button.jscolor";

const setColorTheme = picker => {
    selectElements.color.innerHTML = `
        ${colorBackground} { background-color: ${picker}; }
        ${colorBorder} { border-color: ${picker}; }
        ${colorColor} { color: ${picker}; }
    `;
    selectElements.colorReset.style.display = 'block';
    localStorage.setItem(localStorageName.color, picker);
};

// Check if color is enable in localStorage
if (localStorage.getItem(localStorageName.color) != null) setColorTheme(localStorage.getItem(localStorageName.color));

selectElements.colorReset.addEventListener('click', el => {
    selectElements.color.innerHTML = '';
    selectElements.colorReset.style.display = 'none';
});


jscolor.presets.default = {
    previewSize: 0,
    forceStyle: false,
    onInput: 'setColorTheme(this)'
};