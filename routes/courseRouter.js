const Router = require('express')
const router = new Router()
const courseController = require('../controllers/courseController')
const authMiddleware = require('../middleware/authMiddleware')

router.get('/', courseController.getAll)
router.get('/:id', courseController.getOne)
router.post('/',authMiddleware, courseController.create)

module.exports = router