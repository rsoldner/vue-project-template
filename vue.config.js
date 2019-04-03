const publicPath = process.env.NODE_ENV === 'production' ?  '/x/eng/ctl/share/web/ut_triage/' : '/'

module.exports = {
  publicPath: publicPath,
  devServer: {
    disableHostCheck: true,
    overlay: {
      warnings: true,
      errors: true
    },
    watchOptions: {
      poll: true
    }
  }
}
