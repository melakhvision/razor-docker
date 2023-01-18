module.exports = {
  purge: {
    enabled: true,
    content: ["./Pages/**/*.cshtml", "./Views/**/*.chstml"],
  },
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      colors: {
        dark: "#111827",
        dark300: "#374151",
        primary: "#FFFFFF",
        secondary: "#1C64F2",
        hdark: "#26282b",
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
};
