const Router = require('express')
const router = new Router()
const postController = require('../controllers/postController')
const checkRole = require('../middleware/checkRoleMiddleware')

router.get('/', postController.getAll)
router.get('/:id', postController.getOne)
router.post('/', postController.create)

module.exports = router