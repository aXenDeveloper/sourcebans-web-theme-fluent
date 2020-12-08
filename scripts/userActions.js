const checkDark = window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches;

const selectElements = {
    color: document.querySelector('#colorTheme'),
    colorReset: document.querySelector('#jscolor_reset'),
    dark: document.querySelector('#user_action_change_dark')
}

const colorBackground = ".tee .layout_table table thead, .tee .layout_table table td.listtable_top";
const colorBorder = ".tee nav ul li.active, .tee .layout_input:focus";
const colorColor = ".tee .jscolor_li button.jscolor, .tee a:hover";

const setColorTheme = picker => {
    selectElements.color.innerHTML = `
        ${colorBackground} { background-color: ${picker}; }
        ${colorBorder} { border-color: ${picker}; }
        ${colorColor} { color: ${picker}; }
        .tee .layout_input:focus { box-shadow: ${picker}4d 0px 0px 0px 4px; }
    `;
    selectElements.colorReset.style.display = 'block';
    localStorage.setItem(localStorageName.color, picker);
};

const enableDark = () => {
    document.querySelector('html').dataset.theme = 'dark';
    localStorage.setItem(localStorageName.dark, 1);
};

const disableDark = () => {
    delete document.querySelector('html').dataset.theme;
    localStorage.setItem(localStorageName.dark, 0);
};

// Check if color is enable in localStorage
if (localStorage.getItem(localStorageName.color) != null) setColorTheme(localStorage.getItem(localStorageName.color));

if (checkDark && localStorage.getItem(localStorageName.manualDark) === null) {
    enableDark();
} else if (!checkDark && localStorage.getItem(localStorageName.manualDark) === null) {
    disableDark();
};

selectElements.colorReset.addEventListener('click', el => {
    selectElements.color.innerHTML = '';
    selectElements.colorReset.style.display = 'none';
    localStorage.removeItem(localStorageName.color);
});

selectElements.dark.addEventListener('click', el => {
    localStorage.setItem(localStorageName.manualDark, 1);
    localStorage.getItem(localStorageName.dark) != 1 ? enableDark() : disableDark();
})


jscolor.presets.default = {
    previewSize: 0,
    forceStyle: false,
    onInput: 'setColorTheme(this)'
};