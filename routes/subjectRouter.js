const Router = require('express')
const router = new Router()
const subjectController = require('../controllers/subjectController')
const authMiddleware = require('../middleware/authMiddleware')

router.get('/', subjectController.getAll)
router.get('/:id', subjectController.getOne)
router.post('/',authMiddleware, subjectController.create)

module.exports = router