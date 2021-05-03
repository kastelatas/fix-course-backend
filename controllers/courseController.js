const uuid = require('uuid')
const path = require('path')
const ApiError = require('../error/ApiError')
const {Course, Subject, Lesson, Homework, Lesson_video} = require('../models/models')

class courseController {
    async create(req, res) {
        const {title, description} = req.body
        const {banner} = req.files
        const user = req.user;
        let fileName = uuid.v4() + '.jpg'
        await banner.mv(path.resolve(__dirname, '..', 'media/image', fileName))
        const course = await Course.create({title, banner: fileName, description, userId: user.id});

        res.json({course})
    }

    async getAll(req, res) {
        const course = await Course.findAll({
            include: [{
                model: Subject,
                include: [{
                    model: Lesson,
                    include: [
                        {
                            model: Homework
                        },
                        {
                            model: Lesson_video
                        }
                    ]
                }]
            }]
        });

        res.json({course})

    }

    async getOne(req, res, next) {
        const {id} = req.params
        if (!id) {
            return next(ApiError.badRequest('Ошибка'))
        }
        const course = await Course.findOne({
            where: {
                id
            },
            include: [{
                model: Subject,
                include: [{
                    model: Lesson
                }]
            }]
        });
        res.json({course})
    }

    async update(req, res, next) {
        const {title, description} = req.body
        const {id} = req.params
        const {banner} = req.files
        let fileName = uuid.v4() + '.jpg'
        await banner.mv(path.resolve(__dirname, '..', 'media/image', fileName))
        if (!id) {
            return next(ApiError.badRequest('Ошибка'))
        }
       const course = await Course.update({title, description, banner: fileName}, {
            where:{id}
        })
        const findCourse = await Course.findOne({where:{id:course}})
        res.json({findCourse})
    }
}

module.exports = new courseController()