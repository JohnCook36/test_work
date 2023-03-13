const Router = require('express')
const router = new Router
const useController = require('../controller/crypto.controller')

router.get('/parse', useController.parseInfo)
router.get('/show', useController.showInfo)

module.exports = router