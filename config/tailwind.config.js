const defaultTheme = require('tailwindcss/defaultTheme')

function withOpacity(variableName) {
  return ({ opacityValue }) => {
    if (opacityValue !== undefined) {
      return `rgba(var(${variableName}), ${opacityValue})`
    }
    return `rgb(var(${variableName}))`
  }
}

module.exports = {
  darkMode: 'class',
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Lora', ...defaultTheme.fontFamily.sans],
        'display': ['Poppins'],
      },
      colors: {
        based: withOpacity('--color-text-based'),
        'based-hover': withOpacity('--color-text-based-hover'),
        muted: withOpacity('--color-text-muted'),
        primary: withOpacity('--color-primary'),
        'primary-hover': withOpacity('--color-primary-hover'),
        'primary-press': withOpacity('--color-primary-press'),
        secondary: withOpacity('--color-secondary'),
        'secondary-hover': withOpacity('--color-secondary-hover'),
        'secondary-press': withOpacity('--color-secondary-press'),
        'bg-base': withOpacity('--color-bg'),
        'nav': withOpacity('--color-nav'),
        'surface': withOpacity('--color-bg-surface'),
        'surface-accent': withOpacity('--color-bg-surface-accent'),
      },
      textColor: {
        based: withOpacity('--color-text-based'),
        muted: withOpacity('--color-text-muted'),
        inverted: withOpacity('--color-text-inverted'),
        // primary: withOpacity('--color-text-primary'),
      },
      backgroundImage: {
        'transparent-overlay': "background: linear-gradient(to top, rgba(0, 0, 0, 0.85), transparent);",
      },
      backgroundColor: {
        base: withOpacity('--color-bg'),
        primary: withOpacity('--color-primary'),
      },
      borderColor: {
        base: withOpacity('--color-bg'),
      },
      gradientColorStops: {
        base: {
          hue: withOpacity('--color-bg'),
          surface: withOpacity('--color-bg-surface'),
        },
      },
      animation: {
        blob: "blob 7s infinite",
      },
      keyframes: {
        blob: {
          '0%': {
            transform: 'translate(0px, 0px) scale(1)",'
          },
          '33%': {
            transform: 'translate(30px, -50px) scale(1.1)',
          },
          '66%': {
            transform: 'translate(-20px, 20px) scale(0.9)',
          },
          '100%': {
            transform: 'translate(0px, 0px) scale(1)',
          }
        }
      }
    },
  },
  plugins: [
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
