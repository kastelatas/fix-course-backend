const Router = require('express')
const router = new Router()
const lessonController = require('../controllers/lessonController')
const authMiddleware = require('../middleware/authMiddleware')

router.get('/', lessonController.getAll)
router.get('/:id', lessonController.getOne)
router.post('/',authMiddleware, lessonController.create)

module.exports = router