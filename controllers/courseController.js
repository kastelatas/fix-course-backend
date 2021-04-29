const uuid = require('uuid')
const path = require('path')
const {Course} = require('../models/models')

class courseController {
    async create(req, res) {
        const {title, description} = req.body
        const {video} = req.files
        let fileName = uuid.v4() + '.mp4'
        video.mv(path.resolve(__dirname, '..', 'media/video', fileName))
        // const course = await Course.create({title, description, })
    }

    async getAll(req, res) {

    }

    async getOne(req, res) {

    }
}

module.exports = new courseController()