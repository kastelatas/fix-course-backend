const Router = require('express')
const router = new Router()
const courseController = require('../controllers/courseController')
const authMiddleware = require('../middleware/authMiddleware')
const checkRoleMiddleware = require('../middleware/checkRoleMiddleware')

router.get('/', courseController.getAll)
router.get('/:id', courseController.getOne)
router.post('/',authMiddleware,checkRoleMiddleware('ADMIN'), courseController.create)
router.patch('/:id',authMiddleware,checkRoleMiddleware('ADMIN'), courseController.update)

module.exports = router
