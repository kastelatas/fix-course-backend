const Router = require('express')
const router = new Router()
const userRouter = require('./userRouter')
const postRouter = require('./postRouter')
const courseRouter = require('./courseRouter')


router.use('/user', userRouter)
router.use('/post', postRouter)
router.use('/course', courseRouter)


module.exports = router