const Router = require('express')
const router = new Router()

router.post('/', postController.create)

module.exports = router