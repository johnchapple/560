const path = require('path')

module.exports = {
  devServer: {
    proxy: {
      '/': {
        target: 'http://localhost:4000',
      },
    },
  },
  css: {
    loaderOptions: {
      postcss: {
        plugins: [
          require('tailwindcss'),
        ],
      },
    },
  },
}
