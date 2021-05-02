const Router = require('express')
const router = new Router()
const userRouter = require('./userRouter')
const postRouter = require('./postRouter')
const courseRouter = require('./courseRouter')
const subjectRouter = require('./subjectRouter')
const lessonRouter = require('./lessonRouter')


router.use('/user', userRouter)
router.use('/post', postRouter)
router.use('/course', courseRouter)
router.use('/subject', subjectRouter)
router.use('/lesson', lessonRouter)


module.exports = router