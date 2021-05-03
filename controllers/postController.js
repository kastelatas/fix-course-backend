const {Post} = require('../models/models')
const ApiError = require('../error/ApiError')

class postController {
    async create(req, res, next) {
        const {title, content} = req.body
        if (!title && !content) {
            return next(ApiError.badRequest('Ошибка'))
        }
        const post = await Post.create({title, content})
        console.log(post)
        return res.json({post})
    }

    async getAll(req, res) {
        const posts = await Post.findAndCountAll()
        // res.json({data: posts})
        res.json({message:'ALL RIGHT'})
    }

    async getOne(req, res, next) {
        const {id} = req.params
        if (!id) {
            return next(ApiError.badRequest('Ошибка'))
        }
        const post = await Post.findOne({where: {id}})
        return res.json({post})
    }
}

module.exports = new postController()